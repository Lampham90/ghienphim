// src/lib/kkphim.ts
// ĐỒNG BỘ TOÀN DIỆN (v6):
// 1. Đồng bộ Trang chủ & Catalog: Ưu tiên Năm giảm dần (2026, 2025...)
//    rồi mới đến phim mới cào (last_updated).
// 2. Mở rộng homeOnly: Lấy từ năm 2025 trở lên để phim vừa cào năm nay hiện ngay.
// 3. Sử dụng COALESCE để đảm bảo sắp xếp năm chính xác kể cả khi dữ liệu rỗng.

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
  actor?: any[]; // Đổi sang any[] để nhận object [{name, avatar}]
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
  actor?: any[]; // Đổi sang any[]
  imdb_score?: string;
  quality?: string;
  content?: string;
  tmdb?: any; // Thêm trường tmdb để ActorList có thể fetch bù
}

export const getImageUrl = (url?: string) => {
  if (!url) return "";
  if (url.startsWith("http")) return url;
  const cleanPath = url.startsWith('/') ? url.slice(1) : url;
  return `https://phimimg.com/${cleanPath}`;
};

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
    if (!data) return [];
    if (typeof data !== 'string') return data;
    try { return JSON.parse(data); } catch (e) { return []; }
  };

  const lang = (m.lang || "").toLowerCase();
  let subType = "Vietsub";
  if (lang.includes("lồng tiếng") || lang.includes("lt")) subType = "Lồng Tiếng";
  if (lang.includes("thuyết minh") || lang.includes("tm")) subType = "Thuyết Minh";

  return {
    ...m,
    // ✅ Đảm bảo khớp tên biến để UI (Search/Card) hiện được ảnh
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

export async function getMoviesFromD1(
  categorySlug?: string,
  page: number = 1,
  limitCount: number = 24,
  homeOnly: boolean = false,
  sortByYear: boolean = false // 🆕 Thêm tham số này để điều khiển sắp xếp theo năm
): Promise<KKPhimMovie[]> {
  const db = (process.env as any).DB;
  if (!db) return [];
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
      ${homeOnly ? "AND m.year >= 2025" : ""}
    `;

    // 🔄 PHÂN TÁC LOGIC SẮP XẾP:
    // Nếu sortByYear = true (dùng cho Catalog) -> Ưu tiên Năm giảm dần, sau đó mới đến last_updated
    // Ngược lại (dùng cho Trang chủ) -> Giữ nguyên logic cào mới nhất lên đầu
    const orderClause = sortByYear 
      ? "COALESCE(m.year, 0) DESC, m.last_updated DESC" 
      : "m.last_updated DESC";

    if (categorySlug === 'phim_chieu_rap') {
      queryStr = `SELECT m.* FROM movies m WHERE m.chieurap = 1 AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'anime_movie') {
      queryStr = `SELECT m.* FROM movies m WHERE m.type = 'hoathinh' AND m.episode_current = 'Full' AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'tv_show') {
      queryStr = `SELECT m.* FROM movies m WHERE m.type = 'tvshows' AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug?.startsWith('le_')) {
      const countryMap: Record<string, string> = {
        'le_vn': 'Việt Nam', 'le_trung': 'Trung Quốc', 'le_han': 'Hàn Quốc',
        'le_au_my': 'Âu Mỹ', 'le_thai': 'Thái Lan', 'le_nhat': 'Nhật Bản'
      };
      const country = countryMap[categorySlug];
      if (!country) return [];
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'single' OR m.type = 'phimle') AND m.country_name LIKE ? AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [`%${country}%`, limitCount, offset];
    }
    else if (categorySlug?.startsWith('bo_')) {
      const countryMap: Record<string, string> = {
        'bo_vn': 'Việt Nam', 'bo_trung': 'Trung Quốc', 'bo_han': 'Hàn Quốc',
        'bo_au_my': 'Âu Mỹ', 'bo_thai': 'Thái Lan', 'bo_nhat': 'Nhật Bản'
      };
      const country = countryMap[categorySlug];
      if (!country) return [];
      queryStr = `SELECT m.* FROM movies m WHERE (m.type = 'series' OR m.type = 'phimbo') AND m.country_name LIKE ? AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [`%${country}%`, limitCount, offset];
    }
    else if (categorySlug === 'anime_nhat') {
      queryStr = `SELECT m.* FROM movies m WHERE m.type = 'hoathinh' AND m.country_name LIKE '%Nhật Bản%' AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
    }
    else if (categorySlug === 'hh_trung_quoc') {
      queryStr = `SELECT m.* FROM movies m WHERE m.type = 'hoathinh' AND m.country_name LIKE '%Trung Quốc%' AND ${filterSql} ORDER BY ${orderClause} LIMIT ? OFFSET ?`;
      params = [limitCount, offset];
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

    const { results } = await db.prepare(queryStr).bind(...params).all();
    const filteredResults = (results || []).filter((m: any) => !isTrailerMovie(m));
    return filteredResults.map(transformD1Result);
  } catch (e) {
    console.error("D1 Query Error:", e);
    return [];
  }
}

export async function searchPhimInD1(keyword: string): Promise<KKPhimMovie[]> {
  const db = (process.env as any).DB;
  if (!db || !keyword) return [];
  try {
    const k = `%${keyword.toLowerCase()}%`;
    const { results } = await db.prepare(`
      SELECT m.* FROM movies m
      JOIN movies_fts f ON m.slug = f.slug
      WHERE f.actors LIKE ? OR f.name LIKE ? OR f.origin_name LIKE ?
      LIMIT 80
    `).bind(k, k, k).all();

    const filteredResults = (results || []).filter((m: any) => !isTrailerMovie(m));
    return filteredResults.map(transformD1Result);
  } catch (e) { return []; }
}

export async function getMoviesByActor(actorName: string, page: number = 1, limitCount: number = 24): Promise<KKPhimMovie[]> {
  const db = (process.env as any).DB;
  if (!db || !actorName) return [];
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

    const { results } = await db.prepare(queryStr).bind(`%${actorName.toLowerCase()}%`, limitCount, offset).all();
    const filteredResults = (results || []).filter((m: any) => !isTrailerMovie(m));
    return filteredResults.map(transformD1Result);
  } catch (e) {
    console.error("D1 Search Actor Error:", e);
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

    // ✅ LẤY THÊM actor_json TỪ D1 ĐỂ HIỂN THỊ AVATAR DIỄN VIÊN ĐÃ CÀO
    const db = (process.env as any).DB;
    let actorData = movie.actor || [];
    if (db) {
      try {
        const dbRes = await db.prepare("SELECT actor_json FROM movies WHERE slug = ?").bind(slug).first();
        if (dbRes?.actor_json) {
          const parsed = JSON.parse(dbRes.actor_json);
          // Ưu tiên dữ liệu trong DB (vì có chứa avatar từ TMDB)
          if (Array.isArray(parsed) && parsed.length > 0) {
            actorData = parsed;
          }
        }
      } catch (e) {
        console.error("Detail D1 Actor Error:", e);
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
      imdb_score: movie.tmdb?.vote_average || movie.imdb?.vote_average || "N/A",
      quality: movie.quality,
      tmdb: movie.tmdb, // Trả về để ActorList có thể fetch bù từ TMDB nếu DB trống

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
