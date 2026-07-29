// src/lib/imageLoader.ts

/**
 * Loader tối ưu ảnh cho Next.js Image component
 * Chống lỗi vỡ hình và tăng tốc độ tải qua CDN wsrv.nl (weserv)
 */
export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Nếu là đường dẫn nội bộ (API proxy /api/...) hoặc đã qua wsrv.nl thì giữ nguyên
  if (src.startsWith('/') || src.startsWith('blob:') || src.includes('wsrv.nl')) {
    return src;
  }

  // 2. Làm sạch URL gốc (xóa các CDN proxy cũ nếu có để tránh bị lồng nhau)
  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  // Bổ sung https:// nếu URL thiếu protocol (xử lý link i0.wp.com cũ bị mất https)
  const fullUrl = cleanSrc.startsWith('http://') || cleanSrc.startsWith('https://') 
    ? cleanSrc 
    : `https://${cleanSrc}`;

  // 3. Tối ưu kích thước và chất lượng ảnh
  const optimizedWidth = width > 1920 ? 1920 : width;
  const finalQuality = quality || 80;

  // 4. Trả về link đã tối ưu qua wsrv.nl (dùng encodeURIComponent để tránh lỗiURL chứa tham số)
  return `https://wsrv.nl/?url=${encodeURIComponent(fullUrl)}&w=${optimizedWidth}&q=${finalQuality}&output=webp`;
}

/**
 * Hàm hỗ trợ lấy URL đã tối ưu cho các thẻ <img> truyền thống
 */
export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 80) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}