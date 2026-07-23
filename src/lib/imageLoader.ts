// src/lib/imageLoader.ts

export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  // 1. Làm sạch URL: Xóa các proxy cũ nếu có
  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  // 2. Tối ưu kích thước: Cực kỳ quan trọng để giảm dung lượng tải
  // Ảnh PC chỉ cần tối đa 1920, Mobile chỉ cần 1080
  const optimizedWidth = width > 1920 ? 1920 : width;

  // 3. Sử dụng wsrv.nl (Proxy chuyên dụng, cực nhanh)
  // &output=webp: Ép định dạng WebP
  // &q=70: Giảm chất lượng xuống 70 (Mắt thường ko nhận ra nhưng dung lượng giảm 50%)
  // &il: Hiện ảnh kiểu mờ dần (Progressive), tạo cảm giác load nhanh hơn 2x
  // &af: Tự động lọc nhiễu
   return `https://i0.wp.com/${cleanUrl}?w=${width}&quality=${quality || 70}&strip=all&fmt=webp`;
}

export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 70) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}