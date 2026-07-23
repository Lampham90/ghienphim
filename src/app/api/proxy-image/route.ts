import { NextRequest } from 'next/server';

export const runtime = 'edge';

export async function GET(req: NextRequest) {
  const imageUrl = req.nextUrl.searchParams.get('url');
  if (!imageUrl || !imageUrl.startsWith('http')) {
    return new Response('Invalid URL', { status: 400 });
  }

  try {
    // Tải ảnh từ Server-side để tránh bị chặn ISP tại Việt Nam
    const response = await fetch(imageUrl, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36',
        'Accept': 'image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8',
        'Referer': 'https://www.themoviedb.org/',
      },
      // Cache ảnh lâu dài trên Edge Network của Cloudflare
      next: { revalidate: 31536000 }
    });

    if (!response.ok) throw new Error(`TMDB responded with ${response.status}`);

    const buffer = await response.arrayBuffer();
    const contentType = response.headers.get('content-type') || 'image/jpeg';

    return new Response(buffer, {
      headers: {
        'Content-Type': contentType,
        'Cache-Control': 'public, max-age=31536000, immutable',
        'Access-Control-Allow-Origin': '*',
      },
    });
  } catch (error) {
    console.error('Proxy Image Error:', error);
    return new Response('Error loading image', { status: 500 });
  }
}
