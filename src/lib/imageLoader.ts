// src/lib/imageLoader.ts

export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Nếu là đường dẫn nội bộ (API proxy) hoặc đã là link wp.com thì giữ nguyên
  if (src.startsWith('/') || src.includes('i0.wp.com')) {
    return src;
  }

  // 2. Làm sạch URL: Xóa các proxy cũ nếu có
  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  // 3. Tối ưu kích thước
  const optimizedWidth = width > 1920 ? 1920 : width;

  // 4. Sử dụng wp.com proxy (CDN cực mạnh, miễn phí)
  // Xóa protocol để đưa vào path của i0.wp.com
  const cleanUrl = cleanSrc.replace(/^https?:\/\//, "");

  return `https://i0.wp.com/${cleanUrl}?w=${optimizedWidth}&quality=${quality || 70}&strip=all&fmt=webp`;
}

export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 70) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}