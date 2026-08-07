"use client";

import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { Montserrat } from "next/font/google";
import Image from "next/image";
import dynamic from "next/dynamic";

import { useKKPhimDetail } from "@/lib/useKKPhim";
import ActorList from "@/components/ActorList";
import { KKPhimDetail, getImageUrl, searchMovies } from "@/lib/kkphim";
import { useAuth } from "@/lib/useAuth";
import { useMovieStore } from "@/lib/useMovieStore";
import imageLoader from "@/lib/imageLoader";

const VideoPlayer = dynamic(() => import("./VideoPlayer"), {
  ssr: false,
  loading: () => (
    <div className="w-full h-[75vh] md:h-screen bg-black flex items-center justify-center text-white/20 font-black tracking-widest text-xs uppercase italic">
      
    </div>
  ),
});

const montserrat = Montserrat({ subsets: ["vietnamese"], weight: ["400", "700", "900"] });

const getCleanName = (name: string) =>
  name
    .split(/\s+[:\-(\[]?\s*(phần|season|ss|part|tập|chapter|movie|ova|special|p|s)\s+\d+/i)[0]
    .replace(/\s+[:\-(\[]?\s*\d+\s*(:.*)?$/, "")
    .replace(/\s+(X|IX|IV|V?I{1,3})$/i, "")
    .replace(/[:\-\(\[\]\)]+$/, "")
    .trim();

const formatServerLabel = (server: any) => {
  if (!server) return "";
  const name = (server.server_name || "").toLowerCase();
  let baseLabel = "Vietsub";

  if (name.includes("lồng tiếng") || name.includes("lt")) {
    baseLabel = "Lồng tiếng";
  } else if (name.includes("thuyết minh") || name.includes("tm")) {
    baseLabel = "Thuyết minh";
  } else if (name.includes("nguồn c") || name.includes("nguonc")) {
    baseLabel = "Server dự phòng";
  }

  return server.isNguonc ? `${baseLabel} (2)` : baseLabel;
};

const sortServersByPriority = (rawServers: any[]) => {
  if (!rawServers || rawServers.length === 0) return [];
  
  return [...rawServers].sort((a, b) => {
    const getPriority = (s: any) => {
      const name = (s.server_name || "").toLowerCase();
      if (name.includes("lồng tiếng") || name.includes("lt")) return 1;
      if (name.includes("thuyết minh") || name.includes("tm")) return 2;
      if (s.isNguonc) return 10;
      return 3; 
    };
    return getPriority(a) - getPriority(b);
  });
};

// --- CÁC HÀM XỬ LÝ CHUẨN HÓA DỮ LIỆU TỪ NHIỀU API --- //

// 1. Chuẩn hóa mảng danh sách tập (KKPhim dùng server_data, Nguồn C dùng items)
const getEpisodesArray = (server: any) => {
  if (!server) return [];
  return server.episodes || server.server_data || server.items || [];
};

// 2. Chuẩn hóa link video (KKPhim dùng link_m3u8, Nguồn C dùng embed)
const getEpisodeLink = (ep: any) => {
  if (!ep) return "";
  return ep.link || ep.link_m3u8 || ep.embed || ep.link_embed || "";
};

// 3. Xử lý triệt để số tập: Chuyển "01" và "1" về cùng giá trị "1"
const extractNumber = (val: any) => {
  if (!val) return "1";
  const str = String(val);
  const match = str.match(/\d+/);
  // Dùng parseInt để xóa số 0 vô nghĩa ở đầu, sau đó chuyển lại thành chuỗi
  return match ? parseInt(match[0], 10).toString() : str;
};

// 4. Lấy số tập chính xác từ mọi API
const getEpNum = (ep: any, fallbackIndex: number) => {
  if (!ep) return String(fallbackIndex + 1);
  return extractNumber(ep.episode_num || ep.name || ep.slug || fallbackIndex + 1);
};

const getEpisodeHistoryKey = (movieSlug: string, epNum: string) => `${movieSlug}_ep_${epNum}`;

export default function MovieDetailClient({
  initialMovie,
  slug,
}: {
  initialMovie: KKPhimDetail | null;
  slug: string;
}) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const { user } = useAuth();
  const { history, favorites, toggleFavorite: storeToggleFavorite, saveProgress: storeSaveProgress } =
    useMovieStore();

  const [movie, setMovie] = useState<KKPhimDetail | null>(initialMovie);
  const [servers, setServers] = useState<any[]>(() => sortServersByPriority(initialMovie?.servers || []));
  const [activeServerIndex, setActiveServerIndex] = useState(0);
  const [currentEpIndex, setCurrentEpIndex] = useState(0);
  const [initialTime, setInitialTime] = useState(0);

  const [isPlaying, setIsPlaying] = useState(false);
  const [mounted, setMounted] = useState(false);
  const [isHistoryLoaded, setIsHistoryLoaded] = useState(false);

  const [relatedSeasons, setRelatedSeasons] = useState<any[]>([]);
  const [openAudio, setOpenAudio] = useState(false);
  const [openSeason, setOpenSeason] = useState(false);
  const [activeTab, setActiveTab] = useState<"episodes" | "actors">("episodes");

  const previewPoster = searchParams.get("poster") || "";
  const previewThumb = searchParams.get("thumb") || "";

  const bannerSrc = useMemo(() => {
    return previewThumb || (movie ? getImageUrl((movie as any).thumb_url || movie.thumb) : "");
  }, [previewThumb, movie]);

  const posterSrc = useMemo(() => {
    return previewPoster || (movie ? getImageUrl(movie.poster) : "");
  }, [previewPoster, movie]);

  const fetchedNguoncKeyRef = useRef<string | null>(null);

  const fetchNguonc = useCallback(
    async (movieName?: string) => {
      const currentFetchKey = `${slug}_${movieName || ""}`;
      if (fetchedNguoncKeyRef.current === currentFetchKey) return;

      try {
        const query = movieName ? `slug=${slug}&name=${encodeURIComponent(movieName)}` : `slug=${slug}`;
        const res = await fetch(`/api/nguonc?${query}`);

        if (res.ok) {
          const data = await res.json();
          // Hỗ trợ mảng episodes của Nguồn C nếu nó trả về thẳng data.episodes
          const serversData = data.servers || data.movie?.episodes || [];
          if (serversData.length > 0) {
            setServers((prev) => {
              if (prev.some((s) => s.isNguonc)) return prev;
              const normalizedServers = serversData.map((s: any) => ({ ...s, isNguonc: true }));
              return sortServersByPriority([...prev, ...normalizedServers]);
            });
            fetchedNguoncKeyRef.current = currentFetchKey;
          }
        }
      } catch (e) {
        console.error("Lỗi fetch Nguồn C:", e);
      }
    },
    [slug]
  );

  useEffect(() => {
    setMounted(true);
    window.scrollTo({ top: 0, behavior: "instant" });

    if (!initialMovie) {
      const cached = localStorage.getItem(`kkphim_${slug}`);
      if (cached) {
        try {
          const cachedData = JSON.parse(cached);
          setMovie(cachedData);
          setServers(sortServersByPriority(cachedData.servers || cachedData.episodes || []));
          if (cachedData.origin_name || cachedData.name) {
            fetchNguonc(cachedData.origin_name || cachedData.name);
          }
        } catch (e) {}
      } else {
        fetchNguonc();
      }
    } else {
      fetchNguonc((initialMovie as any).origin_name || initialMovie.name);
    }
  }, [slug, initialMovie, fetchNguonc]);

  const { detail: swrMovie, error: swrError } = useKKPhimDetail(initialMovie ? null : slug);

  useEffect(() => {
    const targetMovie = swrMovie || initialMovie;
    if (targetMovie) {
      setMovie(targetMovie);
      setServers((prev) => {
        const nguoncServers = prev.filter((s) => s.isNguonc);
        return sortServersByPriority([...(targetMovie.servers || targetMovie.episodes || []), ...nguoncServers]);
      });

      const englishName = (targetMovie as any).origin_name || targetMovie.name;
      if (englishName) fetchNguonc(englishName);

      try {
        localStorage.setItem(`kkphim_${slug}`, JSON.stringify({ ...targetMovie, cached_at: Date.now() }));
      } catch (e) {}
    } else if (swrError) {
      fetchNguonc();
    }
  }, [swrMovie, initialMovie, slug, fetchNguonc, swrError]);

  useEffect(() => {
    if (!movie?.name) return;
    const handleRelatedSeasons = async () => {
      const baseName = getCleanName(movie.name);
      try {
        const searchRes = await searchMovies(baseName);
        let filtered = searchRes
          .filter((i: any) => getCleanName(i.name).toLowerCase() === baseName.toLowerCase())
          .map((i: any) => ({ name: i.name, slug: i.slug, country: i.country }))
          .filter((v: any, i: number, a: any[]) => a.findIndex((t: any) => t.slug === v.slug) === i);

        if (!filtered.some((s: any) => s.slug === slug)) {
          filtered.push({ name: movie.name, slug: slug, country: movie.country || "" });
        }
        setRelatedSeasons(
          filtered.sort((a: any, b: any) => a.name.localeCompare(b.name, undefined, { numeric: true }))
        );
      } catch (e) {}
    };
    handleRelatedSeasons();
  }, [movie?.name, slug]);

  useEffect(() => {
    if (isPlaying || !servers || servers.length === 0) return;

    const currentServer = servers[activeServerIndex];
    const episodes = getEpisodesArray(currentServer);
    if (episodes.length === 0) return;

    const saved = history[slug];
    let foundIndex = 0;
    let timeToSet = 0;

    if (saved) {
      const cleanSavedNum = extractNumber(saved.epNum);
      const idx = episodes.findIndex((ep: any, i: number) => getEpNum(ep, i) === cleanSavedNum);
      if (idx !== -1) {
        foundIndex = idx;
        const epHistoryKey = getEpisodeHistoryKey(slug, cleanSavedNum);
        const epSaved = history[epHistoryKey] || saved;
        timeToSet = epSaved.duration && epSaved.seconds > epSaved.duration * 0.95 ? 0 : epSaved.seconds || 0;
      }
    }

    setCurrentEpIndex(foundIndex);
    setInitialTime(timeToSet);
    setIsHistoryLoaded(true);
  }, [slug, activeServerIndex, servers, history, isPlaying]);

  const isFavorite = favorites.some((item: any) => item.slug === slug);

  const toggleFavorite = async () => {
    storeToggleFavorite(
      slug,
      {
        slug,
        name: movie?.name || "",
        poster: posterSrc,
        thumb: bannerSrc,
        sub_type: formatServerLabel(servers[activeServerIndex]),
        current_episode: (movie as any)?.current_episode || "Full",
        year: movie?.year,
        last_updated: Date.now(),
      },
      isFavorite,
      user?.uid
    );
  };

  const saveProgress = useCallback(
    async (epIndex: number, seconds: number = 0, duration: number = 0, shouldSync: boolean = false) => {
      const currentServer = servers[activeServerIndex];
      const currentEpisodes = getEpisodesArray(currentServer);
      if (!currentEpisodes?.[epIndex]) return;

      const ep = currentEpisodes[epIndex];
      const epNum = getEpNum(ep, epIndex);

      const historyData = {
        epIndex,
        epNum,
        seconds: Math.floor(seconds),
        duration: Math.floor(duration),
        link: getEpisodeLink(ep),
        name: movie?.name || "",
        poster: posterSrc,
        thumb: bannerSrc,
        sub_type: formatServerLabel(currentServer),
        current_episode: epNum,
        year: movie?.year || 2026,
        last_updated: Date.now(),
      };

      const epHistoryKey = getEpisodeHistoryKey(slug, epNum);
      storeSaveProgress(epHistoryKey, historyData, user?.uid, shouldSync);
      storeSaveProgress(slug, historyData, user?.uid, false);
    },
    [slug, servers, activeServerIndex, movie, user, storeSaveProgress, bannerSrc, posterSrc]
  );

  const handleEpisodeSelect = (index: number) => {
    const currentServer = servers[activeServerIndex];
    const currentEpisodes = getEpisodesArray(currentServer);
    const ep = currentEpisodes?.[index];
    const epNum = getEpNum(ep, index);
    
    const epHistoryKey = getEpisodeHistoryKey(slug, epNum);
    const savedEpData = history[epHistoryKey];

    let timeToSet = 0;
    if (savedEpData) {
      timeToSet = savedEpData.duration && savedEpData.seconds > savedEpData.duration * 0.95 ? 0 : savedEpData.seconds || 0;
    }

    setCurrentEpIndex(index);
    setInitialTime(timeToSet);
    setIsPlaying(true);
    saveProgress(index, timeToSet, savedEpData?.duration || 0, true);
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  // Logic chuyển Server đã được nâng cấp đồng bộ mạnh mẽ
  const handleServerChange = (newServerIndex: number) => {
    if (newServerIndex === activeServerIndex) return;

    const currentServer = servers[activeServerIndex];
    const currentEpisodes = getEpisodesArray(currentServer);
    const currentEp = currentEpisodes[currentEpIndex];
    const currentEpNum = getEpNum(currentEp, currentEpIndex);

    const targetServer = servers[newServerIndex];
    const targetEpisodes = getEpisodesArray(targetServer);
    
    // Tìm chính xác tập tương ứng nhờ việc ép chuẩn hóa số 01 -> 1
    let targetEpIdx = targetEpisodes.findIndex((ep: any, i: number) => getEpNum(ep, i) === currentEpNum);
    if (targetEpIdx === -1) targetEpIdx = 0;

    const targetEp = targetEpisodes[targetEpIdx];
    let timeToSet = 0;

    if (targetEp) {
      const targetEpNum = getEpNum(targetEp, targetEpIdx);
      const epHistoryKey = getEpisodeHistoryKey(slug, targetEpNum);
      // Lấy lịch sử mới nhất từ state thay vì phụ thuộc vào mảng history lúc render
      const latestHistory = useMovieStore.getState().history;
      const savedEpData = latestHistory[epHistoryKey] || history[epHistoryKey];
      if (savedEpData) {
        timeToSet = savedEpData.duration && savedEpData.seconds > savedEpData.duration * 0.95 ? 0 : savedEpData.seconds || 0;
      }
    }

    setActiveServerIndex(newServerIndex);
    setCurrentEpIndex(targetEpIdx);
    setInitialTime(timeToSet);
  };

  const handleNextEpisode = useCallback(
    (explicitNextIndex?: number) => {
      const nextIdx = explicitNextIndex !== undefined ? explicitNextIndex : currentEpIndex + 1;
      const currentEpisodes = getEpisodesArray(servers[activeServerIndex]);

      if (currentEpisodes && nextIdx < currentEpisodes.length) {
        handleEpisodeSelect(nextIdx);
      } else {
        setIsPlaying(false);
      }
    },
    [currentEpIndex, servers, activeServerIndex, history, slug]
  );

  const currentServer = servers[activeServerIndex];
  const currentEpisodes = getEpisodesArray(currentServer);
  const activeEpisode = currentEpisodes[currentEpIndex];
  const activeEpNum = getEpNum(activeEpisode, currentEpIndex);
  const activeLink = getEpisodeLink(activeEpisode);

  const description = movie?.content || (movie as any)?.description || "";
  const currentSeasonObj = relatedSeasons.find((s) => s.slug === slug);

  const isFullMovie = currentEpisodes.length <= 1;

  const getWatchButtonLabel = () => {
    if (!mounted || !history[slug]) return "Xem ngay";
    if (isFullMovie) return "Xem tiếp";
    return `Tiếp tục tập ${activeEpNum}`;
  };

  return (
    <main className={`${montserrat.className} min-h-screen bg-[#050505] text-white pb-32`}>
      <style dangerouslySetInnerHTML={{ __html: `
        .line-clamp-3 { display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; overflow: hidden; }
        .ep-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(48px, 1fr)); gap: 10px; }
        .scrollbar-hide::-webkit-scrollbar { display: none; }
      ` }} />

     {/* HERO / VIDEO PLAYER */}
<section className="relative w-full bg-black overflow-hidden mb-8 border-b border-white/5">
  {isPlaying && activeLink ? (
    <div className="relative w-full h-[75vh] md:h-screen">
      <VideoPlayer
        key={`${activeServerIndex}_${currentEpIndex}_${activeLink}`}
        slug={slug}
        movieName={movie?.name || ""}
        videoUrl={activeLink}
        initialTime={initialTime}
        currentEpIndex={currentEpIndex}
        totalEpisodes={currentEpisodes.length}
        onClose={() => setIsPlaying(false)}
        onEnded={handleNextEpisode}
        saveProgress={saveProgress}
      />
    </div>
  ) : (
    <div className="relative w-full">
      <button
        onClick={() => router.back()}
        className="absolute top-6 left-6 md:left-12 z-[110] bg-black/40 backdrop-blur-xl p-2.5 rounded-full border border-white/10 hover:border-red-600 transition-all group shadow-2xl"
      >
        <svg className="w-5 h-5 group-hover:-translate-x-1 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}>
          <path d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
      </button>

      <div className="relative w-full h-[45vh] md:h-screen bg-black overflow-hidden">
        <div className="absolute inset-0 w-full h-full">
          {posterSrc && (
            <div className="block md:hidden relative w-full h-full">
              <Image loader={imageLoader} src={posterSrc} alt="Poster" fill sizes="100vw" quality={80} priority className="object-cover" style={{ objectPosition: "center 20%" }} />
            </div>
          )}
          {bannerSrc && (
            <div className="hidden md:block relative w-full h-full">
              <Image loader={imageLoader} src={bannerSrc} alt="Banner" fill sizes="100vw" quality={80} priority className="object-cover" style={{ objectPosition: "center 20%" }} />
            </div>
          )}
        </div>
        <div className="absolute inset-0 bg-gradient-to-t from-[#050505] via-transparent to-black/30 z-10" />
      </div>

      {/* DESKTOP INFO */}
      <div className="hidden md:flex absolute bottom-12 left-20 z-25 flex-col justify-end text-left items-start pointer-events-auto">
        <div className="max-w-4xl space-y-4">
          <h1 className="text-[35px] md:text-[45px] font-black uppercase italic leading-[1] text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)]">
            {movie?.name || "..."}
          </h1>

          <div className="flex flex-wrap items-center gap-3">
            <span className="px-2 py-0.5 bg-red-600 text-white text-[9px] font-black uppercase rounded italic tracking-widest shadow-lg">
              {movie?.quality || "FHD"}
            </span>

            <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
              {movie?.year || "2026"}
            </span>

            {movie?.category && movie.category.length > 0 && (
              <div className="flex items-center gap-2">
                <span className="w-1 h-1 rounded-full bg-white/30"></span>
                <span className="text-[12px] font-medium text-white/80 italic">
                  {movie.category.slice(0, 2).map((cat: any) => cat.name).join(", ")}
                </span>
              </div>
            )}

            <button
              onClick={toggleFavorite}
              className={`w-8 h-8 rounded-full flex items-center justify-center transition-all border ml-1 ${
                isFavorite
                  ? "bg-red-500/20 border-red-500/50 text-red-500"
                  : "bg-white/5 border-white/20 text-white/60 hover:text-white hover:border-white/40"
              }`}
            >
              <svg className={`w-4 h-4 ${isFavorite ? "fill-current" : "fill-none"}`} viewBox="0 0 24 24" stroke="currentColor" strokeWidth={isFavorite ? 0 : 2}>
                <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
              </svg>
            </button>
          </div>

          {description && (
            <div
              className="text-white/60 text-[13px] md:text-[14px] font-medium line-clamp-3 leading-relaxed max-w-xl italic"
              dangerouslySetInnerHTML={{ __html: description }}
            />
          )}

          {servers && servers.length > 0 && (
            <div className="flex flex-wrap items-center gap-3 pt-1">
              {servers.map((s, idx) => (
                <div key={idx} className="flex items-center gap-2">
                  {idx > 0 && <span className="w-1 h-1 rounded-full bg-white/20"></span>}
                  <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                    {formatServerLabel(s)}: {getEpisodesArray(s).length} Tập
                  </span>
                </div>
              ))}
            </div>
          )}

          <div className="pt-2 w-full max-w-xl flex justify-start">
            <button
              disabled={!isHistoryLoaded || !activeEpisode}
              onClick={() => setIsPlaying(true)}
              className="bg-transparent border-2 border-white/80 text-white px-8 py-3.5 rounded-full font-black text-[12px] uppercase tracking-widest hover:bg-red-600 hover:border-red-600 transition-all disabled:opacity-50 shadow-xl"
            >
              {getWatchButtonLabel()}
            </button>
          </div>
        </div>
      </div>
      
      {/* MOBILE INFO (Đã đồng bộ đầy đủ như Desktop) */}
      <div className="flex md:hidden flex-col items-center justify-center text-center px-6 py-6 bg-[#050505] space-y-4 w-full">
        <h1 className="text-[26px] sm:text-[30px] font-black uppercase italic leading-[1.1] text-[#F1E5AC]">
          {movie?.name || "..."}
        </h1>

        <div className="flex flex-wrap items-center justify-center gap-2.5">
          <span className="px-2 py-0.5 bg-red-600 text-white text-[9px] font-black uppercase rounded italic shadow-md">
            {movie?.quality || "FHD"}
          </span>

          <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase">
            {movie?.year || "2026"}
          </span>

          {movie?.category && movie.category.length > 0 && (
            <div className="flex items-center gap-2">
              <span className="w-1 h-1 rounded-full bg-white/30"></span>
              <span className="text-[11px] font-medium text-white/80 italic">
                {movie.category.slice(0, 2).map((cat: any) => cat.name).join(", ")}
              </span>
            </div>
          )}

          <button
            onClick={toggleFavorite}
            className={`w-7 h-7 rounded-full flex items-center justify-center transition-all border ml-1 ${
              isFavorite
                ? "bg-red-500/20 border-red-500/50 text-red-500"
                : "bg-white/5 border-white/20 text-white/60"
            }`}
          >
            <svg className={`w-3.5 h-3.5 ${isFavorite ? "fill-current" : "fill-none"}`} viewBox="0 0 24 24" stroke="currentColor" strokeWidth={isFavorite ? 0 : 2}>
              <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
            </svg>
          </button>
        </div>

        {servers && servers.length > 0 && (
          <div className="flex flex-wrap items-center justify-center gap-2 pt-0.5">
            {servers.map((s, idx) => (
              <div key={idx} className="flex items-center gap-1.5">
                {idx > 0 && <span className="w-1 h-1 rounded-full bg-white/20"></span>}
                <span className="text-[11px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                  {formatServerLabel(s)}: {getEpisodesArray(s).length} Tập
                </span>
              </div>
            ))}
          </div>
        )}

        {description && (
          <p className="text-white/60 text-[12px] font-medium line-clamp-3 leading-relaxed italic max-w-md">
            {description.replace(/<[^>]*>?/gm, "")}
          </p>
        )}

        <div className="pt-2 w-full flex justify-center">
          <button
            disabled={!isHistoryLoaded || !activeEpisode}
            onClick={() => setIsPlaying(true)}
            className="bg-transparent border-2 border-white/80 text-white px-8 py-3 rounded-full font-black text-[11px] uppercase tracking-widest hover:bg-red-600 hover:border-red-600 transition-all disabled:opacity-50"
          >
            {getWatchButtonLabel()}
          </button>
        </div>
      </div>
    </div>
  )}
</section>
      {/* DROPDOWNS & TABS */}
      {mounted && (
        <div className="max-w-[1400px] mx-auto px-6 md:px-20 mt-8 space-y-6">
          <div className="flex flex-wrap items-center gap-4 border-b border-white/5 pb-6">
            {servers && servers.length > 0 && (
              <div className="relative inline-block text-left min-w-[200px]">
                <button
                  onClick={() => {
                    setOpenAudio(!openAudio);
                    setOpenSeason(false);
                  }}
                  className="w-full bg-[#121212] border border-white/10 text-white text-xs font-bold py-3 px-4 rounded-xl flex items-center justify-between hover:border-white/30 transition-all"
                >
                  <span className="truncate">
                    Audio: <strong className="text-[#F1E5AC] ml-1">{formatServerLabel(servers[activeServerIndex])}</strong>
                  </span>
                  <svg className={`w-4 h-4 ml-2 transition-transform ${openAudio ? "rotate-180" : ""}`} fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path d="M19 9l-7 7-7-7" strokeWidth={2.5} />
                  </svg>
                </button>

                {openAudio && (
                  <div className="absolute left-0 mt-2 w-full bg-[#121212] border border-white/10 rounded-xl shadow-2xl py-1 z-[100]">
                    {servers.map((s, i) => (
                      <button
                        key={i}
                        onClick={() => {
                          handleServerChange(i);
                          setOpenAudio(false);
                        }}
                        className={`w-full text-left px-4 py-2.5 text-xs transition-colors flex items-center justify-between ${
                          activeServerIndex === i
                            ? "text-red-500 font-bold bg-red-600/10"
                            : "text-white/70 hover:bg-white/5 hover:text-white"
                        }`}
                      >
                        <span>{formatServerLabel(s)}</span>
                        {activeServerIndex === i && <span className="w-1.5 h-1.5 rounded-full bg-red-500"></span>}
                      </button>
                    ))}
                  </div>
                )}
                {openAudio && <div className="fixed inset-0 z-40" onClick={() => setOpenAudio(false)} />}
              </div>
            )}
          </div>

          <div className="flex items-center gap-6 border-b border-white/10 mb-8 overflow-x-auto scrollbar-hide">
            {(["episodes", "actors"] as const).map((tab) => (
              <button
                key={tab}
                onClick={() => setActiveTab(tab)}
                className={`pb-3 px-2 text-[11px] sm:text-xs font-black uppercase tracking-[0.2em] italic transition-all relative ${
                  activeTab === tab ? "text-[#F1E5AC]" : "text-white/40 hover:text-white/80"
                }`}
              >
                {tab === "episodes" ? "Danh sách tập" : "Diễn viên"}
                {activeTab === tab && (
                  <span className="absolute bottom-0 left-0 w-full h-[2px] bg-[#F1E5AC] shadow-[0_0_8px_#F1E5AC]" />
                )}
              </button>
            ))}
          </div>

          {activeTab === "episodes" && (
            <div className="animate-in fade-in duration-300">
              <div className="ep-grid">
                {currentEpisodes.map((ep: any, i: number) => {
                  const num = getEpNum(ep, i);
                  const isCurrent = currentEpIndex === i;

                  return (
                    <button
                      key={i}
                      onClick={() => handleEpisodeSelect(i)}
                      className={`w-11 h-11 flex items-center justify-center rounded-full text-[11px] font-black border transition-all duration-300 ${
                        isCurrent
                          ? "bg-red-600 border-red-600 text-white scale-110 shadow-[0_0_15px_rgba(220,38,38,0.5)]"
                          : "bg-[#0f0f0f] border-white/5 text-white/40 hover:border-red-600/50 hover:text-white"
                      }`}
                    >
                      {num}
                    </button>
                  );
                })}
              </div>
            </div>
          )}

          {activeTab === "actors" && (
            <div className="animate-in fade-in duration-300">
              <ActorList movie={movie} tmdbInfo={movie?.tmdb} />
            </div>
          )}
        </div>
      )}
    </main>
  );
}