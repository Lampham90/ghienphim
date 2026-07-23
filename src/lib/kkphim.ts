// src/lib/kkphim.ts
// ĐỒNG BỘ TOÀN DIỆN (v7.5):
// 1. Đồng bộ Năm & Last Updated.
// 2. Fetch bù ảnh diễn viên từ TMDB tại Server (bypass nhà mạng chặn).
// 3. Sử dụng API Key TMDB: b81e7ce8a6c68dbea801f221b220302c

export interface KKPhimMovie {
  name: string;
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
}

export interface KKPhimDetail {
  name: string;
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
  type?: string;
  origin_name?: string;
  tmdb?: {
    id?: string | number;
    type?: string;
  };
}

const TMDB_API_KEY = "b81e7ce8a6c68dbea801f221b220302c";

export const getImageUrl = (url?: string) => {
  if (!url) return "";
  if (url.startsWith("http")) return url;
  const cleanPath = url.startsWith('/') ? url.slice(1) : url;
  return `https://phimimg.com/${cleanPath}`;
};

function isTrailerMovie(item: any): boolean {
  const ep = (item.episode_current || item.current_episode || "").toLowerCase();
  const st = (item.status || "").toLowerCase();
  const name = (item.name || "").toLowerCase();
  const slug = (item.slug || "").toLowerCase();
  return ep.includes("trailer") || ep.includes("teaser") || st.includes("trailer") || name.includes("trailer") || slug.includes("trailer");
}

export function transformD1Result(m: any): KKPhimMovie {
  const safeParse = (data: any) => {
    if (!data) return [];
    if (typeof data !== 'string') return data;
    try {
      const parsed = JSON.parse(data);
      return Array.isArray(parsed) ? parsed.map((a: any) => typeof a === 'string' ? { name: a, avatar: "" } : a) : [];
    } catch (e) { return []; }
  };
  const lang = (m.lang || "").toLowerCase();
  let subType = "Vietsub";
  if (lang.includes("lồng tiếng") || lang.includes("lt")) subType = "Lồng Tiếng";
  if (lang.includes("thuyết minh") || lang.includes("tm")) subType = "Thuyết Minh";
  return {
    ...m,
    thumb: m.thumb_url || m.thumb || "",
    poster: m.poster_url || m.poster || "",
    country: m.country_name || m.country || "",
    current_episode: m.episode_current || "Full",
    sub_type: subType,
    actor: safeParse(m.actor_json),
    category: safeParse(m.category_json),
    description: m.description || ""
  };
}

async function fetchTmdbActors(tmdbId: string | number, type?: string) {
  if (!tmdbId) return [];
  try {
    const tmdbType = (type === 'movie' || type === 'single' || type === 'phimle') ? 'movie' : 'tv';
    // Dùng en-US để lấy Credits đầy đủ nhất (vi-VN thường bị thiếu ảnh)
    const url = `https://api.themoviedb.org/3/${tmdbType}/${tmdbId}/credits?api_key=${TMDB_API_KEY}&language=en-US`;
    const res = await fetch(url, { next: { revalidate: 86400 } });
    if (!res.ok) return [];
    const data = await res.json();
    return (data.cast || []).slice(0, 15).map((c: any) => ({
      name: c.name || c.original_name,
      avatar: c.profile_path ? `https://image.tmdb.org/t/p/w185${c.profile_path}` : ""
    }));
  } catch (e) { return []; }
}

async function searchTmdbId(name: string, year?: number, type?: string) {
  try {
    const tmdbType = (type === 'movie' || type === 'single' || type === 'phimle') ? 'movie' : 'tv';
    const query = encodeURIComponent(name);
    const url = `https://api.themoviedb.org/3/search/${tmdbType}?api_key=${TMDB_API_KEY}&query=${query}${year ? `&year=${year}` : ''}`;
    const res = await fetch(url, { next: { revalidate: 86400 } });
    if (!res.ok) return null;
    const data = await res.json();
    return data.results?.[0]?.id || null;
  } catch (e) { return null; }
}

export async function fetchKKPhimDetail(slug: string): Promise<KKPhimDetail | null> {
  try {
    const res = await fetch(`https://phimapi.com/v1/api/phim/${slug}`, { next: { revalidate: 3600 } });
    if (!res.ok) return null;
    const json = await res.json();
    const movie = json.data?.item;
    if (!movie) return null;

    const db = (process.env as any).DB;
    let actorData = movie.actor || [];
    let hasAvatars = false;

    // 1. Thử lấy từ Database D1 (Đã cào)
    if (db) {
      try {
        const dbRes = await db.prepare("SELECT actor_json FROM movies WHERE slug = ?").bind(slug).first();
        if (dbRes?.actor_json) {
          const parsed = JSON.parse(dbRes.actor_json);
          if (Array.isArray(parsed) && parsed.length > 0) {
            actorData = parsed;
            hasAvatars = actorData.some((a: any) => typeof a === 'object' && a.avatar && a.avatar.trim() !== "");
          }
        }
      } catch (e) {}
    }

    // 2. Nếu DB chưa có ảnh, fetch trực tiếp từ TMDB
    if (!hasAvatars) {
      let tmdbId = movie.tmdb?.id;
      if (!tmdbId && movie.origin_name) {
        tmdbId = await searchTmdbId(movie.origin_name, movie.year, movie.type);
      }
      if (tmdbId) {
        const tmdbActors = await fetchTmdbActors(tmdbId, movie.type);
        if (tmdbActors.length > 0) actorData = tmdbActors;
      }
    }

    // Chuẩn hóa lần cuối thành Object cho ActorList
    const finalizedActors = actorData.map((a: any) => {
        if (typeof a === 'string') return { name: a, avatar: "" };
        return { name: a.name || "", avatar: a.avatar || "" };
    });

    return {
      ...movie,
      poster: movie.poster_url,
      thumb: movie.thumb_url,
      actor: finalizedActors,
      imdb_score: movie.tmdb?.vote_average || movie.imdb?.vote_average || "N/A",
      servers: (movie.episodes || []).map((s: any) => ({
        server_name: s.server_name,
        episodes: (s.server_data || []).map((ep: any) => ({ episode_num: ep.name, link: ep.link_m3u8 }))
      })),
      episodes: movie.episodes?.[0]?.server_data || []
    };
  } catch (e) { return null; }
}

export async function getMoviesFromD1(categorySlug?: string, page: number = 1, limitCount: number = 24, homeOnly: boolean = false): Promise<KKPhimMovie[]> {
  const db = (process.env as any).DB;
  if (!db) return [];
  const offset = (page - 1) * limitCount;
  try {
    const filterSql = `LOWER(COALESCE(m.episode_current, '')) NOT LIKE '%trailer%' AND ${homeOnly ? "m.year >= 2025" : "1=1"}`;
    const orderClause = "COALESCE(m.year, 0) DESC, m.last_updated DESC";
    let queryStr = categorySlug
      ? `SELECT DISTINCT m.* FROM movies m JOIN movie_categories mc ON m.slug = mc.movie_slug WHERE (mc.category_slug = ? OR mc.category_slug = ?) AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`
      : `SELECT m.* FROM movies m WHERE ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
    const params = categorySlug ? [categorySlug, categorySlug.replace(/_/g, '-'), limitCount, offset] : [limitCount, offset];
    const { results } = await db.prepare(queryStr).bind(...params).all();
    return (results || []).map(transformD1Result);
  } catch (e) { return []; }
}

export async function searchPhimInD1(keyword: string): Promise<KKPhimMovie[]> {
  const db = (process.env as any).DB;
  if (!db || !keyword) return [];
  try {
    const k = `%${keyword.toLowerCase()}%`;
    const { results } = await db.prepare(`SELECT m.* FROM movies m JOIN movies_fts f ON m.slug = f.slug WHERE f.actors LIKE ? OR f.name LIKE ? OR f.origin_name LIKE ? LIMIT 80`).bind(k, k, k).all();
    return (results || []).map(transformD1Result);
  } catch (e) { return []; }
}

export async function searchMovies(keyword: string, page: number = 1): Promise<KKPhimMovie[]> {
  try {
    const res = await fetch(`https://phimapi.com/v1/api/tim-kiem?keyword=${encodeURIComponent(keyword)}&limit=20&page=${page}`);
    const resData = await res.json();
    return (resData.data?.items || []).filter((item: any) => !isTrailerMovie(item)).map((item: any) => ({
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
