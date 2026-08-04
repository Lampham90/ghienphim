// src/lib/nguonc.ts

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

    // 2. Fallback: Tìm kiếm theo tên phim nếu không thấy slug
    if ((!data || data.status !== "success" || !data.movie) && movieName) {
      const searchUrl = `https://phim.nguonc.com/api/film/search?keyword=${encodeURIComponent(movieName.trim())}`;
      const searchJson = await fetchJSON(searchUrl);

      const items = searchJson?.items || searchJson?.data || searchJson?.data?.items || [];
      if (searchJson?.status === "success" && items.length > 0 && items[0].slug) {
        data = await fetchJSON(`https://phim.nguonc.com/api/film/${items[0].slug}`);
      }
    }

    // 3. Chuẩn hóa dữ liệu (Lấy chính xác từ data.movie.episodes)
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