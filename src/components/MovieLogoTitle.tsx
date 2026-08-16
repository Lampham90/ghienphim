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
    if (!tmdbId || tmdbId === "0" || tmdbId === 0) {
      setLoading(false);
      return;
    }

    let isMounted = true;
    const fetchLogo = async () => {
      try {
        const typeParam = tmdbType === "single" || tmdbType === "phimle" ? "movie" : tmdbType;
        const res = await fetch(`/api/tmdb-logo?id=${tmdbId}&type=${typeParam}`);
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
  }, [tmdbId, tmdbType]);

  return (
    <div className={`flex flex-col items-center md:items-start gap-1.5 ${className}`}>
      {/* 1. HIỂN THỊ LOGO HOẶC TỰA ĐỀ CHÍNH */}
      {logoUrl ? (
        <img
          src={logoUrl}
          alt={title}
          className="h-12 sm:h-16 md:h-20 max-w-[280px] sm:max-w-[360px] md:max-w-[480px] object-contain object-center md:object-left drop-shadow-[0_4px_12px_rgba(0,0,0,0.8)]"
          loading="lazy"
        />
      ) : (
        <h1 className="text-[16px] md:text-[26px] lg:text-[32px] xl:text-[36px] font-black uppercase italic leading-[1.15] md:leading-[1.1] text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)] line-clamp-2">
          {title || "..."}
        </h1>
      )}

      {/* 2. HÀNG TỰA ĐỀ NHỎ Ở DƯỚI LOGO (ORIGIN NAME / TÊN GỐC TIẾNG ANH) */}
      {subTitle && (
        <p className="text-[11px] sm:text-[12px] md:text-[13px] font-semibold tracking-wider text-white/60 uppercase italic line-clamp-1 drop-shadow-md">
          {subTitle}
        </p>
      )}
    </div>
  );
}