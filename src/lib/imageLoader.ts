// src/lib/imageLoader.ts

/**
 * Loader tối ưu ảnh cho Next.js Image component
 * Chuyển đổi WebP qua CDN WordPress (i0.wp.com) với quality 75%
 * Giúp ảnh siêu nhẹ (từ 1-2MB xuống chỉ ~80-150KB), load cực nhanh trên mạng yếu mà vẫn giữ độ nét cao
 */
export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Nếu là đường dẫn nội bộ (API proxy /api/...) hoặc blob thì trả về nguyên bản
  if (src.startsWith('/') || src.startsWith('blob:')) {
    return src;
  }

  // 2. Làm sạch URL gốc nếu đã có CDN trước đó
  let cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  // Nếu là ảnh TMDB, đảm bảo lấy từ nguồn gốc /original/ để WordPress nén từ ảnh nét nhất (không lấy w780 bị vỡ)
  if (cleanSrc.includes('image.tmdb.org')) {
    cleanSrc = cleanSrc.replace(/\/w\d+\//, '/original/');
  }

  // 3. Tối ưu kích thước & chất lượng: Mặc định WebP 75% theo yêu cầu
  const finalQuality = quality || 75;

  // Giới hạn chiều rộng ảnh theo kích thước thiết bị để giảm tối đa dung lượng
  let optimizedWidth = width;
  if (width <= 320) optimizedWidth = 320;
  else if (width <= 640) optimizedWidth = 640;
  else if (width <= 1080) optimizedWidth = 1080;
  else optimizedWidth = 1920;

  // 4. Tạo URL CDN qua i0.wp.com để chuyển đổi định dạng sang WebP 75% và xóa metadata (strip=all)
  const urlWithoutProtocol = cleanSrc.replace(/^https?:\/\//, "");

  return `https://i0.wp.com/${urlWithoutProtocol}?w=${optimizedWidth}&quality=${finalQuality}&strip=all&fmt=webp`;
}

/**
 * Hàm hỗ trợ lấy URL đã tối ưu cho các thẻ <img> truyền thống
 */
export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 75) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}