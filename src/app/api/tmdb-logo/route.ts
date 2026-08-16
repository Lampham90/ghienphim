export const runtime = 'edge';

const TMDB_API_KEY = 'b81e7ce8a6c68dbea801f221b220302c';

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const tmdbId = searchParams.get('id');
  const type = searchParams.get('type') || 'movie'; // 'movie' hoặc 'tv'

  if (!tmdbId || tmdbId === '0') {
    return new Response(JSON.stringify({ error: 'Missing TMDB ID' }), { status: 400 });
  }

  try {
    // Thêm include_image_language=vi,en,null để đảm bảo TMDB trả về logo tiếng Việt nếu có
    const response = await fetch(
      `https://api.themoviedb.org/3/${type}/${tmdbId}/images?api_key=${TMDB_API_KEY}&include_image_language=vi,en,null`,
      {
        next: { revalidate: 86400 } // Cache 24h
      }
    );

    if (!response.ok) {
      return new Response(JSON.stringify({ error: 'Failed to fetch images' }), { status: response.status });
    }

    const data = await response.json();
    const logos = data.logos || [];

    // Ưu tiên logo tiếng Việt (vi), sau đó là tiếng Anh (en), sau đó là không có ngôn ngữ (null)
    const bestLogo =
      logos.find((l: any) => l.iso_639_1 === 'vi') ||
      logos.find((l: any) => l.iso_639_1 === 'en') ||
      logos.find((l: any) => l.iso_639_1 === null) ||
      logos[0];

    if (!bestLogo) {
      return new Response(JSON.stringify({ logoUrl: null }), { status: 200 });
    }

    // Trả về đường dẫn ảnh gốc (thường là .png không nền)
    const logoUrl = `https://image.tmdb.org/t/p/original${bestLogo.file_path}`;

    return new Response(JSON.stringify({
      logoUrl,
      aspectRatio: bestLogo.aspect_ratio
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
