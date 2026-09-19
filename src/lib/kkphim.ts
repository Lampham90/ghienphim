// src/lib/kkphim.ts
// ĐỒNG BỘ TOÀN DIỆN VỚI ANDROID TV:
// 1. Đồng bộ Trang chủ & Catalog: Ưu tiên Năm giảm dần (2026, 2025...) rồi mới đến last_updated.
// 2. Fallback tự động sang phimdb3 khi phimdb2 gặp lỗi.
// 3. Parse đầy đủ tmdb_json và imdb_json từ D1/Turso để đồng bộ Logo & Rating.

import { createClient } from '@libsql/client/web';

const TURSO2_URL = process.env.TURSO_DATABASE_URL || 'libsql://phimdb2-plam.aws-ap-northeast-1.turso.io';
const TURSO2_AUTH_TOKEN = process.env.TURSO_AUTH_TOKEN || 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODk0NDY1NTAsImlkIjoiMDFhMGEzNTMtNTEwMS03OWUzLTg2ODUtYmE3MzJmMjM2MDg0Iiwia2lkIjoiTzVWWk5LbEFNODJ6cWEyQ3RzSmtZUHI3Z2l4U1RSX3RTZXZjX3BoT3VLVSIsInJpZCI6ImViNTQ0MjAzLWY2YjMtNDliOC05MzcyLTk0ODdmMzA0NWVmNyJ9.pz9hEIZC4iAIwfn2hu-6fbq_S_EUveAYVjFFfZRRZctKhiDyaGdWlS2bb761dM9knCfSYAU66wl0waXpi4-dDQ';

const TURSO3_URL = process.env.TURSO3_DATABASE_URL || 'libsql://phimdb3-plam2.aws-ap-northeast-1.turso.io';
const TURSO3_AUTH_TOKEN = process.env.TURSO3_AUTH_TOKEN || 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODk0NDY5NTEsImlkIjoiMDFhMGEzNTktN2MwMS03NjQ5LWJkNzctOWQzYzk3YjY3NDQ3Iiwia2lkIjoiZ1lwNFdZTEtJQ1Jva2FzR0FHNnNobHZBNjZGdGVkOU5IWGZaeWltZHUtYyIsInJpZCI6ImFhMGIwY2RhLWZjY2EtNDgxYy1hNTg5LWIxY2Y3YmI5Y2Y1NCJ9.x2iiZWXagUwDmhcK77qWbwgW4vxOSPKRNDa_w5ToCHl0u4XHWzjEaBcAxA8UOBaq5nFWUP-suVqeGrCCfZayDA';

let turso2Client: any = null;
let turso3Client: any = null;

export function getTursoClient() {
  if (!turso2Client && TURSO2_URL && TURSO2_AUTH_TOKEN) {
    turso2Client = createClient({ url: TURSO2_URL, authToken: TURSO2_AUTH_TOKEN });
  }
  return turso2Client;
}

export function getTurso3Client() {
  if (!turso3Client && TURSO3_URL && TURSO3_AUTH_TOKEN) {
    turso3Client = createClient({ url: TURSO3_URL, authToken: TURSO3_AUTH_TOKEN });
  }
  return turso3Client;
}

export interface KKPhimMovie {
  name: string;
  origin_name?: string;
  year: number;
  slug: string;
  thumb?: string;
  thumb_url?: string;
  poster?: string;
  poster_url?: string;
  sub_type?: string;
  current_episode?: string;
  episode_current?: string;
  total_episodes?: string;
  country?: string;
  description?: string;
  quality?: string;
  lang?: string;
  actor?: any[];
  category?: any[];
  tmdb?: any;
  imdb?: any;
  imdb_score?: string;
  logo?: string | null;
}

export interface KKPhimDetail {
  name: string;
  origin_name?: string;
  slug: string;
  poster?: string;
  thumb?: string;
  description?: string;
  servers?: any[];
  episodes?: any[];
  year?: number;
  country?: string;
  lang?: string;
  episode_total?: string;
  total_episodes?: string;
  episode_current?: string;
  current_episode?: string;
  sub_type?: string;
  actor?: any[];
  category?: any[];
  imdb_score?: string;
  quality?: string;
  content?: string;
  tmdb?: any;
  imdb?: any;
  logo?: string | null;
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

  const tmdb = safeParse(m.tmdb_json);
  const imdb = safeParse(m.imdb_json);

  let backdrop = m.thumb_url || m.thumb || "";
  if (tmdb?.backdrop_url) backdrop = tmdb.backdrop_url.replace('/original/', '/w780/');
  else if (tmdb?.backdrop_path) backdrop = `https://image.tmdb.org/t/p/w780${tmdb.backdrop_path}`;

  let poster = m.poster_url || m.poster || "";
  if (tmdb?.poster_url) poster = tmdb.poster_url.replace('/original/', '/w500/');
  else if (tmdb?.poster_path) poster = `https://image.tmdb.org/t/p/w500${tmdb.poster_path}`;

  let logo = m.logo || null;
  if (tmdb?.logo_url) logo = tmdb.logo_url;
  else if (tmdb?.logo_path) logo = `https://image.tmdb.org/t/p/w500${tmdb.logo_path}`;

  return {
    ...m,
    origin_name: m.origin_name || "",
    thumb: backdrop,
    thumb_url: backdrop,
    poster: poster,
    poster_url: poster,
    year: m.year ? parseInt(m.year, 10) : 0,
    country: m.country_name || m.country || "",
    current_episode: m.episode_current || "Full",
    episode_current: m.episode_current || "Full",
    total_episodes: m.episode_total || "1",
    sub_type: subType,
    quality: m.quality || "HD",
    lang: m.lang || subType,
    actor: safeParse(m.actor_json) || [],
    category: safeParse(m.category_json) || [],
    tmdb: tmdb,
    imdb: imdb,
    imdb_score: tmdb?.vote_average ? String(tmdb.vote_average) : (imdb?.vote_average ? String(imdb.vote_average) : (m.imdb_score || "N/A")),
    logo: logo,
    description: m.description || ""
  };
}

export async function getMoviesFromD1(
  categorySlug?: string,
  page: number = 1,
  limitCount: number = 24,
  homeOnly: boolean = false,
  sortByYear: boolean = false,
  year?: string | number | null
): Promise<KKPhimMovie[]> {
  const turso = getTursoClient();
  const db = (process.env as any).DB;
  if (!turso && !db) return [];
  const offset = (page - 1) * limitCount;

  try {
    let queryStr = "";
    let params: any[] = [];

    let yearSql = "";
    if (year === 'truoc-2020') {
      yearSql = "AND m.year < 2020";
    } else if (year && !isNaN(parseInt(String(year), 10))) {
      yearSql = `AND m.year = ${parseInt(String(year), 10)}`;
    } else if (homeOnly) {
      yearSql = "AND (m.year = 2025 OR m.year = 2026)";
    }

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
      ${yearSql}
    `;

    // Đồng bộ 100% với Cloudflare Worker: Sắp xếp theo Năm hoặc Thời gian cập nhật mới nhất
    const orderClause = sortByYear
      ? "COALESCE(m.year, 0) DESC, m.last_updated DESC"
      : "m.last_updated DESC, COALESCE(m.year, 0) DESC";

    // Điều kiện loại trừ hoạt hình: áp dụng cho TẤT CẢ các danh mục / thể loại (trừ phim_chieu_rap và các danh mục hoạt hình)
    const isAnimationCategory = ['hoat_hinh', 'anime_nhat', 'anime_movie', 'hh_trung_quoc'].includes(categorySlug || '');
    const excludeAnimationSql = (categorySlug === 'phim_chieu_rap' || isAnimationCategory) 
      ? "" 
      : "AND m.type != 'hoathinh' AND m.type != 'hoat-hinh' AND LOWER(COALESCE(m.category_json, '')) NOT LIKE '%hoat-hinh%' AND LOWER(COALESCE(m.category_json, '')) NOT LIKE '%hoạt hình%'";

    if (categorySlug === 'phim_chieu_rap') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.chieurap = 1 OR mc.category_slug = 'phim_chieu_rap') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'dien_anh') {
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'single' OR m.type = 'phimle') ${excludeAnimationSql} AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'phim_bo') {
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'series' OR m.type = 'phimbo') ${excludeAnimationSql} AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'hoat_hinh') {
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'hoathinh' OR m.type = 'hoat-hinh') AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'the_loai') {
      queryStr = `SELECT DISTINCT m.* FROM movies m JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE ${filterSql} ${excludeAnimationSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
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
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (mc.category_slug = 'long_tieng' OR LOWER(COALESCE(m.lang, '')) LIKE '%lồng tiếng%' OR LOWER(COALESCE(m.lang, '')) LIKE '%lt%') ${excludeAnimationSql} AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'thuyet_minh') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (mc.category_slug = 'thuyet_minh' OR LOWER(COALESCE(m.lang, '')) LIKE '%thuyết minh%' OR LOWER(COALESCE(m.lang, '')) LIKE '%tm%') ${excludeAnimationSql} AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'tv_show') {
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.type = 'tvshows' OR mc.category_slug = 'tv_show') ${excludeAnimationSql} AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug?.startsWith('le_')) {
      const countryMap: Record<string, string> = {
        'le_vn': 'Việt Nam', 'le_trung': 'Trung Quốc', 'le_han': 'Hàn Quốc',
        'le_au_my': 'Âu Mỹ', 'le_thai': 'Thái Lan', 'le_nhat': 'Nhật Bản'
      };
      const country = countryMap[categorySlug];
      if (!country) return [];
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.type = 'single' OR m.type = 'phimle') AND m.type != 'tvshows' AND (mc.category_slug = ? OR m.country_name LIKE ?) ${excludeAnimationSql} AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [categorySlug, `%${country}%`, limitCount, offset];
    }
    else if (categorySlug?.startsWith('bo_')) {
      const countryMap: Record<string, string> = {
        'bo_vn': 'Việt Nam', 'bo_trung': 'Trung Quốc', 'bo_han': 'Hàn Quốc',
        'bo_au_my': 'Âu Mỹ', 'bo_thai': 'Thái Lan', 'bo_nhat': 'Nhật Bản'
      };
      const country = countryMap[categorySlug];
      if (!country) return [];
      queryStr = `SELECT DISTINCT m.* FROM movies m LEFT JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (m.type = 'series' OR m.type = 'phimbo') AND m.type != 'tvshows' AND (mc.category_slug = ? OR m.country_name LIKE ?) ${excludeAnimationSql} AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [categorySlug, `%${country}%`, limitCount, offset];
    }
    else if (categorySlug) {
      queryStr = `
        SELECT DISTINCT m.* FROM movies m
        JOIN movie_categories mc ON m.slug = mc.movie_slug
        WHERE (mc.category_slug = ? OR mc.category_slug = ?)
        ${excludeAnimationSql}
        AND ${filterSql}
        ORDER BY ${orderClause} LIMIT ? OFFSET ?
      `;
      params = [categorySlug, categorySlug.replace(/_/g, '-'), limitCount, offset];
    }
    else {
      queryStr = `SELECT m.* FROM movies m WHERE ${filterSql} ${excludeAnimationSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }

    let rawRows: any[] = [];
    if (turso) {
      try {
        const res = await turso.execute({ sql: queryStr, args: params });
        rawRows = res.rows || [];
      } catch (err2) {
        console.warn("phimdb2 lỗi, tự động chuyển sang phimdb3 fallback trên Web:", err2);
        const turso3 = getTurso3Client();
        if (turso3) {
          const res3 = await turso3.execute({ sql: queryStr, args: params });
          rawRows = res3.rows || [];
        }
      }
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

export function removeVietnameseTones(str: string): string {
  return str
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd')
    .replace(/Đ/g, 'D');
}

export async function searchPhimInD1(keyword: string): Promise<KKPhimMovie[]> {
  const turso = getTursoClient();
  const db = (process.env as any).DB;
  if ((!turso && !db) || !keyword) return [];
  try {
    const kw = keyword.trim().toLowerCase();
    const unaccented = removeVietnameseTones(kw);
    const slugPart = unaccented.replace(/[^a-z0-9]+/g, '-').replace(/^-+|-+$/g, '');

    const kLike = `%${kw}%`;
    const kStart = `${kw}%`;
    const slugLike = `%${slugPart}%`;
    const slugStart = `${slugPart}%`;

    const sql = `
      SELECT m.* FROM movies m
      JOIN movies_fts f ON m.slug = f.slug
      WHERE f.name LIKE ? 
         OR f.origin_name LIKE ? 
         OR f.actors LIKE ? 
         OR f.alternative_names LIKE ?
         OR f.slug LIKE ?
      ORDER BY 
        CASE 
          WHEN LOWER(m.name) = ? THEN 1
          WHEN LOWER(m.origin_name) = ? THEN 2
          WHEN m.slug = ? THEN 3
          WHEN LOWER(m.name) LIKE ? THEN 4
          WHEN LOWER(m.origin_name) LIKE ? THEN 5
          WHEN m.slug LIKE ? THEN 6
          WHEN LOWER(m.name) LIKE ? THEN 7
          WHEN LOWER(m.origin_name) LIKE ? THEN 8
          WHEN m.slug LIKE ? THEN 9
          ELSE 10
        END,
        COALESCE(m.year, 0) DESC,
        m.last_updated DESC
      LIMIT 80
    `;

    const params = [
      kLike, kLike, kLike, kLike, slugLike,
      kw, kw, slugPart,
      kStart, kStart, slugStart,
      kLike, kLike, slugLike
    ];

    let rawRows: any[] = [];
    if (turso) {
      try {
        const res = await turso.execute({ sql, args: params });
        rawRows = res.rows || [];
      } catch (err) {
        console.warn("phimdb2 search lỗi, tự động chuyển sang phimdb3 fallback:", err);
        const turso3 = getTurso3Client();
        if (turso3) {
          const res3 = await turso3.execute({ sql, args: params });
          rawRows = res3.rows || [];
        }
      }
    } else if (db) {
      const { results } = await db.prepare(sql).bind(...params).all();
      rawRows = results || [];
    }

    const filteredResults = (rawRows || []).filter((m: any) => !isTrailerMovie(m));
    return filteredResults.map(transformD1Result);
  } catch (e) {
    console.error("searchPhimInD1 error:", e);
    return [];
  }
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
      try {
        const res = await turso.execute({ sql: queryStr, args: params });
        rawRows = res.rows || [];
      } catch (err) {
        const turso3 = getTurso3Client();
        if (turso3) {
          const res3 = await turso3.execute({ sql: queryStr, args: params });
          rawRows = res3.rows || [];
        }
      }
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
          try {
            const res = await turso.execute({ sql: "SELECT actor_json, tmdb_json, imdb_json FROM movies WHERE slug = ?", args: [slug] });
            dbRes = res.rows[0];
          } catch (err) {
            const turso3 = getTurso3Client();
            if (turso3) {
              const res3 = await turso3.execute({ sql: "SELECT actor_json, tmdb_json, imdb_json FROM movies WHERE slug = ?", args: [slug] });
              dbRes = res3.rows[0];
            }
          }
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

    let logo: string | null = null;
    if (enrichedTmdb?.logo_url) logo = enrichedTmdb.logo_url;
    else if (enrichedTmdb?.logo_path) logo = `https://image.tmdb.org/t/p/w500${enrichedTmdb.logo_path}`;

    return {
      ...movie,
      poster: movie.poster_url,
      thumb: movie.thumb_url,
      country: movie.country?.[0]?.name || "",
      year: movie.year,
      lang: movie.lang,
      episode_total: movie.episode_total,
      total_episodes: movie.episode_total || "1",
      episode_current: movie.episode_current || "Full",
      current_episode: movie.episode_current || "Full",
      category: movie.category || [],
      actor: actorData,
      imdb_score: enrichedTmdb?.vote_average || enrichedImdb?.vote_average || movie.tmdb?.vote_average || movie.imdb?.vote_average || "N/A",
      quality: movie.quality,
      logo: logo,
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