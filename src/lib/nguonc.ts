// src/lib/nguonc.ts

/**
 * Tách và làm sạch tên tiếng Anh để đưa vào API search của NGUỒNC
 * Tự động chuyển "(Season 3)" -> "Season 3" để NGUỒNC nhận diện được
 */
function cleanEnglishName(rawName: string): string {
  if (!rawName) return '';

  let clean = rawName;

  // Nếu có dấu '-' phân cách (VD: "Xanh Thẳm (Phần 3) - Grand Blue Dreaming (Season 3)")
  if (clean.includes('-')) {
    const parts = clean.split('-');
    clean = parts[parts.length - 1]; // Lấy vế tên tiếng Anh sau dấu '-'
  }

  return clean
    .replace(/\[.*?\]/g, '')             // Xóa tag [FHD-Vietsub], [HD-Thuyết minh]
    .replace(/\((19|20)\d{2}\)/g, '')     // Xóa năm (2026)
    .replace(/[\(\)]/g, ' ')             // Xóa dấu ngoặc đơn () -> (Season 3) thành Season 3
    .replace(/\s+/g, ' ')                // Thu gọn khoảng trắng dư thừa
    .trim();
}

export async function fetchNguoncDetail(
  slug: string,
  movieName?: string
): Promise<any | null> {

  // Fetch wrapper tương thích Edge Runtime với Timeout 5s (tránh nghẽn Cloudflare Worker)
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

        // Lấy slug từ kết quả đầu tiên trả về
        if (searchJson?.status === "success" && items.length > 0 && items[0]?.slug) {
          data = await fetchJSON(`https://phim.nguonc.com/api/film/${items[0].slug}`);
        }
      }
    }

    // BƯỚC 3: Transform dữ liệu trả về theo format chuẩn
    if (data && data.status === "success" && data.movie) {
      const rawEpisodes = data.movie.episodes || data.episodes || [];

      if (Array.isArray(rawEpisodes) && rawEpisodes.length > 0) {
        const mappedServers = rawEpisodes.map((server: any) => ({
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
          original_name: data.movie.original_name || data.movie.name,
          servers: mappedServers
        };
      }
    }
  } catch (e) {
    console.error("[NGUONC LIB ERROR]:", e);
  }

  return null;
}