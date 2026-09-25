export const runtime = 'edge';
export const dynamic = 'force-dynamic';

import { NextRequest, NextResponse } from 'next/server';
import { fetchKKPhimDetail, searchMovies } from '@/lib/kkphim';
import { fetchNguoncDetail } from '@/lib/nguonc';
import { filterSmartByBlock } from '@/app/phim/[slug]/hls-filter';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': 'GET, HEAD, OPTIONS',
  'Access-Control-Allow-Headers': '*',
  'Cache-Control': 'public, max-age=3600, stale-while-revalidate=7200'
};

const MANIFEST = {
  id: 'community.ghienphim.addon',
  version: '1.0.0',
  name: 'Ghiền Phim (Clean HLS)',
  description: 'Kho phim Vietsub, Thuyết minh từ ghienphim. Lọc sạch 100% quảng cáo.',
  logo: 'https://ghienphim.pages.dev/favicon11.ico',
  resources: ['catalog', 'meta', 'stream'],
  types: ['movie', 'series'],
  catalogs: [
    {
      type: 'movie',
      id: 'ghienphim_movies',
      name: 'Ghiền Phim - Phim Lẻ',
      extra: [{ name: 'skip', isRequired: false }]
    },
    {
      type: 'series',
      id: 'ghienphim_series',
      name: 'Ghiền Phim - Phim Bộ',
      extra: [{ name: 'skip', isRequired: false }]
    }
  ],
  idPrefixes: ['tt', 'kk:', 'gp:']
};

async function getCinemetaTitle(type: string, imdbId: string): Promise<{ name: string; year?: number } | null> {
  try {
    const res = await fetch(`https://v3-cinemeta.strem.io/meta/${type}/${imdbId}.json`, {
      next: { revalidate: 86400 }
    });
    if (!res.ok) return null;
    const json = await res.json();
    return json?.meta ? { name: json.meta.name, year: json.meta.year } : null;
  } catch {
    return null;
  }
}

export async function GET(req: NextRequest, { params }: { params: Promise<{ slug: string[] }> }) {
  const { slug } = await params;
  const path = slug ? slug.join('/') : '';
  const origin = new URL(req.url).origin;

  if (req.method === 'OPTIONS') {
    return new NextResponse(null, { headers: corsHeaders });
  }

  // --- 1. MANIFEST ---
  if (path === 'manifest.json' || path === 'manifest') {
    return NextResponse.json(MANIFEST, { headers: corsHeaders });
  }

  // --- 2. CLEAN M3U8 STREAM (LỌC SẠCH BẰNG BỘ LỌC CỦA WEB) ---
  if (path === 'clean' || path === 'clean.m3u8') {
    const targetUrl = req.nextUrl.searchParams.get('url');
    if (!targetUrl) {
      return new NextResponse('Missing url parameter', { status: 400, headers: corsHeaders });
    }

    try {
      const upstreamRes = await fetch(targetUrl, {
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36',
          'Referer': 'https://player.phimapi.com/'
        }
      });

      if (!upstreamRes.ok) {
        return new NextResponse('Failed to fetch upstream m3u8', { status: 502, headers: corsHeaders });
      }

      let content = await upstreamRes.text();
      let actualMediaUrl = targetUrl;

      // Nếu là Master Playlist -> bóc tách variant bitrate cao nhất (1080p/720p)
      if (content.includes('#EXT-X-STREAM-INF')) {
        const lines = content.split(/\r?\n/).map(l => l.trim()).filter(l => l.length > 0);
        let bestVariant = null;
        let maxBw = -1;

        for (let i = 0; i < lines.length; i++) {
          if (lines[i].startsWith('#EXT-X-STREAM-INF')) {
            const bwMatch = lines[i].match(/BANDWIDTH=(\d+)/i);
            const bw = bwMatch ? parseInt(bwMatch[1], 10) : 0;
            for (let j = i + 1; j < lines.length; j++) {
              if (!lines[j].startsWith('#')) {
                if (bw > maxBw || !bestVariant) {
                  maxBw = bw;
                  try {
                    bestVariant = new URL(lines[j], targetUrl).href;
                  } catch (_) {
                    bestVariant = lines[j];
                  }
                }
                break;
              }
            }
          }
        }

        if (bestVariant) {
          actualMediaUrl = bestVariant;
          const variantRes = await fetch(bestVariant, {
            headers: {
              'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36',
              'Referer': 'https://player.phimapi.com/'
            }
          });
          if (variantRes.ok) {
            content = await variantRes.text();
          }
        }
      }

      // 🌟 GIỮ NGUYÊN BỘ LỌC filterSmartByBlock CỦA WEB GHIENPHIM
      const cleanContent = filterSmartByBlock(actualMediaUrl, content);

      return new NextResponse(cleanContent, {
        headers: {
          ...corsHeaders,
          'Content-Type': 'application/vnd.apple.mpegurl',
          'Cache-Control': 'no-cache'
        }
      });
    } catch (e: any) {
      return new NextResponse('Error filtering stream: ' + e?.message, { status: 500, headers: corsHeaders });
    }
  }

  // --- 3. CATALOG ---
  if (path.startsWith('catalog/')) {
    const parts = path.replace(/\.json$/, '').split('/');
    const type = parts[1] || 'movie';
    const page = 1;

    try {
      const res = await fetch(`https://phimapi.com/danh-sach/phim-moi-cap-nhat?page=${page}`);
      const data = await res.json();
      const items = (data.items || []).filter((item: any) => {
        const isSeries = item.tmdb?.type === 'tv' || item.episode_total > 1;
        return type === 'series' ? isSeries : !isSeries;
      });

      const metas = items.map((item: any) => ({
        id: `kk:${item.slug}`,
        name: item.name,
        type: type,
        poster: item.poster_url?.startsWith('http') ? item.poster_url : `https://phimimg.com/${item.poster_url?.replace(/^\/+/, '')}`,
        background: item.thumb_url?.startsWith('http') ? item.thumb_url : `https://phimimg.com/${item.thumb_url?.replace(/^\/+/, '')}`,
        releaseInfo: item.year ? String(item.year) : '',
        description: `${item.origin_name || ''} · ${item.year || ''}`
      }));

      return NextResponse.json({ metas }, { headers: corsHeaders });
    } catch {
      return NextResponse.json({ metas: [] }, { headers: corsHeaders });
    }
  }

  // --- 4. META (Chi tiết danh sách tập) ---
  if (path.startsWith('meta/')) {
    const parts = path.replace(/\.json$/, '').split('/');
    const type = parts[1];
    let id = parts[2];
    let targetSlug = id.replace(/^(kk:|gp:)/, '');

    if (id.startsWith('tt')) {
      const cinemeta = await getCinemetaTitle(type, id);
      if (cinemeta?.name) {
        const searchRes = await searchMovies(cinemeta.name);
        if (searchRes.length > 0) targetSlug = searchRes[0].slug;
      }
    }

    const detail = await fetchKKPhimDetail(targetSlug);
    if (!detail) {
      return NextResponse.json({ meta: null }, { headers: corsHeaders });
    }

    const isSeries = type === 'series' || (detail.episode_total && parseInt(String(detail.episode_total), 10) > 1);
    const videos: any[] = [];

    if (isSeries && detail.servers && detail.servers.length > 0) {
      const eps = detail.servers[0]?.episodes || [];
      eps.forEach((ep: any, idx: number) => {
        const num = parseInt(ep.episode_num?.replace(/\D/g, '') || String(idx + 1), 10) || (idx + 1);
        videos.push({
          id: `${id}:1:${num}`,
          title: `Tập ${num}`,
          season: 1,
          episode: num,
          released: new Date().toISOString()
        });
      });
    }

    return NextResponse.json({
      meta: {
        id: id,
        type: isSeries ? 'series' : 'movie',
        name: detail.name,
        genres: (detail.category || []).map((c: any) => c.name),
        poster: detail.poster,
        background: detail.thumb,
        description: detail.content?.replace(/<[^>]*>?/gm, ''),
        releaseInfo: detail.year ? String(detail.year) : '',
        videos: videos.length > 0 ? videos : undefined
      }
    }, { headers: corsHeaders });
  }

  // --- 5. STREAM (Cung cấp link đã qua bộ lọc của Web) ---
  if (path.startsWith('stream/')) {
    const parts = path.replace(/\.json$/, '').split('/');
    const type = parts[1];
    const fullId = parts[2] || '';

    let targetSlug = '';
    let targetEpisode = 1;
    let movieName = '';
    let movieOriginName = '';

    // Bóc tách chính xác ID dạng tt... hoặc kk:slug:season:episode
    if (fullId.startsWith('tt')) {
      const idParts = fullId.split(':');
      const imdbId = idParts[0];
      if (idParts.length >= 3) {
        targetEpisode = parseInt(idParts[2], 10) || 1;
      }
      const cinemeta = await getCinemetaTitle(type, imdbId);
      if (cinemeta?.name) {
        movieName = cinemeta.name;
        const searchRes = await searchMovies(cinemeta.name);
        if (searchRes.length > 0) targetSlug = searchRes[0].slug;
      }
    } else {
      const idParts = fullId.split(':');
      if (idParts[0] === 'kk' || idParts[0] === 'gp') {
        targetSlug = idParts[1] || '';
        if (idParts.length >= 4) {
          targetEpisode = parseInt(idParts[3], 10) || 1;
        }
      } else {
        targetSlug = idParts[0];
        if (idParts.length >= 3) {
          targetEpisode = parseInt(idParts[2], 10) || 1;
        }
      }
    }

    if (!targetSlug) {
      return NextResponse.json({ streams: [] }, { headers: corsHeaders });
    }

    const streams: any[] = [];

    // NGUỒN KKPHIM (Đi qua bộ lọc hls-filter sạch quảng cáo)
    try {
      const detail = await fetchKKPhimDetail(targetSlug);
      if (detail && detail.servers && detail.servers.length > 0) {
        movieName = movieName || detail.name;
        movieOriginName = detail.origin_name || '';

        detail.servers.forEach((server: any) => {
          const sName = server.server_name || 'VIP';
          const epList = server.episodes || [];
          const ep = epList.find((e: any) => {
            const num = parseInt(e.episode_num?.replace(/\D/g, '') || '', 10);
            return num === targetEpisode;
          }) || epList[targetEpisode - 1] || epList[0];

          if (ep && ep.link) {
            // URL đi qua endpoint clean để lọc sạch quảng cáo
            const cleanUrl = `${origin}/api/stremio/clean?url=${encodeURIComponent(ep.link)}`;

            streams.push({
              name: `Ghiền Phim 🌟 [${sName.toUpperCase()}]`,
              title: `${movieName} - Tập ${targetEpisode}\n🌟 Server VIP (${sName}) - Đã Lọc Sạch QC`,
              url: cleanUrl,
              behaviorHints: {
                notWebReady: true,
                proxyHeaders: {
                  request: {
                    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36',
                    'Referer': 'https://player.phimapi.com/'
                  }
                }
              }
            });
          }
        });
      }
    } catch (e: any) {
      console.warn('[Stremio] Lỗi lấy KKPhim stream:', e?.message);
    }

    // NGUỒN NGUONC DỰ PHÒNG
    try {
      const nguoncDetail = await fetchNguoncDetail(targetSlug, movieOriginName || movieName, movieName);
      if (nguoncDetail && nguoncDetail.servers && nguoncDetail.servers.length > 0) {
        nguoncDetail.servers.forEach((s: any) => {
          const epList = s.episodes || [];
          const ep = epList.find((e: any) => {
            const num = parseInt(e.episode_num?.replace(/\D/g, '') || '', 10);
            return num === targetEpisode;
          }) || epList[targetEpisode - 1] || epList[0];

          if (ep && ep.link_m3u8 && ep.link_m3u8.includes('.m3u8')) {
            streams.push({
              name: `Ghiền Phim 🛡️ [${s.server_name}]`,
              title: `${movieName} - Tập ${targetEpisode}\n🛡️ Server Dự Phòng (${s.server_name})`,
              url: ep.link_m3u8,
              behaviorHints: {
                notWebReady: true
              }
            });
          }
        });
      }
    } catch {}

    return NextResponse.json({ streams }, { headers: corsHeaders });
  }

  return NextResponse.json({ error: 'Not Found' }, { status: 404, headers: corsHeaders });
}