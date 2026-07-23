// src/lib/imageLoader.ts

export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Làm sạch URL: Xóa các proxy cũ nếu có (kể cả proxy nội bộ, tránh lồng proxy)
  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "")
    .replace(/^\/api\/proxy-image\?url=/g, "");

  // 2. Tối ưu kích thước: Cực kỳ quan trọng để giảm dung lượng tải
  // Ảnh PC chỉ cần tối đa 1920, Mobile chỉ cần 1080
  const optimizedWidth = width > 1920 ? 1920 : width;

  // 3. NOTE (2026-07): wsrv.nl (weserv) bị nguồn ảnh phimimg.com chặn khi
  // wsrv cố tải ảnh gốc (hotlink/anti-bot), nên wsrv trả về 400 Bad Request
  // cho MỌI ảnh -> toàn bộ ảnh không hiển thị. Do đó ta chuyển sang tự
  // fetch ảnh server-side qua route nội bộ /api/proxy-image (route này gắn
  // User-Agent + Referer hợp lệ để né chặn), thay vì phụ thuộc wsrv.nl.
  const absoluteSrc = cleanSrc.startsWith("http") ? cleanSrc : `https://phimimg.com/${cleanSrc.replace(/^\//, "")}`;

  return `/api/proxy-image?url=${encodeURIComponent(absoluteSrc)}&w=${optimizedWidth}&q=${quality || 70}`;
}

export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 70) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}