
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
      {/* 💡 PRELOAD: Tải ảnh banner ngay lập tức với CDN Cloudflare / WebP */}
      {previewThumb && (
        <link
          rel="preload"
          as="image"
          media="(min-width: 768px)"
          href={getOptimizedImageUrl(previewThumb, 1280, 75)}
          fetchPriority="high"
        />
      )}

      {previewPoster && (
        <link
          rel="preload"
          as="image"
          media="(max-width: 767px)"
          href={getOptimizedImageUrl(previewPoster, 780, 75)}
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