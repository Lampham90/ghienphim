
/** 📱 MOBILE & TABLET OPTIMIZED VERSION */
export const runtime = 'edge';
import MovieDetailClient from './MovieDetailClient';
import { notFound } from 'next/navigation';
import { getImageUrl, fetchKKPhimDetail } from '@/lib/kkphim';
import { getOptimizedImageUrl } from '@/lib/imageLoader';

export default async function MovieDetailPage({ 
  params,
  searchParams 
}: { 
  params: Promise<{ slug: string }>,
  searchParams: Promise<{ poster?: string, thumb?: string }>
}) {
  const { slug } = await params;
  const { poster: previewPoster, thumb: previewThumb } = await searchParams;

  if (!slug || slug === 'undefined') return notFound();

  // 🚀 TẢI TRƯỚC DỮ LIỆU TỪ SERVER / EDGE: Loại bỏ hoàn toàn độ trễ client-side
  const initialMovie = await fetchKKPhimDetail(slug);

  return (
    <>
      {/* 💡 PRELOAD: Tải ảnh banner ngay lập tức với Proxy wsrv.nl */}
      {previewThumb && (
        <link
          rel="preload"
          as="image"
          media="(min-width: 768px)"
          imageSrcSet={`
            ${getOptimizedImageUrl(getImageUrl(previewThumb), 1280, 70)} 1280w,
            ${getOptimizedImageUrl(getImageUrl(previewThumb), 1920, 70)} 1920w
          `}
          imageSizes="(max-width: 1280px) 1280px, 1920px"
          fetchPriority="high"
        />
      )}

      {previewPoster && (
        <link
          rel="preload"
          as="image"
          media="(max-width: 767px)"
          imageSrcSet={`
            ${getOptimizedImageUrl(getImageUrl(previewPoster), 750, 70)} 750w,
            ${getOptimizedImageUrl(getImageUrl(previewPoster), 1080, 70)} 1080w
          `}
          imageSizes="100vw"
          fetchPriority="high"
        />
      )}

      <MovieDetailClient
        initialMovie={initialMovie}
        slug={slug}
      />
    </>
  );
}