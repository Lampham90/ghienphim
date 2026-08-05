// @/components/MovieBadge.tsx
import React, { memo } from 'react';
import type { KKPhimMovie } from '@/lib/kkphim';

interface MovieBadgeProps {
  movie: KKPhimMovie | any;
  variant?: 'vertical' | 'horizontal' | 'ranked1' | 'ranked2' | 'ranked3';
}

const MovieBadge = memo(({ movie, variant }: MovieBadgeProps) => {
  const subType = (movie.sub_type || movie.lang || "").toLowerCase();

  // Chỉ lọc ra Thuyết minh / Lồng tiếng (không phân biệt nguồn C hay KKPhim ở Poster)
  const displayLang = subType.includes("lồng") || subType.includes("lt")
    ? "L.Tiếng"
    : subType.includes("thuyết") || subType.includes("tm")
    ? "T.Minh"
    : "";

  // Ép kiểu dữ liệu tập phim về String an toàn
  const rawEpisode = movie.current_episode || movie.episode_current || "";
  const episode = String(rawEpisode).trim();

  const isRanked3 = variant === 'ranked3';

  // Điều kiện hiển thị Tập phim
  const shouldShowEpisode = episode &&
    !episode.toLowerCase().includes("full") &&
    !episode.toLowerCase().includes("trailer") &&
    !["1/1", "1"].includes(episode.toLowerCase());

  return (
    <>
      {/* NẾU LÀ RANKED 3: DỜI VỊ TRÍ XUỐNG GÓC DƯỚI BÊN PHẢI */}
      {isRanked3 ? (
        <div className="absolute bottom-3 right-3 z-10 flex flex-col items-end gap-1.5 pointer-events-none drop-shadow-[0_2px_4px_rgba(0,0,0,0.8)]">
          <div className="flex items-center gap-1.5">
            {displayLang && (
              <div className="bg-red-600 px-2 py-0.5 rounded-lg shadow-lg">
                <span className="text-[9px] font-black text-white">{displayLang}</span>
              </div>
            )}
            <div className="bg-black/60 backdrop-blur-md px-2 py-0.5 rounded-lg border border-white/10 shadow-lg">
              <span className="text-[9px] font-black text-white/90">{movie.year || '2026'}</span>
            </div>
          </div>

          {shouldShowEpisode && (
            <div className="bg-black/60 backdrop-blur-md px-2.5 py-1 rounded-lg group-hover:bg-red-600 transition-colors">
              <span className="text-[9px] font-black text-white uppercase italic tracking-tighter">
                {episode.toLowerCase().includes("tập") || isNaN(Number(episode))
                  ? episode
                  : `Tập ${episode}`}
              </span>
            </div>
          )}
        </div>
      ) : (
        /* CÁC KIỂU KHÁC (VERTICAL, HORIZONTAL, RANKED1) */
        <>
          {/* Nhãn trên (Top Right) */}
          <div className="absolute top-3 right-3 z-10 flex items-center gap-1.5">
            {displayLang && (
              <div className="bg-red-600/80 backdrop-blur-md px-2 py-0.5 rounded-lg shadow-lg">
                <span className="text-[9px] font-black text-white">{displayLang}</span>
              </div>
            )}
            <div className="bg-black/40 backdrop-blur-md px-2 py-0.5 rounded-lg border border-white/10 shadow-lg">
              <span className="text-[9px] font-black text-white/90">{movie.year || '2026'}</span>
            </div>
          </div>

          {/* Nhãn dưới (Bottom Right) */}
          {shouldShowEpisode && (
            <div className="absolute bottom-3 right-3 z-10">
              <div className="bg-black/60 backdrop-blur-md px-2.5 py-1 rounded-lg group-hover:bg-red-600 transition-colors">
                <span className="text-[9px] font-black text-white uppercase italic tracking-tighter">
                  {episode.toLowerCase().includes("tập") || isNaN(Number(episode))
                    ? episode
                    : `Tập ${episode}`}
                </span>
              </div>
            </div>
          )}
        </>
      )}
    </>
  );
});

MovieBadge.displayName = 'MovieBadge';
export default MovieBadge;