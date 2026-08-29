export const runtime = 'edge';

const TMDB_API_KEY = 'b81e7ce8a6c68dbea801f221b220302c';

const getCleanName = (name: string) =>
  name
    .split(/\s+[:\-(\[]?\s*(phần|season|ss|part|tập|chapter|movie|ova|special|p|s)\s+\d+/i)[0]
    .replace(/\s+[:\-(\[]?\s*\d+\s*(:.*)?$/, "")
    .replace(/\s+(X|IX|IV|V?I{1,3})$/i, "")
    .replace(/[:\-\(\[\]\)]+$/, "")
    .trim();

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  let tmdbId = searchParams.get('id');
  let imdbId = searchParams.get('imdbId');
  let type = searchParams.get('type') || 'movie';
  const query = searchParams.get('query');

  let foundId = (tmdbId && tmdbId !== '0' && tmdbId !== 'undefined') ? tmdbId : null;
  let foundType = type;

  // 1. ƯU TIÊN 1: IMDB ID (nếu có)
  if (!foundId && imdbId && imdbId.startsWith('tt')) {
    try {
      const findRes = await fetch(
        `https://api.themoviedb.org/3/find/${imdbId}?api_key=${TMDB_API_KEY}&external_source=imdb_id`,
        { next: { revalidate: 86400 } }
      );
      const findData = await findRes.json();
      const result = (findData.movie_results?.[0] || findData.tv_results?.[0]);
      if (result) {
        foundId = result.id.toString();
        foundType = findData.movie_results?.[0] ? 'movie' : 'tv';
      }
    } catch (e) {}
  }

  // 2. ƯU TIÊN 2: TÌM KIẾM THEO TÊN (Lọc chính xác 100%)
  if (!foundId && query) {
    try {
      const cleanedQuery = getCleanName(query).toLowerCase();
      const searchRes = await fetch(
        `https://api.themoviedb.org/3/search/multi?api_key=${TMDB_API_KEY}&query=${encodeURIComponent(cleanedQuery)}&language=vi`,
        { next: { revalidate: 86400 } }
      );
      const searchData = await searchRes.json();

      if (searchData.results && searchData.results.length > 0) {
        // Lọc kết quả trùng khớp 100% tên (name hoặc original_name)
        const exactMatch = searchData.results.find((item: any) => {
          if (item.media_type !== 'movie' && item.media_type !== 'tv') return false;
          const name = (item.name || "").toLowerCase();
          const title = (item.title || "").toLowerCase();
          const originalName = (item.original_name || "").toLowerCase();
          const originalTitle = (item.original_title || "").toLowerCase();

          return name === cleanedQuery ||
                 title === cleanedQuery ||
                 originalName === cleanedQuery ||
                 originalTitle === cleanedQuery;
        });

        if (exactMatch) {
          foundId = exactMatch.id.toString();
          foundType = exactMatch.media_type;
        }
      }
    } catch (e) {}
  }

  // Nếu không tìm thấy ID nào hoặc ID không hợp lệ, trả về null để Frontend dùng KKPhim
  if (!foundId || foundId === '0' || foundId === 'undefined') {
    return new Response(JSON.stringify({ logoUrl: null, backdropUrl: null, posterUrl: null }), {
      status: 200,
      headers: { 'Content-Type': 'application/json' }
    });
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/${foundType}/${foundId}/images?api_key=${TMDB_API_KEY}&include_image_language=vi,en,null`,
      { next: { revalidate: 86400 } }
    );

    if (!response.ok) {
      return new Response(JSON.stringify({ logoUrl: null, backdropUrl: null, posterUrl: null }), { status: 200 });
    }

    const data = await response.json();
    const logos = data.logos || [];
    const backdrops = data.backdrops || [];
    const posters = data.posters || [];

    const bestLogo =
      logos.find((l: any) => l.iso_639_1 === 'vi') ||
      logos.find((l: any) => l.iso_639_1 === 'en') ||
      logos.find((l: any) => l.iso_639_1 === null) ||
      logos[0];

    const bestBackdrop = backdrops[0];
    const bestPoster = posters[0];

    return new Response(JSON.stringify({
      logoUrl: bestLogo ? `https://image.tmdb.org/t/p/original${bestLogo.file_path}` : null,
      backdropUrl: bestBackdrop ? `https://image.tmdb.org/t/p/original${bestBackdrop.file_path}` : null,
      posterUrl: bestPoster ? `https://image.tmdb.org/t/p/original${bestPoster.file_path}` : null,
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