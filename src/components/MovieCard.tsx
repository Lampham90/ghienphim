"use client";
import React, { memo, useState } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import MovieBadge from '@/components/MovieBadge'; 
import { type KKPhimMovie, getImageUrl } from '@/lib/kkphim';
import imageLoader from '@/lib/imageLoader';

interface MovieCardProps {
  movie: KKPhimMovie | any;
  variant?: 'vertical' | 'horizontal' | 'ranked1' | 'ranked2' | 'ranked3';
  index?: number;
  priority?: boolean;
  isDragging?: boolean;
}

const MovieCard = memo(({ movie, variant = 'vertical', index = 0, priority = false, isDragging = false }: MovieCardProps) => {
  const [imgError, setImgError] = useState(false);
  const isHorizontal = variant === 'horizontal';
  const isRanked1 = variant === 'ranked1';
  const isRanked3 = variant === 'ranked3';

  const floatingEffect = "transition-[transform,box-shadow] duration-300 ease-out transform-gpu group-hover:-translate-y-2 group-hover:shadow-[0_10px_20px_rgba(220,38,38,0.4)] group-hover:z-50";
  const imageZoomEffect = "transition-transform duration-500 ease-out transform-gpu group-hover:scale-105";

  const rawPoster = getImageUrl(movie.poster_url || movie.poster);
  const rawThumb = getImageUrl(movie.thumb_url || movie.thumb);

  const fallbackImg = "https://phimimg.com/upload/poster/dang-cap-nhat.jpg";
  const computedPriority = priority && (index ?? 0) < 3;

  // ✅ 1. KIỂU POSTER NGANG (Thumbnail)
  if (isHorizontal) {
    return (
      <div className={`min-w-[240px] md:min-w-[320px] snap-start group relative flex flex-col pt-4 ${isDragging ? 'pointer-events-none' : ''}`}>
        <Link href={`/phim/${movie.slug}?poster=${encodeURIComponent(rawPoster)}&thumb=${encodeURIComponent(rawThumb)}`} 
          className={`relative aspect-video w-full rounded-2xl overflow-hidden border border-white/5 bg-[#121212] ${floatingEffect}`} draggable={false}>
          <Image 
            loader={imageLoader}
            src={imgError ? fallbackImg : (rawThumb || fallbackImg)}
            alt={movie.name} 
            fill 
            sizes="(max-width: 768px) 250px, 320px"
            quality={45}
            decoding="async"
            referrerPolicy="no-referrer"
            className={`object-cover ${imageZoomEffect}`} 
            priority={computedPriority}
            draggable={false} 
            onError={() => setImgError(true)}
          />
          <MovieBadge movie={movie} />
          <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent opacity-60" />
        </Link>
        <div className="mt-4 px-1"><h3 className="text-[12px] font-black uppercase text-white/90 group-hover:text-red-500 transition-colors line-clamp-1 italic">{movie.name}</h3></div>
      </div>
    );
  }

  // ✅ 2. KIỂU RANKED & DỌC (NÂNG CẤP KÍCH THƯỚC TO HƠN NỮA)
  const isSpecial = isRanked1 || isRanked3;
  const isRanked3Variant = variant === 'ranked3';
  const isEven = index % 2 === 0;

  // Tăng min-w cực mạnh cho các hàng Ranked (isSpecial)
  const containerClass = isSpecial
    ? 'min-w-[220px] md:min-w-[calc(100%/3.5)]' // To hơn nữa theo yêu cầu
    : 'min-w-[160px] md:min-w-[calc(100%/7)]';

  const maskPath = !isEven ? `M 0,40 Q 0,25 15,25 L 190,0 Q 200,0 200,10 L 200,300 Q 200,310 190,310 L 10,310 Q 0,310 0,300 Z` : `M 10,0 Q 0,0 0,10 L 0,300 Q 0,310 10,310 L 190,310 Q 200,310 200,300 L 200,40 Q 200,25 185,25 L 10,0 Z`;
  const svgMask = isRanked3Variant ? `url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 310'><path d='${maskPath}' fill='black'/></svg>")` : undefined;

  return (
    <div className={`${containerClass} snap-start group relative flex flex-col items-center pt-4 ${isDragging ? 'pointer-events-none' : ''}`}>
      <Link href={`/phim/${movie.slug}?poster=${encodeURIComponent(rawPoster)}&thumb=${encodeURIComponent(rawThumb)}`} 
        className={`relative aspect-[2/3] w-full ${!isRanked3Variant ? 'rounded-[1.5rem] md:rounded-[2.5rem]' : ''} overflow-hidden border border-white/5 bg-[#121212] ${floatingEffect}`}
        style={svgMask ? { WebkitMaskImage: svgMask, maskImage: svgMask, WebkitMaskSize: '100% 100%', maskSize: '100% 100%', maskRepeat: 'no-repeat' } : {}}
        draggable={false}>
        <Image 
          loader={imageLoader}
          src={imgError ? fallbackImg : (rawPoster || fallbackImg)}
          alt={movie.name} 
          fill 
          sizes="(max-width: 768px) 220px, 450px"
          quality={50}
          decoding="async"
          referrerPolicy="no-referrer"
          className={`object-cover ${imageZoomEffect}`} 
          priority={computedPriority}
          draggable={false}
          onError={() => setImgError(true)}
        />
        <MovieBadge movie={movie} variant={variant} />
      </Link>

      <div className={`mt-5 px-2 ${isSpecial ? 'w-full text-left' : 'w-full text-center'}`}>
        {isSpecial ? (
          <div className="mt-1 flex gap-5 items-start pr-2">
            {/* Con số cực to */}
            <span className="text-[55px] md:text-[90px] font-black italic leading-[0.7] text-red-600 transition-transform drop-shadow-[0_4px_15px_rgba(220,38,38,0.4)]">
              {index + 1}
            </span>
            <div className="flex flex-col pt-2 w-full">
              <h3 className="text-[13px] md:text-[16px] font-black uppercase text-white/90 group-hover:text-red-600 italic transition-colors leading-tight line-clamp-2">
                {movie.name}
              </h3>
              <p className="text-[11px] font-bold text-white/30 uppercase mt-2 italic tracking-widest">
                {movie.country}
              </p>
            </div>
          </div>
        ) : (
          <h3 className="text-[10px] font-black uppercase text-white/80 group-hover:text-red-500 transition-colors italic line-clamp-2 leading-tight">
            {movie.name}
          </h3>
        )}
      </div>
    </div>
  );
});

MovieCard.displayName = 'MovieCard';
export default MovieCard;