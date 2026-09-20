// src/lib/imageLoader.ts

/**
 * Loader tối ưu ảnh cho Next.js Image component
 * Chống lỗi vỡ hình và tăng tốc độ tải qua CDN WordPress
 */
export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Nếu là đường dẫn nội bộ (API proxy /api/...) thì trả về nguyên bản
  if (src.startsWith('/') || src.startsWith('blob:') || src.includes('i0.wp.com')) {
    return src;
  }

  // 2. Nếu là ảnh TMDB: TMDB đã có CDN Cloudflare toàn cầu cực nhanh và nét, trả về trực tiếp để tránh bị nén vỡ hình qua WordPress
  if (src.includes('image.tmdb.org')) {
    if (width > 780 && src.includes('/w780/')) {
      return src.replace('/w780/', '/original/');
    }
    return src;
  }

  // 3. Làm sạch URL gốc
  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  // 3. Tối ưu kích thước & chất lượng
  // Giảm chất lượng xuống 70 để cân bằng giữa độ nét và tốc độ tải (đặc biệt cho mobile)
  const finalQuality = quality || 70;

  // Giới hạn chiều rộng ảnh theo yêu cầu thực tế để giảm dung lượng
  let optimizedWidth = width;
  if (width <= 320) optimizedWidth = 320;
  else if (width <= 640) optimizedWidth = 640;
  else if (width <= 1080) optimizedWidth = 1080;
  else optimizedWidth = 1920;

  // 4. Tạo URL CDN (Sử dụng i0.wp.com là proxy miễn phí cực mạnh)
  const urlWithoutProtocol = cleanSrc.replace(/^https?:\/\//, "");

  // Thêm strip=all để xóa metadata ảnh, giảm thêm dung lượng
  return `https://i0.wp.com/${urlWithoutProtocol}?w=${optimizedWidth}&quality=${finalQuality}&strip=all&fmt=webp`;
}

/**
 * Hàm hỗ trợ lấy URL đã tối ưu cho các thẻ <img> truyền thống
 */
export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 70) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}