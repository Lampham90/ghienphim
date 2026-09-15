export const runtime = 'edge';
export const dynamic = 'force-dynamic';

import { NextResponse } from 'next/server';

const TMDB_API_KEY = 'b81e7ce8a6c68dbea801f221b220302c';

async function fetchCredits(tmdbId: string, type: string) {
  try {
    const res = await fetch(
      `https://api.tmdb.org/3/${type}/${tmdbId}/credits?api_key=${TMDB_API_KEY}&language=vi-VN`,
      { cf: { cacheTtl: 86400, cacheEverything: true } } as any
    );
    if (!res.ok) return null;
    return await res.json();
  } catch (e) {
    return null;
  }
}

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const tmdbId = searchParams.get('tmdb_id') || '';
  const rawType = (searchParams.get('type') || '').toLowerCase();
  const type = (rawType.includes('series') || rawType.includes('bo') || rawType.includes('tv')) ? 'tv' : 'movie';

  if (!tmdbId || tmdbId === '0') {
    return NextResponse.json({ cast: [] });
  }

  try {
    let data = await fetchCredits(tmdbId, type);
    if (!data?.cast?.length) {
      const fallbackType = type === 'movie' ? 'tv' : 'movie';
      data = await fetchCredits(tmdbId, fallbackType);
    }

    // NÂNG CẤP: Lấy tới 60 diễn viên để đảm bảo bao phủ hết dàn cast phụ
    const cast = (data?.cast || [])
      .filter((c: any) => c.profile_path)
      .slice(0, 60)
      .map((c: any) => ({
        id: c.id,
        name: c.name || '',
        original_name: c.original_name || '',
        avatar: `/api/actor-avatar?path=${encodeURIComponent(c.profile_path)}`,
        order: c.order ?? 999
      }));

    return NextResponse.json(
      { cast },
      { headers: { 'Cache-Control': 'public, s-maxage=86400, stale-while-revalidate=604800' } }
    );
  } catch (e) {
    return NextResponse.json({ cast: [] });
  }
}
