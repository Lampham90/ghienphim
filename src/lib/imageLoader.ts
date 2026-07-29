// src/lib/imageLoader.ts

export default function imageLoader({ src, width, quality }: { src: string; width: number; quality?: number }) {
  if (!src) return "";

  if (src.startsWith('/') || src.startsWith('blob:') || src.includes('weserv.nl') || src.includes('wsrv.nl')) {
    return src;
  }

  const cleanSrc = src
    .replace(/https:\/\/i0\.wp\.com\//g, "")
    .replace(/https:\/\/(images\.)?weserv\.nl\/\?url=/g, "")
    .replace(/https:\/\/wsrv\.nl\/\?url=/g, "");

  const fullUrl = cleanSrc.startsWith('http://') || cleanSrc.startsWith('https://') 
    ? cleanSrc 
    : `https://${cleanSrc}`;

  const optimizedWidth = width > 1920 ? 1920 : width;
  const finalQuality = quality || 80;

  // Sử dụng images.weserv.nl thay vì wsrv.nl
  return `https://images.weserv.nl/?url=${encodeURIComponent(fullUrl)}&w=${optimizedWidth}&q=${finalQuality}&output=webp`;
}

export function getOptimizedImageUrl(src: string, width: number = 1920, quality: number = 80) {
  if (!src) return "";
  return imageLoader({ src, width, quality });
}