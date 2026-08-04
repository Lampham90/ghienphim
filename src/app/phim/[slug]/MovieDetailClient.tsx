"use client";

export const runtime = "edge";

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
      Đang khởi tạo trình phát...
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

  return server.isNguonc ? `${baseLabel} (NC)` : baseLabel;
};

const sortServersByPriority = (rawServers: any[]) => {
  if (!rawServers) return [];
  return [...rawServers].sort((a, b) => {
    const priority = (s: any) => {
      if (s.isNguonc) return 10;
      const n = (s.server_name || "").toLowerCase();
      if (n.includes("lồng tiếng") || n.includes("lt")) return 1;
      if (n.includes("thuyết minh") || n.includes("tm")) return 2;
      return 3;
    };
    return priority(a) - priority(b);
  });
};

const getOnlyNumber = (epNum: any) => {
  if (!epNum) return "1";
  const match = String(epNum).match(/\d+/);
  return match ? match[0] : String(epNum);
};

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

  // Cờ chặn fetch lặp lại
  const isFetchingNguoncRef = useRef(false);

  // 🟢 HÀM FETCH NGUỒN C AN TOÀN (Không gây loop)
  const fetchNguonc = useCallback(
    async (movieName?: string) => {
      if (isFetchingNguoncRef.current) return;
      isFetchingNguoncRef.current = true;

      try {
        const query = movieName ? `slug=${slug}&name=${encodeURIComponent(movieName)}` : `slug=${slug}`;
        const res = await fetch(`/api/nguonc?${query}`);
        if (res.ok) {
          const data = await res.json();
          if (data.movieInfo) {
            setMovie((prev) => prev || data.movieInfo);
          }
          if (data.servers && data.servers.length > 0) {
            setServers((prev) => {
              if (prev.some((s) => s.isNguonc)) return prev;
              return sortServersByPriority([...prev, ...data.servers]);
            });
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
          setServers(sortServersByPriority(cachedData.servers || []));
          if (cachedData.name) fetchNguonc(cachedData.name);
        } catch (e) {}
      } else {
        fetchNguonc();
      }
    } else if (initialMovie.name) {
      fetchNguonc(initialMovie.name);
    }
  }, [slug, initialMovie, fetchNguonc]);

  const { detail: swrMovie, error: swrError } = useKKPhimDetail(initialMovie ? null : slug);

  useEffect(() => {
    const targetMovie = swrMovie || initialMovie;
    if (targetMovie) {
      setMovie(targetMovie);
      setServers((prev) => {
        const nguoncServers = prev.filter((s) => s.isNguonc);
        return sortServersByPriority([...(targetMovie.servers || []), ...nguoncServers]);
      });
      if (targetMovie.name) fetchNguonc(targetMovie.name);

      try {
        localStorage.setItem(`kkphim_${slug}`, JSON.stringify({ ...targetMovie, cached_at: Date.now() }));
      } catch (e) {}
    } else if (swrError) {
      fetchNguonc();
    }
  }, [swrMovie, initialMovie, slug, fetchNguonc, swrError]);

  // Quản lý Seasons
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

  // Lịch sử xem
  useEffect(() => {
    if (isPlaying || !servers || servers.length === 0) return;

    const currentServer = servers[activeServerIndex];
    const episodes = currentServer?.episodes || [];
    if (episodes.length === 0) return;

    const saved = history[slug];
    let foundIndex = 0;
    let timeToSet = 0;

    if (saved) {
      const cleanSavedNum = getOnlyNumber(saved.epNum);
      const idx = episodes.findIndex((ep: any) => getOnlyNumber(ep.episode_num) === cleanSavedNum);
      if (idx !== -1) {
        foundIndex = idx;
        timeToSet = saved.duration && saved.seconds > saved.duration * 0.95 ? 0 : saved.seconds || 0;
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
      if (!currentServer?.episodes?.[epIndex]) return;

      const ep = currentServer.episodes[epIndex];
      const epNum = getOnlyNumber(ep.episode_num);

      const historyData = {
        epIndex,
        epNum,
        seconds: Math.floor(seconds),
        duration: Math.floor(duration),
        link: ep.link,
        name: movie?.name || "",
        poster: posterSrc,
        thumb: bannerSrc,
        sub_type: formatServerLabel(currentServer),
        current_episode: epNum,
        year: movie?.year || 2026,
        last_updated: Date.now(),
      };

      storeSaveProgress(slug, historyData, user?.uid, shouldSync);
    },
    [slug, servers, activeServerIndex, movie, user, storeSaveProgress, bannerSrc, posterSrc]
  );

  const handleEpisodeSelect = (index: number) => {
    setCurrentEpIndex(index);
    setInitialTime(0);
    setIsPlaying(true);
    saveProgress(index, 0, 0, true);
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  const handleNextEpisode = useCallback(
    (explicitNextIndex?: number) => {
      const nextIdx = explicitNextIndex !== undefined ? explicitNextIndex : currentEpIndex + 1;
      const episodes = servers[activeServerIndex]?.episodes;

      if (episodes && nextIdx < episodes.length) {
        setCurrentEpIndex(nextIdx);
        setInitialTime(0);
        setIsPlaying(true);
        saveProgress(nextIdx, 0, 0, true);
        window.scrollTo({ top: 0, behavior: "smooth" });
      } else {
        setIsPlaying(false);
      }
    },
    [currentEpIndex, servers, activeServerIndex, saveProgress]
  );

  const currentServer = servers[activeServerIndex];
  const currentEpisodes = currentServer?.episodes || [];
  const activeEpisode = currentEpisodes[currentEpIndex];
  const activeEpNum = getOnlyNumber(activeEpisode?.episode_num || currentEpIndex + 1);

  const description = movie?.content || (movie as any)?.description || "";
  const currentSeasonObj = relatedSeasons.find((s) => s.slug === slug);

  return (
    <main className={`${montserrat.className} min-h-screen bg-[#050505] text-white pb-32`}>
      <style dangerouslySetInnerHTML={{ __html: `
        .line-clamp-3 { display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; overflow: hidden; }
        .ep-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(48px, 1fr)); gap: 10px; }
        .scrollbar-hide::-webkit-scrollbar { display: none; }
      ` }} />

      {/* HERO / VIDEO PLAYER */}
      <section className="relative w-full bg-black overflow-hidden mb-8 border-b border-white/5">
        {isPlaying && activeEpisode?.link ? (
          <div className="relative w-full h-[75vh] md:h-screen">
            <VideoPlayer
              key={`${activeServerIndex}_${currentEpIndex}_${activeEpisode.link}`}
              slug={slug}
              movieName={movie?.name || ""}
              videoUrl={activeEpisode.link}
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

            <div className="relative w-full h-[55vh] md:h-screen bg-black overflow-hidden">
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

            <div className="hidden md:flex absolute bottom-12 left-20 z-25 flex-col justify-end text-left items-start pointer-events-auto">
              <div className="max-w-4xl space-y-4">
                <h1 className="text-[35px] md:text-[45px] font-black uppercase italic leading-[1] text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)]">
                  {movie?.name || "..."}
                </h1>
                
                <div className="flex flex-wrap items-center gap-4">
                  <span className="px-2 py-0.5 bg-red-600 text-white text-[9px] font-black uppercase rounded italic tracking-widest shadow-lg">
                    {movie?.quality || "FHD"}
                  </span>
                  <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                    {movie?.year || "2026"}
                  </span>
                  
                  {servers.map((s, idx) => (
                    <div key={idx} className="flex items-center gap-4">
                      <span className="w-1 h-1 rounded-full bg-white/20"></span>
                      <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                        {formatServerLabel(s)} {s.episodes?.length} Tập
                      </span>
                    </div>
                  ))}

                  <button
                    onClick={toggleFavorite}
                    className={`w-10 h-10 rounded-full flex items-center justify-center transition-all border ${
                      isFavorite ? "bg-red-500/20 border-red-500/50 text-red-500" : "bg-white/5 border-white/20 text-white/60"
                    }`}
                  >
                    <svg className={`w-5 h-5 ${isFavorite ? "fill-current" : "fill-none"}`} viewBox="0 0 24 24" stroke="currentColor" strokeWidth={isFavorite ? 0 : 2}>
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

                <div className="pt-2 w-full max-w-xl flex justify-start">
                  <button
                    disabled={!isHistoryLoaded || !activeEpisode}
                    onClick={() => setIsPlaying(true)}
                    className="bg-transparent border-2 border-white/80 text-white px-8 py-3.5 rounded-full font-black text-[12px] uppercase tracking-widest hover:bg-red-600 hover:border-red-600 transition-all disabled:opacity-50 shadow-xl"
                  >
                    {!mounted || !history[slug] ? "Xem ngay" : `Tiếp tục tập ${activeEpNum}`}
                  </button>
                </div>
              </div>
            </div>

            <div className="flex md:hidden flex-col items-center text-center px-6 py-6 bg-[#050505] space-y-4">
              <h1 className="text-[28px] font-black uppercase italic leading-[1.1] text-[#F1E5AC]">
                {movie?.name || "..."}
              </h1>
              
              <div className="flex flex-wrap items-center justify-center gap-3">
                <span className="px-2 py-0.5 bg-red-600 text-white text-[9px] font-black uppercase rounded italic">
                  {movie?.quality || "FHD"}
                </span>
                <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase">{movie?.year || "2026"}</span>
                
                <button
                  onClick={toggleFavorite}
                  className={`w-9 h-9 rounded-full flex items-center justify-center border ${
                    isFavorite ? "bg-red-500/20 border-red-500/50 text-red-500" : "bg-white/5 border-white/20 text-white/60"
                  }`}
                >
                  <svg className={`w-4 h-4 ${isFavorite ? "fill-current" : "fill-none"}`} viewBox="0 0 24 24" stroke="currentColor" strokeWidth={isFavorite ? 0 : 2}>
                    <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                  </svg>
                </button>
              </div>

              {description && (
                <p className="text-white/60 text-[12px] font-medium line-clamp-3 leading-relaxed italic">
                  {description.replace(/<[^>]*>?/gm, "")}
                </p>
              )}

              <div className="pt-2">
                <button
                  disabled={!isHistoryLoaded || !activeEpisode}
                  onClick={() => setIsPlaying(true)}
                  className="bg-transparent border-2 border-white/80 text-white px-8 py-3 rounded-full font-black text-[11px] uppercase tracking-widest hover:bg-red-600 hover:border-red-600 transition-all disabled:opacity-50"
                >
                  {!mounted || !history[slug] ? "Xem ngay" : `Tiếp tục tập ${activeEpNum}`}
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
            {/* DROPDOWN AUDIO */}
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
                          setActiveServerIndex(i);
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

            {/* DROPDOWN PHẦN PHIM */}
            {relatedSeasons && relatedSeasons.length > 1 && (
              <div className="relative inline-block text-left min-w-[220px]">
                <button
                  onClick={() => {
                    setOpenSeason(!openSeason);
                    setOpenAudio(false);
                  }}
                  className="w-full bg-[#121212] border border-white/10 text-white text-xs font-bold py-3 px-4 rounded-xl flex items-center justify-between hover:border-white/30 transition-all"
                >
                  <span className="truncate">
                    Phần phim: <strong className="text-[#F1E5AC] ml-1">{currentSeasonObj?.name || movie?.name}</strong>
                  </span>
                  <svg className={`w-4 h-4 ml-2 transition-transform ${openSeason ? "rotate-180" : ""}`} fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path d="M19 9l-7 7-7-7" strokeWidth={2.5} />
                  </svg>
                </button>

                {openSeason && (
                  <div className="absolute left-0 mt-2 w-full bg-[#121212] border border-white/10 rounded-xl shadow-2xl py-1 z-[100] max-h-60 overflow-y-auto">
                    {relatedSeasons.map((s, i) => (
                      <button
                        key={i}
                        onClick={() => {
                          setOpenSeason(false);
                          if (s.slug !== slug) router.push(`/phim/${s.slug}`);
                        }}
                        className={`w-full text-left px-4 py-2.5 text-xs transition-colors flex items-center justify-between ${
                          s.slug === slug
                            ? "text-red-500 font-bold bg-red-600/10"
                            : "text-white/70 hover:bg-white/5 hover:text-white"
                        }`}
                      >
                        <span className="truncate">{s.name}</span>
                        {s.slug === slug && <span className="w-1.5 h-1.5 rounded-full bg-red-500"></span>}
                      </button>
                    ))}
                  </div>
                )}
                {openSeason && <div className="fixed inset-0 z-40" onClick={() => setOpenSeason(false)} />}
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
                  const num = getOnlyNumber(ep.episode_num);
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