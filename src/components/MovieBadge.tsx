// @/components/MovieBadge.tsx
// GIT_UPDATE_MARKER
import React, { memo } from 'react';
import type { KKPhimMovie } from '@/lib/kkphim';

interface MovieBadgeProps {
  movie: KKPhimMovie | any;
  variant?: 'vertical' | 'horizontal' | 'ranked1' | 'ranked2' | 'ranked3';
}

const MovieBadge = memo(({ movie, variant }: MovieBadgeProps) => {
  const subType = movie.sub_type?.toLowerCase() || "";
  const lang = movie.lang?.toLowerCase() || "";

  // 🌟 CHỈ LẤY LỒNG TIẾNG VÀ THUYẾT MINH, HOÀN TOÀN LOẠI BỎ VIỆTSUB
  const badges: string[] = [];

  const isLoiTieng = subType.includes("lồng") || lang.includes("lồng");
  const isThuyetMinh = subType.includes("thuyết") || lang.includes("thuyết");

  // Đưa Lồng Tiếng lên trước, Thuyết Minh theo sau (hoặc hiển thị song song nếu có cả hai)
  if (isLoiTieng) {
    badges.push("L.Tiếng");
  }
  if (isThuyetMinh) {
    badges.push("T.Minh");
  }

  // ✅ BỌC TẠI ĐÂY: Ép kiểu dữ liệu tập phim về String an toàn
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
      {/* 🌟 NẾU LÀ RANKED 3: DỜI VỊ TRÍ XUỐNG GÓC DƯỚI BÊN PHẢI */}
      {isRanked3 ? (
        <div className="absolute bottom-3 right-3 z-10 flex flex-col items-end gap-1.5 pointer-events-none drop-shadow-[0_2px_4px_rgba(0,0,0,0.8)]">
          {/* Hàng chứa các Nhãn (nếu có) và Năm xếp cạnh nhau */}
          <div className="flex items-center gap-1.5 flex-wrap justify-end">
            {badges.map((badgeText, idx) => (
              <div
                key={idx}
                className="bg-red-600 px-2 py-0.5 rounded-lg shadow-lg"
              >
                <span className="text-[9px] font-black text-white">{badgeText}</span>
              </div>
            ))}
            <div className="bg-black/60 backdrop-blur-md px-2 py-0.5 rounded-lg border border-white/10 shadow-lg">
              <span className="text-[9px] font-black text-white/90">{movie.year || '2026'}</span>
            </div>
          </div>

          {/* Nhãn Tập phim nằm ngay bên dưới */}
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
        /* 🌟 ĐỐI VỚI CÁC KIỂU KHÁC (VERTICAL, HORIZONTAL, RANKED1): GÓC TRÊN BÊN PHẢI */
        <>
          {/* Nhãn trên (Top Right) - Chỉ chứa nhãn lồng tiếng/thuyết minh (nếu có) và năm */}
          <div className="absolute top-3 right-3 z-10 flex items-center gap-1.5 flex-wrap justify-end max-w-[70%]">
            {badges.map((badgeText, idx) => (
              <div
                key={idx}
                className="bg-red-600/90 backdrop-blur-md px-2 py-0.5 rounded-lg shadow-lg"
              >
                <span className="text-[9px] font-black text-white">{badgeText}</span>
              </div>
            ))}
            <div className="bg-black/40 backdrop-blur-md px-2 py-0.5 rounded-lg border border-white/10 shadow-lg">
              <span className="text-[9px] font-black text-white/90">{movie.year || '2026'}</span>
            </div>
          </div>

          {/* Nhãn dưới (Bottom Right) - Tập phim */}
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