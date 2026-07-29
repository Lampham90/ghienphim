// src/lib/imageLoader.ts

/**
 * Loader tối ưu ảnh cho Next.js Image component
 * Chống lỗi vỡ hình và tăng tốc độ tải qua CDN WordPress
 */
export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Nếu là đường dẫn nội bộ (API proxy /api/...) thì trả về nguyên bản
  // Không được đưa qua CDN vì CDN không truy cập được link localhost/internal
  if (src.startsWith('/') || src.startsWith('blob:') || src.includes('i0.wp.com')) {
    return src;
  }

  // 2. Làm sạch URL gốc (xóa các proxy cũ nếu có để tránh lồng nhau)
  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  // 3. Tối ưu kích thước (không nên quá lớn để tiết kiệm băng thông)
  const optimizedWidth = width > 1920 ? 1920 : width;
  const finalQuality = quality || 80;

  // 4. Tạo URL CDN (Sử dụng i0.wp.com là proxy miễn phí cực mạnh)
  // Loại bỏ protocol (http/https) khỏi src để ghép vào link CDN
  const urlWithoutProtocol = cleanSrc.replace(/^https?:\/\//, "");

  // Trả về link đã được tối ưu
  return `https://i0.wp.com/${urlWithoutProtocol}?w=${optimizedWidth}&quality=${finalQuality}&strip=all&fmt=webp`;
}

/**
 * Hàm hỗ trợ lấy URL đã tối ưu cho các thẻ <img> truyền thống
 */
export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 80) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}