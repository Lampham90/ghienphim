export const runtime = 'edge';

const TMDB_API_KEY = 'b81e7ce8a6c68dbea801f221b220302c';

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  let tmdbId = searchParams.get('id');
  let type = searchParams.get('type') || 'movie';
  const query = searchParams.get('query'); // Nhận thêm tên phim để search dự phòng

  // 1. TỰ ĐỘNG SEARCH TMDB NẾU THIẾU ID (Giải quyết lỗi Trang Chủ không có logo/ảnh)
  if ((!tmdbId || tmdbId === '0' || tmdbId === 'undefined') && query) {
    try {
      const searchRes = await fetch(
        `https://api.themoviedb.org/3/search/multi?api_key=${TMDB_API_KEY}&query=${encodeURIComponent(query)}&language=vi`,
        { next: { revalidate: 86400 } }
      );
      const searchData = await searchRes.json();
      if (searchData.results && searchData.results.length > 0) {
        // Lấy ID của kết quả tìm kiếm trùng khớp nhất
        tmdbId = searchData.results[0].id.toString();
        type = searchData.results[0].media_type || type; // cập nhật lại type (movie/tv)
      }
    } catch (e) {
      console.error("Lỗi search TMDB fallback:", e);
    }
  }

  // Nếu vẫn không tìm được ID nào thì báo lỗi
  if (!tmdbId || tmdbId === '0' || tmdbId === 'undefined') {
    return new Response(JSON.stringify({ logoUrl: null, backdropUrl: null, posterUrl: null }), { status: 200 });
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/${type}/${tmdbId}/images?api_key=${TMDB_API_KEY}&include_image_language=vi,en,null`,
      {
        next: { revalidate: 86400 }
      }
    );

    if (!response.ok) {
      return new Response(JSON.stringify({ error: 'Failed to fetch images' }), { status: response.status });
    }

    const data = await response.json();
    const logos = data.logos || [];
    const backdrops = data.backdrops || [];
    const posters = data.posters || [];

    // 1. Ưu tiên logo tiếng Việt (vi) -> tiếng Anh (en) -> không ngôn ngữ (null) -> logo đầu tiên
    const bestLogo =
      logos.find((l: any) => l.iso_639_1 === 'vi') ||
      logos.find((l: any) => l.iso_639_1 === 'en') ||
      logos.find((l: any) => l.iso_639_1 === null) ||
      logos[0];

    // 2. Lấy ảnh backdrop chất lượng nhất cho Banner PC
    const bestBackdrop = backdrops[0];

    // 3. Lấy ảnh poster chất lượng nhất cho Banner Mobile
    const bestPoster = posters[0];

    const logoUrl = bestLogo ? `https://image.tmdb.org/t/p/original${bestLogo.file_path}` : null;
    const backdropUrl = bestBackdrop ? `https://image.tmdb.org/t/p/original${bestBackdrop.file_path}` : null;
    const posterUrl = bestPoster ? `https://image.tmdb.org/t/p/original${bestPoster.file_path}` : null;

    return new Response(JSON.stringify({
      logoUrl,
      backdropUrl,
      posterUrl,
      aspectRatio: bestLogo?.aspect_ratio || null
    }), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=86400, s-maxage=86400'
      }
    });
  } catch (e) {
    return new Response(JSON.stringify({ error: 'Internal Server Error' }), { status: 500 });
  }
}