// public/sw.js
const CACHE_NAME = 'movie-cache-v4';

self.addEventListener('install', (event) => {
  event.waitUntil(self.skipWaiting());
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((cacheNames) =>
      Promise.all(
        cacheNames
          .filter((cacheName) => cacheName !== CACHE_NAME)
          .map((cacheName) => caches.delete(cacheName))
      )
    )
  );
  event.waitUntil(self.clients.claim());
});

self.addEventListener('fetch', (event) => {
  const requestUrl = event.request.url;

  // ❌ KHÔNG chặn ảnh (Xử lý tất cả định dạng và các domain proxy đã dùng)
  // Việc 'return' ngay lập tức ép trình duyệt sử dụng Native Disk Cache của hệ điều hành.
  // Đây là cách duy nhất để duy trì trạng thái "from disk cache" chuẩn xác nhất.
  if (
    requestUrl.match(/\.(jpg|jpeg|png|gif|webp|avif|svg)$/) ||
    requestUrl.includes('wp.com') ||
    requestUrl.includes('statically.io') ||
    requestUrl.includes('wsrv.nl') ||
    requestUrl.includes('/_next/image')
  ) {
    return;
  }

});