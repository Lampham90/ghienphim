// script/enrich-tmdb.mjs
import axios from 'axios';
import { createClient } from '@libsql/client';

const TURSO_URL = process.env.TURSO_DATABASE_URL || 'libsql://phim-db-lampham90.aws-ap-northeast-1.turso.io';
const TURSO_AUTH_TOKEN = process.env.TURSO_AUTH_TOKEN || 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODkzNzA3NzAsImlkIjoiMDFhMDllY2UtYmEwMS03MGZmLWJiZjgtMDE0YzBhZTc4ZWE0Iiwia2lkIjoiUDFmaGgzd3g5bmNsejNvOFQxVGlqMzJwVmdjWFY3YXFCbTczOW05WE9VayIsInJpZCI6Ijg3NDM1NDEwLWIzMzAtNGU5Ni1iNWYwLTRiODE0MjBhMDY2NiJ9.ebSs5uG_BlrDnCR_QI5uHyb6oDRUpthoEODOcWGON0qjgE-WzBKKWQO9rwkfbQiFWyCvzFDoa8jFKPiYsjmKDQ';
const TMDB_API_KEY = process.env.TMDB_API_KEY || 'b81e7ce8a6c68dbea801f221b220302c';

const CONCURRENCY = 10; // 10 luồng chạy song song

const turso = createClient({
  url: TURSO_URL,
  authToken: TURSO_AUTH_TOKEN,
});

const sleep = (ms) => new Promise((res) => setTimeout(res, ms));

const getCleanName = (name) =>
  (name || '')
    .split(/\s+[:\-(\[]?\s*(phần|season|ss|part|tập|chapter|movie|ova|special|p|s)\s+\d+/i)[0]
    .replace(/\s+[:\-(\[]?\s*\d+\s*(:.*)?$/, '')
    .replace(/\s+(X|IX|IV|V?I{1,3})$/i, '')
    .replace(/[:\-\(\[\]\)]+$/, '')
    .trim();

async function getTmdbImages(type, id) {
  if (!id || !type) return null;
  try {
    const url = `https://api.tmdb.org/3/${type}/${id}/images?api_key=${TMDB_API_KEY}&include_image_language=vi,en,null`;
    const res = await axios.get(url, { timeout: 4000 });
    const logos = res.data?.logos || [];
    const backdrops = res.data?.backdrops || [];
    const posters = res.data?.posters || [];

    const bestLogo =
      logos.find((l) => l.iso_639_1 === 'vi') ||
      logos.find((l) => l.iso_639_1 === 'en') ||
      logos.find((l) => l.iso_639_1 === null) ||
      logos[0];

    const bestBackdrop = backdrops[0];
    const bestPoster = posters[0];

    return {
      logo_url: bestLogo ? `https://image.tmdb.org/t/p/original${bestLogo.file_path}` : null,
      backdrop_url: bestBackdrop ? `https://image.tmdb.org/t/p/original${bestBackdrop.file_path}` : null,
      poster_url: bestPoster ? `https://image.tmdb.org/t/p/original${bestPoster.file_path}` : null,
      aspect_ratio: bestLogo?.aspect_ratio || null,
    };
  } catch (e) {
    return null;
  }
}

async function searchTmdbByName(name) {
  if (!name) return null;
  try {
    const cleaned = getCleanName(name);
    const url = `https://api.tmdb.org/3/search/multi?api_key=${TMDB_API_KEY}&query=${encodeURIComponent(cleaned)}&language=vi`;
    const res = await axios.get(url, { timeout: 4000 });
    const results = res.data?.results || [];
    const match = results.find((r) => r.media_type === 'movie' || r.media_type === 'tv');
    if (match) {
      return { id: match.id, type: match.media_type, vote_average: match.vote_average };
    }
  } catch (e) {}
  return null;
}

async function enrichMovie(movie) {
  try {
    let tmdbData = null;
    let imdbData = null;
    try {
      const detailRes = await axios.get(`https://phimapi.com/phim/${movie.slug}`, { timeout: 4000 });
      const m = detailRes.data?.movie;
      if (m) {
        tmdbData = m.tmdb;
        imdbData = m.imdb;
      }
    } catch (e) {}

    let tmdbId = tmdbData?.id;
    let tmdbType = tmdbData?.type || (movie.type === 'series' || movie.type === 'phimbo' ? 'tv' : 'movie');

    if (!tmdbId) {
      const searched = await searchTmdbByName(movie.name || movie.origin_name);
      if (searched) {
        tmdbId = searched.id;
        tmdbType = searched.type;
        if (!tmdbData) tmdbData = {};
        tmdbData.vote_average = searched.vote_average;
      }
    }

    let images = null;
    if (tmdbId) {
      images = await getTmdbImages(tmdbType, tmdbId);
    }

    const finalTmdbObj = {
      id: tmdbId || null,
      type: tmdbType || null,
      vote_average: tmdbData?.vote_average || null,
      vote_count: tmdbData?.vote_count || null,
      logo_url: images?.logo_url || null,
      backdrop_url: images?.backdrop_url || null,
      poster_url: images?.poster_url || null,
      aspect_ratio: images?.aspect_ratio || null,
      enriched: true,
    };

    const finalImdbObj = {
      id: imdbData?.id || null,
      vote_average: imdbData?.vote_average || null,
    };

    await turso.execute({
      sql: 'UPDATE movies SET tmdb_json = ?, imdb_json = ? WHERE slug = ?',
      args: [JSON.stringify(finalTmdbObj), JSON.stringify(finalImdbObj), movie.slug],
    });

    return true;
  } catch (e) {
    try {
      // Đánh dấu để không bị nghẽn
      await turso.execute({
        sql: 'UPDATE movies SET tmdb_json = ? WHERE slug = ?',
        args: [JSON.stringify({ enriched: false, error: true }), movie.slug],
      });
    } catch (err) {}
    return false;
  }
}

async function main() {
  console.log(`🚀 KHỞI ĐỘNG TIẾN TRÌNH LÀM GIÀU TMDB LOGO CHO TOÀN BỘ PHIM TRONG TURSO DB...`);
  console.log(`⚡ Chạy đa luồng song song: ${CONCURRENCY} workers.`);

  const totalPendingRes = await turso.execute('SELECT COUNT(*) as pending FROM movies WHERE tmdb_json IS NULL');
  let totalPending = totalPendingRes.rows[0].pending;
  console.log(`📊 Tổng số phim cần cập nhật: ${totalPending}`);

  let totalProcessed = 0;
  const startTime = Date.now();

  while (true) {
    // Lấy theo batch 100 phim mỗi lần, ưu tiên năm mới nhất giảm dần
    const batchRes = await turso.execute({
      sql: `SELECT slug, name, origin_name, type, year FROM movies WHERE tmdb_json IS NULL ORDER BY COALESCE(year, 0) DESC, last_updated DESC LIMIT 100`,
      args: [],
    });

    const movies = batchRes.rows || [];
    if (movies.length === 0) break;

    // Chạy song song từng chunk CONCURRENCY
    for (let i = 0; i < movies.length; i += CONCURRENCY) {
      const chunk = movies.slice(i, i + CONCURRENCY);
      await Promise.all(chunk.map((m) => enrichMovie(m)));
      totalProcessed += chunk.length;

      const elapsedSec = (Date.now() - startTime) / 1000;
      const speed = totalProcessed / elapsedSec; // movies / sec
      const remainingSec = speed > 0 ? (totalPending - totalProcessed) / speed : 0;
      const remainingMin = (remainingSec / 60).toFixed(1);

      if (totalProcessed % 50 === 0 || totalProcessed === totalPending) {
        console.log(
          `⏱ [${totalProcessed}/${totalPending}] (${((totalProcessed / totalPending) * 100).toFixed(1)}%) ` +
          `| Tốc độ: ${speed.toFixed(1)} phim/s | Còn lại: ~${remainingMin} phút`
        );
      }
      await sleep(100);
    }
  }

  const durationMin = ((Date.now() - startTime) / 60000).toFixed(1);
  console.log(`🎉 HOÀN TẤT TOÀN BỘ! Đã tải và lưu Logo TMDB cho ${totalProcessed} phim trong ${durationMin} phút!`);
}

main();
