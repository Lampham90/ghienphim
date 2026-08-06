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
   // BƯỚC 2: Nếu Slug khác nhau -> Dùng tên tiếng Anh đã làm sạch để Search
    if ((!data || data.status !== "success" || !data.movie) && movieName) {
      const keyword = cleanEnglishName(movieName);

      if (keyword) {
        const searchUrl = `https://phim.nguonc.com/api/film/search?keyword=${encodeURIComponent(keyword)}`;
        const searchJson = await fetchJSON(searchUrl);
        const items = searchJson?.items || searchJson?.data || searchJson?.data?.items || [];

        if (searchJson?.status === "success" && items.length > 0) {
          // SỬA LỖI TẠI ĐÂY: Tìm khớp chính xác 100% (exact match) thay vì bốc items[0]
          const targetKw = keyword.toLowerCase();
          const exactMatch = items.find((item: any) => {
            const origin = (item.original_name || "").toLowerCase();
            const name = (item.name || "").toLowerCase();
            return origin === targetKw || name === targetKw;
          });

          // Chỉ lấy slug đi fetch chi tiết nếu tìm thấy chính xác bộ phim đó
          if (exactMatch && exactMatch.slug) {
            data = await fetchJSON(`https://phim.nguonc.com/api/film/${exactMatch.slug}`);
          }
        }
      }
    }