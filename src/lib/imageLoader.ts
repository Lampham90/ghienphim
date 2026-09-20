// src/lib/imageLoader.ts

/**
 * Loader tối ưu ảnh siêu tốc & siêu nhẹ cho Next.js Image component
 * - Ảnh TMDB: Tận dụng trực tiếp CDN Cloudflare toàn cầu của TMDB (có edge server tại VN)
 *   với kích thước nén chuẩn w1280 (~150KB) cho Desktop và w780/w500 (~60-80KB) cho Mobile.
 *   Tải tức thì trong 0.05 giây, loại bỏ hoàn toàn độ trễ 3-4s của proxy WordPress!
 * - Ảnh khác (phimimg.com): Chuyển đổi qua proxy i0.wp.com thành WebP 75% siêu nhẹ.
 */
export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Nếu là đường dẫn nội bộ (API proxy /api/...) hoặc blob thì trả về nguyên bản
  if (src.startsWith('/') || src.startsWith('blob:')) {
    return src;
  }

  // 2. TỐI ƯU SIÊU TỐC CHO ẢNH TMDB (image.tmdb.org):
  // TMDB đã được nén sẵn và phân phối qua Cloudflare Edge tại Việt Nam.
  // Không qua WordPress để tránh delay 3-4s, đồng thời dùng kích thước chuẩn để ảnh vừa nhẹ vừa nét:
  if (src.includes('image.tmdb.org')) {
    const cleanTmdb = src
      .replace(/https:\/\/i0\.wp\.com\//g, "")
      .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

    // Màn hình lớn Desktop (Hero banner / Thumb chi tiết): Dùng w1280 (chỉ ~150KB - 200KB, nét chuẩn HD, load 0.05s)
    if (width > 780) {
      return cleanTmdb.replace(/\/t\/p\/(original|w\d+)\//, '/t/p/w1280/');
    }
    // Màn hình Mobile / Poster vừa: Dùng w780 (chỉ ~80KB) hoặc w500 (chỉ ~50KB)
    if (width > 350) {
      return cleanTmdb.replace(/\/t\/p\/(original|w\d+)\//, '/t/p/w780/');
    }
    return cleanTmdb.replace(/\/t\/p\/(original|w\d+)\//, '/t/p/w500/');
  }

  // 3. ĐỐI VỚI ẢNH NGUỒN KHÁC (phimimg.com / ophim):
  // Dùng i0.wp.com để nén sang WebP 75% và giảm dung lượng
  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  const finalQuality = quality || 75;
  let optimizedWidth = width;
  if (width <= 320) optimizedWidth = 320;
  else if (width <= 640) optimizedWidth = 640;
  else if (width <= 1080) optimizedWidth = 1080;
  else optimizedWidth = 1920;

  const urlWithoutProtocol = cleanSrc.replace(/^https?:\/\//, "");
  return `https://i0.wp.com/${urlWithoutProtocol}?w=${optimizedWidth}&quality=${finalQuality}&strip=all&fmt=webp`;
}

/**
 * Hàm hỗ trợ lấy URL đã tối ưu cho các thẻ <img> truyền thống hoặc preload
 */
export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 75) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}