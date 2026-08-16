"use client";

import { useState, useEffect } from "react";

interface MovieLogoTitleProps {
  tmdbId?: string | number;
  tmdbType?: "movie" | "tv" | string;
  title: string;
  subTitle?: string;
  className?: string;
}

export default function MovieLogoTitle({
  tmdbId,
  tmdbType = "movie",
  title,
  subTitle,
  className = "",
}: MovieLogoTitleProps) {
  const [logoUrl, setLogoUrl] = useState<string | null>(null);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    // Kể cả khi trang chủ không có tmdbId, vẫn chạy nếu có tên phim (title/subTitle)
    if ((!tmdbId || tmdbId === "0" || tmdbId === "undefined") && !subTitle && !title) {
      setLoading(false);
      return;
    }

    let isMounted = true;
    const fetchLogo = async () => {
      try {
        const typeParam = tmdbType === "single" || tmdbType === "phimle" ? "movie" : tmdbType;
        
        // Encode Tên tiếng Anh (ưu tiên) hoặc Tên tiếng Việt để gửi lên API tìm kiếm
        const searchQuery = encodeURIComponent(subTitle || title || "");
        
        const res = await fetch(`/api/tmdb-logo?id=${tmdbId || ""}&type=${typeParam}&query=${searchQuery}`);
        if (res.ok) {
          const data = await res.json();
          if (isMounted && data.logoUrl) {
            setLogoUrl(data.logoUrl);
          }
        }
      } catch (e) {
        console.error("Lỗi lấy TMDB logo:", e);
      } finally {
        if (isMounted) setLoading(false);
      }
    };

    fetchLogo();
    return () => {
      isMounted = false;
    };
  }, [tmdbId, tmdbType, title, subTitle]);

  return (
    <div className={`flex flex-col items-center md:items-start gap-1.5 w-full ${className}`}>
      {logoUrl ? (
        <>
          {/* Logo */}
          <img
            src={logoUrl}
            alt={title}
            className="h-16 sm:h-20 md:h-28 max-w-full md:max-w-[85%] object-contain object-center md:object-left drop-shadow-[0_4px_12px_rgba(0,0,0,0.8)]"
            loading="lazy"
          />
          {/* Tên tiếng Việt dưới Logo (break-words để không bị lẹm chữ) */}
          {title && (
            <p className="text-[13px] sm:text-[14px] md:text-[15px] font-bold tracking-wide text-[#F1E5AC] uppercase italic drop-shadow-md break-words whitespace-normal text-center md:text-left w-full">
              {title}
            </p>
          )}
        </>
      ) : (
        <>
          {/* Tựa Tiếng Việt nổi bật (Đã xóa line-clamp, thêm break-words chống lẹm chữ) */}
          <h1 className="text-[18px] md:text-[28px] lg:text-[36px] font-black uppercase italic leading-[1.2] md:leading-[1.1] text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)] break-words whitespace-normal text-center md:text-left w-full">
            {title || "..."}
          </h1>
          
          {/* Subtitle tiếng Anh (Nếu bạn không thích hiển thị tiếng Anh có thể xóa thẻ <p> này) */}
          {subTitle && (
            <p className="text-[12px] sm:text-[13px] md:text-[14px] font-semibold tracking-wider text-white/60 uppercase italic drop-shadow-md break-words whitespace-normal mt-1 text-center md:text-left w-full">
              {subTitle}
            </p>
          )}
        </>
      )}
    </div>
  );
}