// src/lib/nguonc.ts

/**
 * Tách và làm sạch tên tiếng Anh để đưa vào API search của NGUỒNC
 */
function cleanEnglishName(rawName: string): string {
  if (!rawName) return '';

  let clean = rawName;

  if (clean.includes('-')) {
    const parts = clean.split('-');
    clean = parts[parts.length - 1]; // Lấy vế tên tiếng Anh sau dấu '-'
  }

  return clean
    .replace(/\[.*?\]/g, '')             // Xóa tag [FHD-Vietsub], [HD-Thuyết minh]
    .replace(/\((19|20)\d{2}\)/g, '')     // Xóa năm (2026)
    .replace(/[\(\)]/g, ' ')             // Xóa dấu ngoặc đơn ()
    .replace(/\s+/g, ' ')                // Thu gọn khoảng trắng
    .trim();
}

export async function fetchNguoncDetail(
  slug: string,
  movieName?: string
): Promise<{ movieInfo: any | null; servers: any[]; original_name: string } | null> {

  // Fetch wrapper tương thích Edge Runtime với Timeout 5s
  const fetchJSON = async (url: string) => {
    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 5000);

    try {
      const res = await fetch(url, {
        method: 'GET',
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
          'Accept': 'application/json',
        },
        signal: controller.signal,
        cache: 'no-store'
      });
      clearTimeout(timeoutId);

      if (!res.ok) return null;
      return await res.json();
    } catch (e) {
      clearTimeout(timeoutId);
      return null;
    }
  };

  try {
    // BƯỚC 1: Thử Fetch trực tiếp theo Slug từ KKPHIM
    let data = await fetchJSON(`https://phim.nguonc.com/api/film/${slug}`);

    // BƯỚC 2: Nếu Slug khác nhau -> Dùng tên tiếng Anh đã làm sạch để Search
    if ((!data || data.status !== "success" || !data.movie) && movieName) {
      const keyword = cleanEnglishName(movieName);

      if (keyword) {
        const searchUrl = `https://phim.nguonc.com/api/film/search?keyword=${encodeURIComponent(keyword)}`;
        const searchJson = await fetchJSON(searchUrl);
        const items = searchJson?.items || searchJson?.data || searchJson?.data?.items || [];

        if (searchJson?.status === "success" && items.length > 0 && items[0]?.slug) {
          data = await fetchJSON(`https://phim.nguonc.com/api/film/${items[0].slug}`);
        }
      }
    }

    // BƯỚC 3: Transform dữ liệu trả về theo format chuẩn (Đã có movieInfo)
    if (data && data.status === "success" && data.movie) {
      const m = data.movie;

      // 🟢 1. Tạo movieInfo dự phòng khớp chuẩn cấu trúc KKPhim
      const movieInfo = {
        name: m.name || m.original_name,
        origin_name: m.original_name || m.name,
        thumb: m.thumb_url || m.poster_url || "",
        poster: m.poster_url || m.thumb_url || "",
        content: m.description || m.content || "",
        quality: m.quality || "FHD",
        year: m.created ? new Date(m.created).getFullYear() : 2026,
        category: m.category ? Object.values(m.category).map((c: any) => ({ name: c.name })) : [],
      };

      // 🟢 2. Transform Danh sách Server Video
      const rawEpisodes = m.episodes || data.episodes || [];
      const mappedServers = (Array.isArray(rawEpisodes) ? rawEpisodes : []).map((server: any) => ({
        server_name: server.server_name || 'Nguồn C',
        isNguonc: true,
        episodes: (server.items || []).map((item: any) => ({
          episode_num: item.name,
          name: `Tập ${item.name}`,
          link: item.embed,
          link_m3u8: item.embed,
          isNguonc: true
        }))
      }));

      return {
        movieInfo,
        servers: mappedServers,
        original_name: m.original_name || m.name
      };
    }
  } catch (e) {
    console.error("[NGUONC LIB ERROR]:", e);
  }

  return null;
}