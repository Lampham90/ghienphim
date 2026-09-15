// src/lib/kkphim.ts
// ĐỒNG BỘ TOÀN DIỆN (v7):
// 1. Đồng bộ Trang chủ & Catalog: Ưu tiên Năm giảm dần (2026, 2025...)
//    rồi mới đến phim mới cào (last_updated).
// 2. Parse đầy đủ tmdb_json và imdb_json từ D1/Turso để đồng bộ Logo & Rating.

import { createClient } from '@libsql/client/web';

const TURSO_URL = process.env.TURSO_DATABASE_URL || 'libsql://phim-db-lampham90.aws-ap-northeast-1.turso.io';
const TURSO_AUTH_TOKEN = process.env.TURSO_AUTH_TOKEN || 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODkzNzA3NzAsImlkIjoiMDFhMDllY2UtYmEwMS03MGZmLWJiZjgtMDE0YzBhZTc4ZWE0Iiwia2lkIjoiUDFmaGgzd3g5bmNsejNvOFQxVGlqMzJwVmdjWFY3YXFCbTczOW05WE9VayIsInJpZCI6Ijg3NDM1NDEwLWIzMzAtNGU5Ni1iNWYwLTRiODE0MjBhMDY2NiJ9.ebSs5uG_BlrDnCR_QI5uHyb6oDRUpthoEODOcWGON0qjgE-WzBKKWQO9rwkfbQiFWyCvzFDoa8jFKPiYsjmKDQ';

let tursoClientInstance: any = null;
export function getTursoClient() {
  if (!tursoClientInstance && TURSO_URL && TURSO_AUTH_TOKEN) {
    tursoClientInstance = createClient({
      url: TURSO_URL,
      authToken: TURSO_AUTH_TOKEN,
    });
  }
  return tursoClientInstance;
}

export interface KKPhimMovie {
  name: string;
  origin_name?: string;
  year: number;
  slug: string;
  thumb: string;
  poster: string;
  sub_type: string;
  current_episode: string;
  total_episodes: string;
  country: string;
  description: string;
  actor?: any[];
  category?: any[];
  tmdb?: any;
  imdb?: any;
}

export interface KKPhimDetail {
  name: string;
  origin_name?: string;
  slug: string;
  poster: string;
  thumb: string;
  description?: string;
  servers: any[];
  episodes: any[];
  year?: number;
  country?: string;
  lang?: string;
  episode_total?: string;
  actor?: any[];
  imdb_score?: string;
  quality?: string;
  content?: string;
  tmdb?: any;
  imdb?: any;
}

export const getImageUrl = (url?: string) => {
  if (!url) return "";
  if (url.startsWith("http")) return url;
  const cleanPath = url.startsWith('/') ? url.slice(1) : url;
  return `https://phimimg.com/${cleanPath}`;
};

export const getCleanName = (name: string) =>
  name
    .split(/\s+[:\-(\[]?\s*(phần|season|ss|part|tập|chapter|movie|ova|special|p|s)\s+\d+/i)[0]
    .replace(/\s+[:\-(\[]?\s*\d+\s*(:.*)?$/, "")
    .replace(/\s+(X|IX|IV|V?I{1,3})$/i, "")
    .replace(/[:\-\(\[\]\)]+$/, "")
    .trim();

function isTrailerMovie(item: any): boolean {
  const ep = (item.episode_current || item.current_episode || "").toLowerCase();
  const st = (item.status || "").toLowerCase();
  const q = (item.quality || "").toLowerCase();
  const tp = (item.type || "").toLowerCase();
  const name = (item.name || "").toLowerCase();
  const slug = (item.slug || "").toLowerCase();

  return (
    ep.includes("trailer") || ep.includes("teaser") || ep.includes("sắp chiếu") ||
    st.includes("trailer") || st.includes("upcoming") ||
    q.includes("trailer") || tp.includes("trailer") ||
    name.includes("trailer") || slug.includes("trailer")
  );
}

export function transformD1Result(m: any): KKPhimMovie {
  const safeParse = (data: any) => {
    if (!data) return undefined;
    if (typeof data !== 'string') return data;
    try { return JSON.parse(data); } catch (e) { return undefined; }
  };

  const lang = (m.lang || "").toLowerCase();
  let subType = "Vietsub";
  if (lang.includes("lồng tiếng") || lang.includes("lt")) subType = "Lồng Tiếng";
  if (lang.includes("thuyết minh") || lang.includes("tm")) subType = "Thuyết Minh";

  return {
    ...m,
    origin_name: m.origin_name || "",
    thumb: m.thumb_url || m.thumb || "",
    poster: m.poster_url || m.poster || "",
    country: m.country_name || m.country || "",
    current_episode: m.episode_current || "Full",
    sub_type: subType,
    actor: safeParse(m.actor_json) || [],
    category: safeParse(m.category_json) || [],
    tmdb: safeParse(m.tmdb_json),
    imdb: safeParse(m.imdb_json),
    description: m.description || ""
  };
}

export async function getMoviesFromD1(
  categorySlug?: string,
  page: number = 1,
  limitCount: number = 24,
  homeOnly: boolean = false,
  sortByYear: boolean = false
): Promise<KKPhimMovie[]> {
  const turso = getTursoClient();
  const db = (process.env as any).DB;
  if (!turso && !db) return [];
  const offset = (page - 1) * limitCount;

  try {
    let queryStr = "";
    let params: any[] = [];

    const filterSql = `
      LOWER(COALESCE(m.episode_current, '')) NOT LIKE '%trailer%'
      AND LOWER(COALESCE(m.episode_current, '')) NOT LIKE '%teaser%'
      AND LOWER(COALESCE(m.episode_current, '')) NOT LIKE '%sắp chiếu%'
      AND LOWER(COALESCE(m.status, '')) NOT LIKE '%trailer%'
      AND LOWER(COALESCE(m.status, '')) NOT LIKE '%upcoming%'
      AND LOWER(COALESCE(m.quality, '')) NOT LIKE '%trailer%'
      AND LOWER(COALESCE(m.type, '')) NOT LIKE '%trailer%'
      AND LOWER(COALESCE(m.name, '')) NOT LIKE '%trailer%'
      AND LOWER(COALESCE(m.slug, '')) NOT LIKE '%trailer%'
      ${homeOnly ? "AND (m.year = 2025 OR m.year = 2026)" : ""}
    `;

    // Ưu tiên tuyệt đối: Phim vừa cập nhật (bản đẹp, tập mới) lên đầu ngay lập tức!
    const orderClause = "m.last_updated DESC, COALESCE(m.year, 0) DESC";

    if (categorySlug === 'phim_chieu_rap') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.chieurap = 1 OR mc.category_slug = 'phim_chieu_rap') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'dien_anh') {
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'single' OR m.type = 'phimle') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'phim_bo') {
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'series' OR m.type = 'phimbo') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'hoat_hinh') {
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'hoathinh' OR m.type = 'hoat-hinh') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'the_loai') {
      queryStr = `SELECT DISTINCT m.* FROM movies m JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'anime_nhat') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.type = 'hoathinh' OR m.type = 'hoat-hinh') AND (m.country_name LIKE '%Nhật%' OR mc.category_slug = 'anime_nhat') AND (m.episode_total > 1 OR (m.episode_current != 'Full' AND m.episode_current NOT LIKE '%1/1%')) AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'anime_movie') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.type = 'hoathinh' OR m.type = 'hoat-hinh') AND (m.country_name LIKE '%Nhật%' OR mc.category_slug = 'anime_nhat' OR mc.category_slug = 'anime_movie') AND (m.episode_total = 1 OR m.episode_current = 'Full' OR m.episode_current LIKE '%1/1%' OR m.episode_current LIKE '%Hoàn Tất (1/1)%') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'hh_trung_quoc') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.type = 'hoathinh' OR m.type = 'hoat-hinh') AND (m.country_name LIKE '%Trung%' OR mc.category_slug = 'hh_trung_quoc') AND (m.episode_total > 1 OR (m.episode_current != 'Full' AND m.episode_current NOT LIKE '%1/1%')) AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'long_tieng') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (mc.category_slug = 'long_tieng' OR LOWER(COALESCE(m.lang, '')) LIKE '%lồng tiếng%' OR LOWER(COALESCE(m.lang, '')) LIKE '%lt%') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'thuyet_minh') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (mc.category_slug = 'thuyet_minh' OR LOWER(COALESCE(m.lang, '')) LIKE '%thuyết minh%' OR LOWER(COALESCE(m.lang, '')) LIKE '%tm%') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'tv_show') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.type = 'tvshows' OR mc.category_slug = 'tv_show') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug?.startsWith('le_')) {
      const countryMap: Record<string, string> = {
        'le_vn': 'Việt Nam', 'le_trung': 'Trung Quốc', 'le_han': 'Hàn Quốc',
        'le_au_my': 'Âu Mỹ', 'le_thai': 'Thái Lan', 'le_nhat': 'Nhật Bản'
      };
      const country = countryMap[categorySlug];
      if (!country) return [];
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (mc.category_slug = ? OR ((m.type = 'single' OR m.type = 'phimle') AND m.country_name LIKE ?)) AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [categorySlug, `%${country}%`, limitCount, offset];
    }
    else if (categorySlug?.startsWith('bo_')) {
      const countryMap: Record<string, string> = {
        'bo_vn': 'Việt Nam', 'bo_trung': 'Trung Quốc', 'bo_han': 'Hàn Quốc',
        'bo_au_my': 'Âu Mỹ', 'bo_thai': 'Thái Lan', 'bo_nhat': 'Nhật Bản'
      };
      const country = countryMap[categorySlug];
      if (!country) return [];
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (mc.category_slug = ? OR ((m.type = 'series' OR m.type = 'phimbo') AND m.country_name LIKE ?)) AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [categorySlug, `%${country}%`, limitCount, offset];
    }
    else if (categorySlug) {
      queryStr = `
        SELECT DISTINCT m.* FROM movies m
        JOIN movie_categories mc ON m.slug = mc.movie_slug
        WHERE (mc.category_slug = ? OR mc.category_slug = ?)
        AND ${filterSql}
        ORDER BY ${orderClause} LIMIT ? OFFSET ?
      `;
      params = [categorySlug, categorySlug.replace(/_/g, '-'), limitCount, offset];
    }
    else {
      queryStr = `SELECT m.* FROM movies m WHERE ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }

    let rawRows: any[] = [];
    if (turso) {
      const res = await turso.execute({ sql: queryStr, args: params });
      rawRows = res.rows || [];
    } else if (db) {
      const { results } = await db.prepare(queryStr).bind(...params).all();
      rawRows = results || [];
    }

    const filteredResults = (rawRows || []).filter((m: any) => !isTrailerMovie(m));
    return filteredResults.map(transformD1Result);
  } catch (e) {
    console.error("Database Query Error:", e);
    return [];
  }
}

export async function searchPhimInD1(keyword: string): Promise<KKPhimMovie[]> {
  const turso = getTursoClient();
  const db = (process.env as any).DB;
  if ((!turso && !db) || !keyword) return [];
  try {
    const k = `%${keyword.toLowerCase()}%`;
    const sql = `
      SELECT m.* FROM movies m
      JOIN movies_fts f ON m.slug = f.slug
      WHERE f.actors LIKE ? OR f.name LIKE ? OR f.origin_name LIKE ?
      LIMIT 80
    `;
    let rawRows: any[] = [];
    if (turso) {
      const res = await turso.execute({ sql, args: [k, k, k] });
      rawRows = res.rows || [];
    } else if (db) {
      const { results } = await db.prepare(sql).bind(k, k, k).all();
      rawRows = results || [];
    }

    const filteredResults = (rawRows || []).filter((m: any) => !isTrailerMovie(m));
    return filteredResults.map(transformD1Result);
  } catch (e) { return []; }
}

export async function getMoviesByActor(actorName: string, page: number = 1, limitCount: number = 24): Promise<KKPhimMovie[]> {
  const turso = getTursoClient();
  const db = (process.env as any).DB;
  if ((!turso && !db) || !actorName) return [];
  const offset = (page - 1) * limitCount;

  try {
    const filterSql = `
      LOWER(COALESCE(m.episode_current, '')) NOT LIKE '%trailer%'
      AND LOWER(COALESCE(m.episode_current, '')) NOT LIKE '%teaser%'
      AND LOWER(COALESCE(m.status, '')) NOT LIKE '%trailer%'
      AND LOWER(COALESCE(m.name, '')) NOT LIKE '%trailer%'
    `;

    const queryStr = `
      SELECT m.* FROM movies m
      WHERE LOWER(COALESCE(m.actor_json, '')) LIKE ?
      AND ${filterSql}
      ORDER BY COALESCE(m.year, 0) DESC, m.last_updated DESC
      LIMIT ? OFFSET ?
    `;

    const params = [`%${actorName.toLowerCase()}%`, limitCount, offset];
    let rawRows: any[] = [];
    if (turso) {
      const res = await turso.execute({ sql: queryStr, args: params });
      rawRows = res.rows || [];
    } else if (db) {
      const { results } = await db.prepare(queryStr).bind(...params).all();
      rawRows = results || [];
    }

    const filteredResults = (rawRows || []).filter((m: any) => !isTrailerMovie(m));
    return filteredResults.map(transformD1Result);
  } catch (e) {
    console.error("Search Actor Error:", e);
    return [];
  }
}

export async function searchMovies(keyword: string, page: number = 1): Promise<KKPhimMovie[]> {
  try {
    const res = await fetch(`https://phimapi.com/v1/api/tim-kiem?keyword=${encodeURIComponent(keyword)}&limit=20&page=${page}`);
    const resData = await res.json();
    const items = resData.data?.items || [];

    return items
      .filter((item: any) => !isTrailerMovie(item))
      .map((item: any) => ({
        name: item.name,
        slug: item.slug,
        poster: item.poster_url,
        thumb: item.thumb_url,
        year: item.year,
        country: item.country?.[0]?.name || "",
        sub_type: "Vietsub",
        current_episode: item.episode_current || "Full"
      }));
  } catch (e) { return []; }
}

export async function fetchKKPhimDetail(slug: string): Promise<KKPhimDetail | null> {
  try {
    const res = await fetch(`https://phimapi.com/v1/api/phim/${slug}`, { next: { revalidate: 3600 } });
    if (!res.ok) return null;
    const json = await res.json();
    const movie = json.data?.item;
    if (!movie) return null;

    const turso = getTursoClient();
    const db = (process.env as any).DB;
    let actorData = movie.actor || [];
    let enrichedTmdb = movie.tmdb || null;
    let enrichedImdb = movie.imdb || null;

    if (turso || db) {
      try {
        let dbRes: any = null;
        if (turso) {
          const res = await turso.execute({ sql: "SELECT actor_json, tmdb_json, imdb_json FROM movies WHERE slug = ?", args: [slug] });
          dbRes = res.rows[0];
        } else if (db) {
          dbRes = await db.prepare("SELECT actor_json, tmdb_json, imdb_json FROM movies WHERE slug = ?").bind(slug).first();
        }
        if (dbRes?.actor_json) {
          const parsed = JSON.parse(dbRes.actor_json);
          if (Array.isArray(parsed) && parsed.length > 0) {
            actorData = parsed;
          }
        }
        if (dbRes?.tmdb_json) {
          try {
            const parsedTmdb = JSON.parse(dbRes.tmdb_json);
            enrichedTmdb = { ...(enrichedTmdb || {}), ...parsedTmdb };
          } catch (e) {}
        }
        if (dbRes?.imdb_json) {
          try {
            const parsedImdb = JSON.parse(dbRes.imdb_json);
            enrichedImdb = { ...(enrichedImdb || {}), ...parsedImdb };
          } catch (e) {}
        }
      } catch (e) {
        console.error("Detail DB Load Error:", e);
      }
    }

    return {
      ...movie,
      poster: movie.poster_url,
      thumb: movie.thumb_url,
      country: movie.country?.[0]?.name || "",
      year: movie.year,
      lang: movie.lang,
      episode_total: movie.episode_total,
      actor: actorData,
      imdb_score: enrichedTmdb?.vote_average || enrichedImdb?.vote_average || movie.tmdb?.vote_average || movie.imdb?.vote_average || "N/A",
      quality: movie.quality,
      tmdb: enrichedTmdb,
      imdb: enrichedImdb,
      servers: (movie.episodes || []).map((s: any) => ({
        server_name: s.server_name,
        episodes: (s.server_data || []).map((ep: any) => ({
          episode_num: ep.name,
          link: ep.link_m3u8
        }))
      })),
      episodes: movie.episodes?.[0]?.server_data || []
    };
  } catch (e) {
    return null;
  }
}
