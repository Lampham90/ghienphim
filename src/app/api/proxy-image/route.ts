import { type NextRequest } from 'next/server';
import { PhotonImage, SamplingFilter, resize } from '@cf-wasm/photon/edge-light';

// Route chạy trên Cloudflare Pages (next-on-pages) -> bắt buộc edge runtime.
// sharp không dùng được ở đây vì là native binding, không chạy trong Workers
// isolate. @cf-wasm/photon là WASM (photon-rs) nên chạy được trên edge runtime
// của Cloudflare, dùng để resize + encode webp thay cho wsrv.nl trước đây.
export const runtime = 'edge';

// Chỉ cho phép proxy các domain ảnh hợp lệ của app (tránh trở thành open proxy / SSRF)
const ALLOWED_HOSTS = [
  'phimimg.com',
  'image.tmdb.org',
];

// 1x1 transparent PNG - trả về khi không tải/xử lý được ảnh, để UI không hiện icon vỡ ảnh
const FALLBACK_PIXEL = Uint8Array.from(atob(
  'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII='
), (c) => c.charCodeAt(0));

function isAllowedHost(hostname: string) {
  return ALLOWED_HOSTS.some((h) => hostname === h || hostname.endsWith(`.${h}`));
}

// Referer hợp lệ theo từng nguồn ảnh. Trước đây route này hard-code Referer
// của TMDB cho MỌI ảnh (kể cả ảnh phimimg.com), khiến phimimg.com từ chối
// request (referer không khớp domain) -> wsrv.nl tải lại ảnh từ route này
// (hoặc trực tiếp) đều nhận 400. Giờ referer được chọn đúng theo host đích,
// và với các host không rõ thì không gửi Referer (an toàn hơn referer sai).
function getRefererFor(hostname: string) {
  if (hostname.endsWith('tmdb.org')) return 'https://www.themoviedb.org/';
  if (hostname.endsWith('phimimg.com')) return 'https://phimimg.com/';
  return undefined;
}

async function fetchImage(imageUrl: string, useReferer: boolean) {
  const target = new URL(imageUrl);
  const headers: Record<string, string> = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36',
    'Accept': 'image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8',
  };
  const referer = useReferer ? getRefererFor(target.hostname) : undefined;
  if (referer) headers['Referer'] = referer;

  return fetch(imageUrl, {
    headers,
    // Cache ảnh lâu dài trên Edge Network của Cloudflare
    next: { revalidate: 31536000 },
  });
}

// Giới hạn chặt width nhận từ query (Workers có memory cap ~128MB, ảnh to +
// resize tốn RAM có thể làm worker bị kill) để tránh bị lợi dụng làm bomb.
function parseWidth(raw: string | null): number | undefined {
  const n = Number(raw);
  if (!raw || !Number.isFinite(n) || n <= 0) return undefined;
  return Math.min(Math.round(n), 1920);
}

export async function GET(req: NextRequest) {
  const imageUrl = req.nextUrl.searchParams.get('url');
  if (!imageUrl || !imageUrl.startsWith('http')) {
    return new Response('Invalid URL', { status: 400 });
  }

  let target: URL;
  try {
    target = new URL(imageUrl);
  } catch {
    return new Response('Invalid URL', { status: 400 });
  }

  if (!isAllowedHost(target.hostname)) {
    return new Response('Host not allowed', { status: 403 });
  }

  const width = parseWidth(req.nextUrl.searchParams.get('w'));

  let inputImage: PhotonImage | undefined;
  let outputImage: PhotonImage | undefined;

  try {
    // Thử với Referer phù hợp trước, nếu thất bại thử lại không kèm Referer
    // (một số CDN chặn khi có referer lạ, số khác chặn khi referer trống —
    // fallback này giúp bao quát cả hai trường hợp thay vì hard-code 1 kiểu).
    let response = await fetchImage(imageUrl, true);
    if (!response.ok) {
      response = await fetchImage(imageUrl, false);
    }

    if (!response.ok) throw new Error(`Upstream responded with ${response.status}`);

    const inputBytes = new Uint8Array(await response.arrayBuffer());

    // Resize (nếu có w) + encode sang webp bằng photon (WASM, chạy được trên
    // Cloudflare edge runtime) — giữ hành vi tối ưu ảnh giống wsrv.nl trước
    // đây (resize + convert webp + cache 1 năm).
    inputImage = PhotonImage.new_from_byteslice(inputBytes);

    let finalImage = inputImage;
    if (width && width < inputImage.get_width()) {
      const ratio = width / inputImage.get_width();
      const targetHeight = Math.max(1, Math.round(inputImage.get_height() * ratio));
      outputImage = resize(inputImage, width, targetHeight, SamplingFilter.Lanczos3);
      finalImage = outputImage;
    }

    const webpBytes = finalImage.get_bytes_webp();

    return new Response(webpBytes, {
      headers: {
        'Content-Type': 'image/webp',
        'Cache-Control': 'public, max-age=31536000, immutable',
        'Access-Control-Allow-Origin': '*',
      },
    });
  } catch (error) {
    console.error('Proxy Image Error:', imageUrl, error);
    // Trả về pixel trong suốt thay vì lỗi cứng, để <Image> không hiện icon vỡ ảnh
    return new Response(FALLBACK_PIXEL, {
      status: 200,
      headers: {
        'Content-Type': 'image/png',
        'Cache-Control': 'public, max-age=60',
        'Access-Control-Allow-Origin': '*',
      },
    });
  } finally {
    // photon dùng WASM linear memory -> phải free() thủ công, không có GC tự động
    inputImage?.free();
    outputImage?.free();
  }
}
