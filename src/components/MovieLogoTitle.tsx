"use client";

import { useState, useEffect } from "react";
import { getCleanName } from "@/lib/kkphim";

interface MovieLogoTitleProps {
  tmdbId?: string | number;
  imdbId?: string;
  tmdbType?: "movie" | "tv" | string;
  title: string;
  subTitle?: string;
  className?: string;
  logoUrl?: string | null;
  slug?: string;
}

export default function MovieLogoTitle({
  tmdbId,
  imdbId,
  tmdbType = "movie",
  title,
  subTitle,
  className = "",
  logoUrl: initialLogoUrl,
  slug,
}: MovieLogoTitleProps) {
  const [logoUrl, setLogoUrl] = useState<string | null>(initialLogoUrl || null);
  const [loading, setLoading] = useState<boolean>(!initialLogoUrl);

  useEffect(() => {
    if (initialLogoUrl) {
      setLogoUrl(initialLogoUrl);
      setLoading(false);
      return;
    }

    if ((!tmdbId || tmdbId === "0" || tmdbId === "undefined") && !imdbId && !subTitle && !title) {
      setLoading(false);
      return;
    }

    let isMounted = true;
    const fetchLogo = async () => {
      try {
        const typeParam = tmdbType === "single" || tmdbType === "phimle" ? "movie" : tmdbType;
        
        // Làm sạch tên trước khi search
        const searchQuery = encodeURIComponent(getCleanName(subTitle || title || ""));
        const slugParam = slug ? `&slug=${encodeURIComponent(slug)}` : "";
        
        const res = await fetch(`/api/tmdb-logo?id=${tmdbId || ""}&imdbId=${imdbId || ""}&type=${typeParam}&query=${searchQuery}${slugParam}`);
        if (res.ok) {
          const data = await res.json();
          if (isMounted && data.logoUrl) {
            setLogoUrl(data.logoUrl);
          } else if (isMounted) {
            setLogoUrl(null);
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
  }, [initialLogoUrl, tmdbId, imdbId, tmdbType, title, subTitle, slug]);

  return (
    <div className={`flex flex-col items-center md:items-start gap-1.5 w-full ${className}`}>
      {logoUrl ? (
        <>
          <img
            src={logoUrl}
            alt={title}
            className="h-16 sm:h-20 md:h-28 max-w-full md:max-w-[85%] object-contain object-center md:object-left drop-shadow-[0_4px_12px_rgba(0,0,0,0.8)]"
            loading="lazy"
          />
          {title && (
            <p className="text-[13px] sm:text-[14px] md:text-[15px] font-bold tracking-wide text-[#F1E5AC] uppercase italic drop-shadow-md break-words whitespace-normal text-center md:text-left w-full">
              {title}
            </p>
          )}
        </>
      ) : (
        <>
          <h1 className="text-[18px] md:text-[28px] lg:text-[36px] font-black uppercase italic leading-[1.2] md:leading-[1.1] text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)] break-words whitespace-normal text-center md:text-left w-full">
            {title || "..."}
          </h1>
          
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