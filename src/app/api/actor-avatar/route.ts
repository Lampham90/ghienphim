export const runtime = 'edge';

// 💡 Proxy ảnh diễn viên: worker (Cloudflare Pages Edge) tải ảnh từ image.tmdb.org
// rồi trả thẳng byte ảnh về cho client (app/web). Client (bị chặn TMDB) chỉ cần
// gọi domain của chính mình, không bao giờ kết nối trực tiếp tới TMDB.
export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const path = searchParams.get('path') || '';
  const size = searchParams.get('size') || 'w185';

  // Chỉ chấp nhận path dạng "/xxxxxxxx.jpg" để tránh bị lợi dụng làm proxy chung
  if (!path || !/^\/[a-zA-Z0-9]+\.(jpg|jpeg|png|webp)$/i.test(path)) {
    return new Response('Invalid path', { status: 400 });
  }

  const allowedSizes = ['w45', 'w92', 'w154', 'w185', 'w300', 'w500', 'h632', 'original'];
  const safeSize = allowedSizes.includes(size) ? size : 'w185';

  try {
    const upstream = await fetch(`https://image.tmdb.org/t/p/${safeSize}${path}`, {
      headers: { 'User-Agent': 'Mozilla/5.0 (compatible; GhienPhimBot/1.0)' },
      cf: { cacheTtl: 2592000, cacheEverything: true } as any
    });

    if (!upstream.ok || !upstream.body) {
      return new Response('Not found', { status: 404 });
    }

    return new Response(upstream.body, {
      status: 200,
      headers: {
        'Content-Type': upstream.headers.get('Content-Type') || 'image/jpeg',
        'Cache-Control': 'public, max-age=2592000, immutable'
      }
    });
  } catch (e) {
    return new Response('Error fetching image', { status: 502 });
  }
}
