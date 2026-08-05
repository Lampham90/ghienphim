// @/components/MovieBadge.tsx
// GIT_UPDATE_MARKER
import React, { memo } from 'react';
import type { KKPhimMovie } from '@/lib/kkphim';

interface MovieBadgeProps {
  movie: KKPhimMovie | any;
  variant?: 'vertical' | 'horizontal' | 'ranked1' | 'ranked2' | 'ranked3';
}

const MovieBadge = memo(({ movie, variant }: MovieBadgeProps) => {
  // 🌟 LẤY THÊM TRƯỜNG `language` TỪ NGUONC VÀ CÁC NGUỒN KHÁC
  const subType = movie.sub_type?.toLowerCase() || "";
  const lang = movie.lang?.toLowerCase() || "";
  const movieLanguage = movie.language?.toLowerCase() || ""; // Bổ sung trường này cho NguonC

  // Gom tất cả lại để quét từ khóa an toàn
  const combinedText = `${subType} ${lang} ${movieLanguage}`;

  // 🌟 ƯU TIÊN TUYỆT ĐỐI CHO LỒNG TIẾNG TRƯỚC
  let displayLang = "";
  if (combinedText.includes("lồng")) {
    displayLang = "L.Tiếng";
  } else if (combinedText.includes("thuyết")) {
    displayLang = "T.Minh";
  }

  // ✅ BỌC TẠI ĐÂY: Ép kiểu dữ liệu tập phim về String một cách an toàn để tránh crash hàm text
  const rawEpisode = movie.current_episode || movie.episode_current || "";
  const episode = String(rawEpisode).trim();

  const isRanked3 = variant === 'ranked3';

  // Điều kiện hiển thị Tập phim (Đã bọc kiểm tra chuỗi an toàn)
  const shouldShowEpisode = episode &&
    !episode.toLowerCase().includes("full") &&
    !episode.toLowerCase().includes("trailer") &&
    !["1/1", "1"].includes(episode.toLowerCase());

  return (
    <>
      {/* 🌟 NẾU LÀ RANKED 3: DỜI VỊ TRÍ XUỐNG GÓC DƯỚI BÊN PHẢI */}
      {isRanked3 ? (
        <div className="absolute bottom-3 right-3 z-10 flex flex-col items-end gap-1.5 pointer-events-none drop-shadow-[0_2px_4px_rgba(0,0,0,0.8)]">
          {/* Hàng chứa Ngôn ngữ và Năm xếp cạnh nhau */}
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
        /* 🌟 ĐỐI VỚI CÁC KIỂU KHÁC (VERTICAL, HORIZONTAL, RANKED1): GIỮ NGUYÊN GIAO DIỆN CŨ */
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

MovieBadge.displayName = 'MovieBadge'; // Định danh tường minh cho React devtools
export default MovieBadge;