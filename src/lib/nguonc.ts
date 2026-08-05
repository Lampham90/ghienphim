// --- 1. Hàm làm sạch tiêu đề để trích xuất tên phim lõi ---
function cleanMovieTitle(title: string): { cleanTitle: string; englishName: string } {
  if (!title) return { cleanTitle: '', englishName: '' };

  let raw = title;

  // Tách tên tiếng Anh nếu có dạng: "Tên Việt (Phần 1) - Tên Anh (Season 1)"
  let englishName = '';
  if (raw.includes('-')) {
    const parts = raw.split('-');
    englishName = parts[parts.length - 1].trim(); // Thường tên Anh nằm sau dấu '-'
  }

  const clean = (text: string) => {
    return text
      .toLowerCase()
      .replace(/\[.*?\]/g, '')             // Xóa [FHD-Vietsub], [HD-Thuyết minh]...
      .replace(/\((19|20)\d{2}\)/g, '')     // Xóa năm dạng (2026), (2025)...
      .replace(/(\d+)(st|nd|rd|th)\s*season/gi, 'season $1') // 3rd season -> season 3
      .replace(/phần\s*(\d+)/gi, 'season $1')               // phần 3 -> season 3
      .replace(/[^\w\s]/gi, ' ')            // Xóa ký tự đặc biệt
      .replace(/\s+/g, ' ')                 // Thu gọn khoảng trắng
      .trim();
  };

  return {
    cleanTitle: clean(raw),
    englishName: clean(englishName || raw)
  };
}

// --- 2. Hàm tính điểm tương đồng đơn giản giữa 2 chuỗi ---
function calculateMatchScore(target: string, candidate: string): number {
  if (!target || !candidate) return 0;

  // Nếu khớp hoàn toàn
  if (target === candidate) return 100;

  // Nếu candidate chứa hoàn toàn target hoặc ngược lại
  if (candidate.includes(target) || target.includes(candidate)) return 80;

  // Tính số từ chung giữa 2 chuỗi
  const targetWords = new Set(target.split(' '));
  const candidateWords = new Set(candidate.split(' '));

  let shared = 0;
  targetWords.forEach(word => {
    if (word.length > 1 && candidateWords.has(word)) shared++;
  });

  return (shared / Math.max(targetWords.size, candidateWords.size)) * 100;
}

// --- 3. Hàm chính fetchNguoncDetail ---
export async function fetchNguoncDetail(slug: string, movieName?: string): Promise<any | null> {
  const fetchJSON = async (url: string) => {
    try {
      const res = await fetch(url, {
        method: 'GET',
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
          'Accept': 'application/json',
        },
        cache: 'no-store'
      });
      if (!res.ok) {
        console.error(`[NGUONC] HTTP Error ${res.status} for URL: ${url}`);
        return null;
      }
      return await res.json();
    } catch (e) {
      console.error(`[NGUONC] Fetch error (${url}):`, e);
      return null;
    }
  };

  try {
    // 1. Fetch trực tiếp API Nguonc theo Slug
    let data = await fetchJSON(`https://phim.nguonc.com/api/film/${slug}`);

    // 2. Fallback: Tìm kiếm thông minh nếu không thấy slug
    if ((!data || data.status !== "success" || !data.movie) && movieName) {
      const { cleanTitle, englishName } = cleanMovieTitle(movieName);

      // Thử search theo tên tiếng Anh đã làm sạch trước, nếu không có thì search theo tên thô
      const searchKeyword = englishName || cleanTitle || movieName;
      const searchUrl = `https://phim.nguonc.com/api/film/search?keyword=${encodeURIComponent(searchKeyword)}`;

      const searchJson = await fetchJSON(searchUrl);
      const items = searchJson?.items || searchJson?.data || searchJson?.data?.items || [];

      if (searchJson?.status === "success" && items.length > 0) {
        // Tìm item có điểm tương đồng cao nhất thay vì mặc định lấy items[0]
        let bestMatch = items[0];
        let highestScore = -1;

        for (const item of items) {
          const itemClean = cleanMovieTitle(item.name || item.original_name || '').cleanTitle;
          const score = Math.max(
            calculateMatchScore(englishName, itemClean),
            calculateMatchScore(cleanTitle, itemClean)
          );

          if (score > highestScore) {
            highestScore = score;
            bestMatch = item;
          }
        }

        if (bestMatch?.slug) {
          data = await fetchJSON(`https://phim.nguonc.com/api/film/${bestMatch.slug}`);
        }
      }
    }

    // 3. Chuẩn hóa dữ liệu trả về
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
    console.error("[NGUONC] Process error:", e);
  }
  return null;
}