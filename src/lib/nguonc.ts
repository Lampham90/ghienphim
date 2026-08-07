// src/lib/nguonc.ts

/**
 * Tách và làm sạch tên tiếng Anh để đưa vào API search của NGUỒNC
 */
function cleanEnglishName(rawName: string): string {
  if (!rawName) return '';

  let clean = rawName;

  // Xử lý dạng "Tên Việt - Tên Anh"
  if (clean.includes(' - ')) {
    const parts = clean.split(/\s+-\s+/);
    clean = parts[parts.length - 1]; // Lấy vế tên tiếng Anh sau dấu '-'
  } else if (clean.includes('-')) {
    const parts = clean.split('-');
    clean = parts[parts.length - 1];
  }

  return clean
    .replace(/\[.*?\]/g, '')             // Xóa tag [FHD-Vietsub]
    .replace(/\((19|20)\d{2}\)/g, '')    // Xóa năm (19xx, 20xx)
    .replace(/[\(\)]/g, ' ')             // Xóa ngoặc ()
    .replace(/\s+/g, ' ')                // Thu gọn khoảng trắng
    .trim();
}

/**
 * Làm sạch tên tiếng Việt để dùng cho Bước 3 (Fallback Search)
 */
function cleanVietnameseName(rawName: string): string {
  if (!rawName) return '';
  return rawName
    .replace(/\((19|20)\d{2}\)/g, '')    // Xóa năm
    .replace(/[\[\]\(\)\:\-]/g, ' ')     // Xóa ký tự đặc biệt
    .replace(/\s+/g, ' ')                // Thu gọn khoảng trắng
    .trim();
}

/**
 * Chuẩn hóa Tên Server đồng bộ với App Kotlin: "VIETSUB (2)", "THUYẾT MINH (2)"
 */
function formatServerName(rawName: string): string {
  if (!rawName) return 'NGUỒN 2';

  const upperName = rawName.toUpperCase();

  // Trích xuất số đuôi (#2, #3...) nếu có
  const numberMatch = rawName.match(/#(\d+)/);
  const numberSuffix = (numberMatch && numberMatch[1] !== '1') ? ` ${numberMatch[1]}` : '';

  let baseType = '';
  if (upperName.includes('LỒNG TIẾNG') || upperName.includes('LT')) {
    baseType = 'LỒNG TIẾNG';
  } else if (upperName.includes('THUYẾT MINH') || upperName.includes('TM')) {
    baseType = 'THUYẾT MINH';
  } else if (upperName.includes('VIETSUB') || upperName.includes('SUB')) {
    baseType = 'VIETSUB';
  } else {
    baseType = upperName.replace(/#\d+/g, '').trim();
  }

  return `${baseType}${numberSuffix} (2)`;
}

export async function fetchNguoncDetail(
  slug: string,
  movieName?: string,   // Tên tiếng Anh / Original Name
  movieTitle?: string  // Tên tiếng Việt / Title
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
    let data: any = null;

    // BƯỚC 1: Thử Fetch trực tiếp theo Slug từ KKPHIM
    data = await fetchJSON(`https://phim.nguonc.com/api/film/${slug}`);

    // BƯỚC 2: Nếu Slug khác -> Dùng tên tiếng Anh đã làm sạch để Search
    if ((!data || data.status !== "success" || !data.movie) && movieName) {
      const keyword = cleanEnglishName(movieName);

      if (keyword) {
        const searchUrl = `https://phim.nguonc.com/api/film/search?keyword=${encodeURIComponent(keyword)}`;
        const searchJson = await fetchJSON(searchUrl);
        const items = searchJson?.items || searchJson?.data || searchJson?.data?.items || [];

        if (searchJson?.status === "success" && items.length > 0) {
          const targetKw = keyword.toLowerCase();

          // Lọc Exact Match 100% trước, nếu không có mới lấy phần tử đầu tiên
          let matchedItem = items.find((item: any) => {
            const origin = (item.original_name || "").toLowerCase();
            const name = (item.name || "").toLowerCase();
            return origin === targetKw || name === targetKw;
          });

          if (!matchedItem) matchedItem = items[0];

          if (matchedItem && matchedItem.slug) {
            data = await fetchJSON(`https://phim.nguonc.com/api/film/${matchedItem.slug}`);
          }
        }
      }
    }

    // BƯỚC 3 (TỪ KOTLIN): Fallback Tìm theo Tên tiếng Việt nếu Bước 1 & 2 thất bại
    if ((!data || data.status !== "success" || !data.movie) && movieTitle) {
      const cleanTitle = cleanVietnameseName(movieTitle);

      if (cleanTitle) {
        const searchUrl = `https://phim.nguonc.com/api/film/search?keyword=${encodeURIComponent(cleanTitle)}`;
        const searchJson = await fetchJSON(searchUrl);
        const items = searchJson?.items || searchJson?.data || searchJson?.data?.items || [];

        if (searchJson?.status === "success" && items.length > 0) {
          const targetTitle = cleanTitle.toLowerCase();

          let matchedItem = items.find((item: any) => {
            const name = (item.name || "").toLowerCase();
            return name === targetTitle;
          });

          if (!matchedItem) matchedItem = items[0];

          if (matchedItem && matchedItem.slug) {
            data = await fetchJSON(`https://phim.nguonc.com/api/film/${matchedItem.slug}`);
          }
        }
      }
    }

    // BƯỚC 4: Transform dữ liệu trả về theo format chuẩn + Chuẩn hóa Tên Server
    if (data && data.status === "success" && data.movie) {
      const m = data.movie;

      // 1. Tạo movieInfo dự phòng khớp chuẩn cấu trúc KKPhim
      const movieInfo = {
        name: m.name || m.original_name,
        origin_name: m.original_name || m.name,
        thumb: m.thumb_url || m.poster_url || "",
        poster: m.poster_url || m.thumb_url || "",
        content: m.description || m.content || "",
        quality: m.quality || "FHD",
        year: m.created ? new Date(m.created).getFullYear() : new Date().getFullYear(),
        category: m.category ? Object.values(m.category).map((c: any) => ({ name: c.name })) : [],
      };

      // 2. Transform Danh sách Server Video + Định dạng Tên Server (Đồng bộ với Kotlin)
      const rawEpisodes = m.episodes || data.episodes || [];
      const mappedServers = (Array.isArray(rawEpisodes) ? rawEpisodes : []).map((server: any) => {
        const rawName = server.server_name || server.displayName || 'Nguồn C';
        const formattedName = formatServerName(rawName);

        const episodeItems = server.items || server.episodeList || [];
        const episodes = episodeItems.map((item: any) => {
          const epName = item.name || '';
          const formattedEpName = epName.toLowerCase().includes('tập') ? epName : `Tập ${epName}`;

          return {
            episode_num: epName,
            name: formattedEpName,
            link: item.embed || item.streamUrl || '',
            link_m3u8: item.embed || item.streamUrl || '',
            isNguonc: true
          };
        }).filter((ep: any) => ep.link.length > 0);

        return {
          server_name: formattedName,
          isNguonc: true,
          episodes: episodes
        };
      }).filter((s: any) => s.episodes.length > 0);

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