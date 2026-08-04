"use client";
export const runtime = 'edge';

import { useState, useEffect, useCallback, useMemo, useRef } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { Montserrat } from 'next/font/google';
import Image from 'next/image';
import dynamic from "next/dynamic";
import { useKKPhimDetail } from "@/lib/useKKPhim";
import ActorList from '@/components/ActorList';
import Link from 'next/link';

// Performance: Lazy load VideoPlayer để giảm kích thước bundle ban đầu và tăng tốc độ First Contentful Paint
const VideoPlayer = dynamic(() => import("./VideoPlayer"), {
  ssr: false,
  loading: () => <div className="w-full h-[75vh] md:h-screen bg-black flex items-center justify-center text-white/20">Đang tải trình phát...</div>
});

import { KKPhimDetail, getImageUrl, searchMovies } from '@/lib/kkphim';
import { useAuth } from "@/lib/useAuth";
import { useMovieStore } from "@/lib/useMovieStore";
import imageLoader from '@/lib/imageLoader';

const montserrat = Montserrat({ subsets: ['vietnamese'], weight: ['400', '700', '900'] });

// Helper functions được tối ưu hóa
const getBaseSlug = (s: string) => s.replace(/-(phan|season|ss|part|tap|p|s|chapter)-\d+.*$/i, '').replace(/-\d+$/, '').trim();
const getCleanName = (name: string) => name.split(/\s+[:\-(\[]?\s*(phần|season|ss|part|tập|chapter|movie|ova|special|p|s)\s+\d+/i)[0].replace(/\s+[:\-(\[]?\s*\d+\s*(:.*)?$/, '').replace(/\s+(X|IX|IV|V?I{1,3})$/i, '').replace(/[:\-\(\[\]\)]+$/, '').trim();
const toSlug = (str: string) => !str ? "" : str.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "").replace(/[đĐ]/g, "d").replace(/([^0-9a-z-\s])/g, "").replace(/(\s+)/g, "-").replace(/-+/g, "-").replace(/^-+|-+$/g, "");

const cleanServerName = (name: string) => {
  const n = name.toLowerCase();
  if (n.includes("lồng tiếng") || n.includes("lt")) return "Lồng tiếng";
  if (n.includes("thuyết minh") || n.includes("tm")) return "Thuyết minh";
  if (n.includes("nguồn c") || n.includes("nguonc")) return "Server dự phòng (H.Đề)";
  return "Vietsub";
};

const sortServersByPriority = (rawServers: any[]) => {
  if (!rawServers) return [];
  return [...rawServers].sort((a, b) => {
    const priority = (s: any) => {
      if (s.isNguonc) return 10; // Nguồn C luôn ở cuối cùng để làm backup
      const n = (s.server_name || "").toLowerCase();
      if (n.includes("lồng tiếng") || n.includes("lt")) return 1;
      if (n.includes("thuyết minh") || n.includes("tm")) return 2;
      return 3;
    };
    return priority(a) - priority(b);
  });
};

const getOnlyNumber = (epNum: any) => {
  if (!epNum) return "";
  const match = String(epNum).match(/\d+/);
  return match ? match[0] : epNum;
};

export default function MovieDetailClient({ initialMovie, slug }: { initialMovie: KKPhimDetail | null; slug: string }) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const { user } = useAuth();
  const { history, favorites, toggleFavorite: storeToggleFavorite, saveProgress: storeSaveProgress } = useMovieStore();

  // States
  const [movie, setMovie] = useState<KKPhimDetail | null>(initialMovie);
  const [servers, setServers] = useState<any[]>(sortServersByPriority(initialMovie?.servers || []));
  const [activeServer, setActiveServer] = useState(0);
  const [currentLink, setCurrentLink] = useState<string | null>(null);
  const [currentEpIndex, setCurrentEpIndex] = useState(0);
  const [initialTime, setInitialTime] = useState(0);
  const [mounted, setMounted] = useState(false);
  const [isHistoryLoaded, setIsHistoryLoaded] = useState(false);
  const [lastWatchedEpNum, setLastWatchedEpNum] = useState<string | null>(null);
  const [isPlaying, setIsPlaying] = useState(false);
  const [relatedSeasons, setRelatedSeasons] = useState<any[]>([]);
  const [openAudio, setOpenAudio] = useState(false);
  const [openSeason, setOpenSeason] = useState(false);
  const [isLoading, setIsLoading] = useState(!initialMovie);
  const [activeTab, setActiveTab] = useState<'episodes' | 'seasons' | 'audio' | 'actors'>('episodes');

  const previewPoster = searchParams.get('poster') || "";
  const previewThumb = searchParams.get('thumb') || "";

  // Performance: Sử dụng useMemo để tính toán URL ảnh ngay lập tức, tránh giật lag khi re-render
  const bannerSrc = useMemo(() => {
    return previewThumb || (movie ? getImageUrl((movie as any).thumb_url || movie.thumb) : "");
  }, [previewThumb, movie]);

  const posterSrc = useMemo(() => {
    return previewPoster || (movie ? getImageUrl(movie.poster) : "");
  }, [previewPoster, movie]);

  // Ref để tránh fetch Nguồn C nhiều lần cho cùng một phim
  const fetchedNguoncRef = useRef<string | null>(null);

  // Logic tích hợp Nguồn C làm Server 2
  const fetchNguonc = useCallback(async (movieName: string) => {
    if (fetchedNguoncRef.current === slug) return;
    const start = performance.now();
    try {
      const res = await fetch(`/api/nguonc?slug=${slug}&name=${encodeURIComponent(movieName)}`);
      if (res.ok) {
        const data = await res.json();
        if (data.servers && data.servers.length > 0) {
          setServers(prev => {
            const hasNguonc = prev.some(s => s.isNguonc);
            if (hasNguonc) return prev;
            return sortServersByPriority([...prev, ...data.servers]);
          });
        }
        fetchedNguoncRef.current = slug;
        console.log(`[Performance] Fetch Nguồn C took ${Math.round(performance.now() - start)}ms`);
      }
    } catch (e) {
      console.error("Lỗi fetch Nguồn C:", e);
    }
  }, [slug]);

  // Khởi tạo component
  useEffect(() => {
    setMounted(true);
    window.scrollTo({ top: 0, behavior: 'instant' });

    // Ưu tiên load từ cache để có trải nghiệm tức thì (Optimistic UI)
    if (!initialMovie) {
      const cached = localStorage.getItem(`kkphim_${slug}`);
      if (cached) {
        try {
          const cachedData = JSON.parse(cached);
          setMovie(cachedData);
          setServers(sortServersByPriority(cachedData.servers || []));
          setIsLoading(false);
          if (cachedData.name) fetchNguonc(cachedData.name);
        } catch (e) {}
      }
    }
  }, [slug, initialMovie, fetchNguonc]);

  // 1. Lấy dữ liệu phim bằng Hook SWR (Tự động cache, chống lag)
  const { detail: swrMovie } = useKKPhimDetail(initialMovie ? null : slug);

  // 2. Đồng bộ dữ liệu từ SWR và khởi chạy fetch Nguồn C
  useEffect(() => {
    const targetMovie = swrMovie || initialMovie;
    if (targetMovie) {
      setMovie(targetMovie);
      setServers(prev => {
        const nguoncServers = prev.filter(s => s.isNguonc);
        // Giữ lại Nguồn C nếu đã có, và merge với dữ liệu mới từ KKPhim
        return sortServersByPriority([...(targetMovie.servers || []), ...nguoncServers]);
      });
      setIsLoading(false);

      if (targetMovie.name) fetchNguonc(targetMovie.name);

      // Lưu cache local (Trì hoãn một chút để không block main thread)
      const timer = setTimeout(() => {
        try {
          localStorage.setItem(`kkphim_${slug}`, JSON.stringify({ ...targetMovie, cached_at: Date.now() }));
        } catch (e) {}
      }, 1000);
      return () => clearTimeout(timer);
    }
  }, [swrMovie, initialMovie, slug, fetchNguonc]);

  // 3. Tìm phần liên quan (Seasons) - Tối ưu logic search và cache
  useEffect(() => {
    if (!movie?.name) return;

    const handleRelatedSeasons = async () => {
      const baseName = getCleanName(movie.name);
      const baseSlug = getBaseSlug(slug);
      const currentCountry = movie.country || "";

      try {
        const searchRes = await searchMovies(baseName);
        let filtered = searchRes
          .filter((i: any) => {
            const itemBaseName = getCleanName(i.name).toLowerCase();
            const itemBaseSlug = getBaseSlug(i.slug);
            const itemCountrySlug = toSlug(i.country || "");
            const targetCountrySlug = toSlug(currentCountry || "");
            const isCountryMatch = !itemCountrySlug || !targetCountrySlug ||
                                  itemCountrySlug.includes(targetCountrySlug) ||
                                  targetCountrySlug.includes(itemCountrySlug);
            return (itemBaseName === baseName.toLowerCase() || itemBaseSlug === baseSlug) && isCountryMatch;
          })
          .map((i: any) => ({ name: i.name, slug: i.slug, country: i.country }))
          .filter((v: any, i: number, a: any[]) => a.findIndex((t: any) => t.slug === v.slug) === i);

        // Merge với current movie nếu chưa có
        if (!filtered.some((s: any) => s.slug === slug)) {
          filtered.push({ name: movie.name, slug: slug, country: currentCountry });
        }

        const finalSorted = filtered.sort((a: any, b: any) => a.name.localeCompare(b.name, undefined, { numeric: true }));
        setRelatedSeasons(finalSorted);

        // Cache seasons
        localStorage.setItem(`seasons_${baseSlug}_${currentCountry}`, JSON.stringify({
          expires: Date.now() + 24 * 60 * 60 * 1000,
          data: finalSorted
        }));
      } catch (error) {
        console.error("Lỗi tìm phần liên quan:", error);
      }
    };

    handleRelatedSeasons();
  }, [movie?.name, slug]);

  const isFavorite = favorites.some((item: any) => item.slug === slug);

  const toggleFavorite = async () => {
    storeToggleFavorite(slug, {
      slug,
      name: movie?.name || "",
      poster: posterSrc,
      thumb: bannerSrc,
      sub_type: servers[activeServer]?.server_name || "Vietsub",
      current_episode: (movie as any)?.current_episode || "Full",
      year: movie?.year,
      last_updated: Date.now()
    }, isFavorite, user?.uid);
  };

  const saveProgress = useCallback(async (epIndex: number, seconds: number = 0, duration: number = 0, shouldSync: boolean = false) => {
    const currentServer = servers[activeServer];
    if (!currentServer?.episodes?.[epIndex]) return;

    const ep = currentServer.episodes[epIndex];
    const epNum = getOnlyNumber(ep.episode_num);

    const historyData = {
      epIndex,
      epNum,
      seconds: Math.floor(isFinite(seconds) ? seconds : 0),
      duration: Math.floor(isFinite(duration) ? duration : 0),
      link: ep.link,
      name: movie?.name || "",
      poster: posterSrc,
      thumb: bannerSrc,
      sub_type: currentServer?.server_name || "Vietsub",
      current_episode: epNum,
      year: movie?.year || 2026,
      last_updated: Date.now()
    };

    storeSaveProgress(slug, historyData, user?.uid, shouldSync);
    setLastWatchedEpNum(epNum);
  }, [slug, servers, activeServer, movie, user, storeSaveProgress, bannerSrc, posterSrc]);

  // 4. Load lịch sử xem - Tối ưu logic để không bị nhảy tập khi đang load
  useEffect(() => {
    if (isPlaying || !servers || servers.length === 0) return;

    const currentServer = servers[activeServer];
    const episodes = currentServer?.episodes || [];
    if (episodes.length === 0) return;

    const saved = history[slug];
    let foundIndex = 0;
    let timeToSet = 0;
    let epNumToSet = getOnlyNumber(episodes[0].episode_num);

    if (saved) {
      const cleanSavedNum = getOnlyNumber(saved.epNum);
      const idx = episodes.findIndex((ep: any) => getOnlyNumber(ep.episode_num) === cleanSavedNum);

      if (idx !== -1) {
        foundIndex = idx;
        timeToSet = (saved.duration && saved.seconds > saved.duration * 0.95) ? 0 : (saved.seconds || 0);
        epNumToSet = cleanSavedNum;
      } else if (typeof saved.epIndex === 'number' && saved.epIndex < episodes.length) {
        foundIndex = saved.epIndex;
        epNumToSet = getOnlyNumber(episodes[foundIndex].episode_num);
      }
    }

    setCurrentEpIndex(foundIndex);
    setCurrentLink(episodes[foundIndex].link);
    setInitialTime(timeToSet);
    setLastWatchedEpNum(epNumToSet);
    setIsHistoryLoaded(true);
  }, [slug, activeServer, servers, history, isPlaying]);

  const handleNextEpisode = useCallback((explicitNextIndex?: number) => {
    const nextIdx = explicitNextIndex !== undefined ? explicitNextIndex : currentEpIndex + 1;
    const currentServer = servers[activeServer];

    if (currentServer?.episodes && nextIdx < currentServer.episodes.length) {
      const nextEp = currentServer.episodes[nextIdx];
      const epNum = getOnlyNumber(nextEp.episode_num);

      // Reset video link trước khi chuyển tập để VideoPlayer re-mount sạch sẽ
      setCurrentLink(null);

      setTimeout(() => {
        setCurrentEpIndex(nextIdx);
        setLastWatchedEpNum(epNum);
        setInitialTime(0);
        setCurrentLink(nextEp.link);
        setIsPlaying(true);
        saveProgress(nextIdx, 0, 0, true);
      }, 50);

      window.scrollTo({ top: 0, behavior: 'smooth' });
    } else {
      setIsPlaying(false);
    }
  }, [currentEpIndex, servers, activeServer, saveProgress]);

  const description = movie?.content || (movie as any)?.description || "";
  const tmdbInfo = movie?.tmdb || { id: movie?.tmdb_id, type: 'movie' };

  return (
    <main className={`${montserrat.className} min-h-screen bg-[#050505] text-white pb-32`}>
      <style dangerouslySetInnerHTML={{ __html: `
        .line-clamp-2 { display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
        .ep-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(45px, 1fr)); gap: 10px; }
        .scrollbar-hide::-webkit-scrollbar { display: none; }
      ` }} />

      {/* HERO SECTION */}
      <section className="relative w-full bg-black overflow-hidden mb-8 border-b border-white/5 transform-gpu">
        {isPlaying && currentLink ? (
          <div className="relative w-full h-[75vh] md:h-screen">
            <VideoPlayer
              key={currentLink}
              slug={slug}
              movieName={movie?.name || ""}
              videoUrl={currentLink}
              initialTime={initialTime}
              currentEpIndex={currentEpIndex}
              totalEpisodes={servers[activeServer]?.episodes?.length || 0}
              onClose={() => setIsPlaying(false)}
              onEnded={handleNextEpisode}
              saveProgress={saveProgress}
            />
          </div>
        ) : (
          <div className="relative w-full">
            {/* Nút quay lại */}
            <button
              onClick={() => router.back()}
              className="absolute top-6 left-6 md:left-12 z-[110] bg-black/40 backdrop-blur-xl p-2.5 rounded-full border border-white/10 hover:border-red-600 transition-all group shadow-2xl"
            >
              <svg className="w-5 h-5 group-hover:-translate-x-1 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}>
                <path d="M15.75 19.5L8.25 12l7.5-7.5" />
              </svg>
            </button>

            {/* BANNER ẢNH */}
            <div className="relative w-full h-[55vh] md:h-screen bg-black overflow-hidden">
              {(bannerSrc || posterSrc) && (
                <div className="absolute inset-0 w-full h-full">
                  {posterSrc && (
                    <div className="block md:hidden relative w-full h-full">
                      <Image loader={imageLoader} src={posterSrc} alt="Poster" fill sizes="100vw" quality={80} priority className="object-cover" style={{ objectPosition: 'center 20%' }} />
                    </div>
                  )}
                  {bannerSrc && (
                    <div className="hidden md:block relative w-full h-full">
                      <Image loader={imageLoader} src={bannerSrc} alt="Banner" fill sizes="100vw" quality={80} priority className="object-cover" style={{ objectPosition: 'center 20%' }} />
                    </div>
                  )}
                </div>
              )}
              <div className="absolute inset-0 bg-gradient-to-t from-black via-transparent to-black/20 z-10 md:hidden" />
            </div>

            {/* Desktop Info */}
            <div className="hidden md:flex absolute bottom-12 left-20 z-25 flex-col justify-end text-left items-start pointer-events-auto">
              <div className="max-w-4xl space-y-4">
                <h1 className="text-[35px] md:text-[45px] font-black uppercase italic leading-[1] text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)]">
                  {movie?.name || "..."}
                </h1>

                <div className="flex flex-wrap items-center gap-4">
                  <span className="px-2 py-0.5 bg-red-600 text-white text-[9px] font-black uppercase rounded italic tracking-widest shadow-lg">
                    {movie?.quality || 'FHD'}
                  </span>
                  <span className="text-[12px] font-black text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)]/70 italic uppercase tracking-wider">
                    {movie?.year}
                  </span>

                  {servers && servers.length > 0 ? (
                    servers.map((s: any, idx: number) => {
                      const label = cleanServerName(s.server_name);
                      const currentEpsCount = s.episodes?.length || 0;
                      const totalStr = movie?.episode_total ? movie.episode_total.toString().replace(/[^0-9]/g, '') : '';
                      const epDisplay = totalStr ? `${currentEpsCount}/${totalStr} Tập` : `${currentEpsCount} Tập`;

                      return (
                        <div key={idx} className="flex items-center gap-4">
                          <span className="w-1 h-1 rounded-full bg-white/20"></span>
                          <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                            {label} {epDisplay}
                          </span>
                        </div>
                      );
                    })
                  ) : (
                    movie?.lang && (
                      <div className="flex items-center gap-4">
                        <span className="w-1 h-1 rounded-full bg-white/20"></span>
                        <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                          {movie.lang}
                        </span>
                      </div>
                    )
                  )}

                  {movie?.imdb_score && movie.imdb_score !== "N/A" && (
                    <div className="flex items-center gap-1.5 bg-yellow-500/10 px-2 py-1 rounded-lg border border-yellow-500/20">
                      <svg className="w-3.5 h-3.5 text-yellow-500 fill-current" viewBox="0 0 20 20">
                        <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                      </svg>
                      <span className="text-yellow-500 font-black italic text-xs leading-none mt-0.5">{movie.imdb_score}</span>
                    </div>
                  )}

                  <button
                    onClick={toggleFavorite}
                    title={isFavorite ? "Bỏ yêu thích" : "Thêm vào yêu thích"}
                    className={`w-10 h-10 rounded-full flex items-center justify-center transition-all duration-300 backdrop-blur-md border active:scale-90 relative group ${
                      isFavorite
                        ? "bg-red-500/20 border-red-500/50 text-red-500 shadow-[0_0_20px_rgba(239,68,68,0.4),inset_0_1px_2px_rgba(255,255,255,0.2)]"
                        : "bg-white/5 border-white/20 text-white/60 hover:bg-white/15 hover:border-white/35 hover:text-white shadow-[0_8px_32px_0_rgba(0,0,0,0.3)]"
                    }`}
                  >
                    <svg
                      className={`w-5 h-5 transition-transform duration-300 group-hover:scale-110 ${isFavorite ? 'fill-current filter drop-shadow-[0_0_8px_rgba(239,68,68,0.6)]' : 'fill-none'}`}
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                      strokeWidth={isFavorite ? 0 : 2}
                    >
                      <path strokeLinecap="round" strokeLinejoin="round" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                    </svg>
                  </button>
                </div>

                {Array.isArray(movie?.category) && movie.category.length > 0 && (
                  <div className="text-[#F1E5AC]/80 text-xs font-bold italic tracking-wide uppercase">
                    {movie.category.slice(0, 2).map((c: any) => c.name || c.slug).join(" • ")}
                  </div>
                )}

                {description && (
                  <div className="text-white/60 text-[13px] md:text-[14px] font-medium line-clamp-3 leading-relaxed max-w-xl italic" dangerouslySetInnerHTML={{ __html: description }} />
                )}

                <div className="pt-2 w-full max-w-xl flex justify-center">
                  <button
                    disabled={!isHistoryLoaded || !currentLink}
                    onClick={() => setIsPlaying(true)}
                    className="bg-transparent border-2 border-white/80 text-white px-8 py-3.5 rounded-full font-black text-[11px] md:text-[12px] uppercase tracking-widest transition-all shadow-[0_0_20px_rgba(220,38,38,0.2)] inline-flex items-center gap-3 enabled:hover:bg-red-600 enabled:hover:text-white disabled:opacity-50 disabled:cursor-wait"
                  >
                    <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24">
                      <path d="M8 5v14l11-7z" />
                    </svg>
                    <span>
                      {!mounted || !lastWatchedEpNum
                        ? "Xem ngay"
                        : String(lastWatchedEpNum).toUpperCase() === "FULL"
                          ? "Xem tiếp"
                          : `Tiếp tục tập ${getOnlyNumber(lastWatchedEpNum)}`}
                    </span>
                  </button>
                </div>
              </div>
            </div>

            {/* Mobile Info */}
            <div className="flex md:hidden flex-col items-center text-center px-6 py-6 bg-black space-y-4">
              <h1 className="text-[28px] font-black uppercase italic leading-[1.1] text-[#F1E5AC] drop-shadow-[0_3px_10px_rgba(0,0,0,0.9)]">
                {movie?.name || "..."}
              </h1>

              <div className="flex flex-wrap items-center justify-center gap-3 text-[11px] font-semibold">
                <span className="px-2 py-0.5 bg-red-600 text-white text-[9px] font-black uppercase rounded italic tracking-widest shadow">
                  {movie?.quality || 'FHD'}
                </span>
                <span className="text-[12px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                  {movie?.year}
                </span>

                {servers && servers.length > 0 ? (
                  servers.map((s: any, idx: number) => {
                    const label = cleanServerName(s.server_name);
                    const currentEpsCount = s.episodes?.length || 0;
                    const totalStr = movie?.episode_total ? movie.episode_total.toString().replace(/[^0-9]/g, '') : '';
                    const epDisplay = totalStr ? `${currentEpsCount}/${totalStr} Tập` : `${currentEpsCount} Tập`;

                    return (
                      <div key={idx} className="flex items-center gap-2">
                        <span className="w-1 h-1 rounded-full bg-white/20"></span>
                        <span className="text-[11px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                          {label} {epDisplay}
                        </span>
                      </div>
                    );
                  })
                ) : (
                  movie?.lang && (
                    <div className="flex items-center gap-2">
                      <span className="w-1 h-1 rounded-full bg-white/20"></span>
                      <span className="text-[11px] font-black text-[#F1E5AC] italic uppercase tracking-wider">
                        {movie.lang}
                      </span>
                    </div>
                  )
                )}

                {movie?.imdb_score && movie.imdb_score !== "N/A" && (
                  <div className="flex items-center gap-1 bg-yellow-500/10 px-2 py-0.5 rounded-lg border border-yellow-500/20">
                    <svg className="w-3 h-3 text-yellow-500 fill-current" viewBox="0 0 20 20">
                      <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                    </svg>
                    <span className="text-yellow-500 font-black italic text-xs leading-none mt-0.5">{movie.imdb_score}</span>
                  </div>
                )}

                <button
                  onClick={toggleFavorite}
                  title={isFavorite ? "Bỏ yêu thích" : "Thêm vào yêu thích"}
                  className={`w-9 h-9 rounded-full flex items-center justify-center transition-all duration-300 backdrop-blur-md border active:scale-90 ${
                    isFavorite
                      ? "bg-red-500/20 border-red-500/50 text-red-500 shadow-[0_0_15px_rgba(239,68,68,0.4)]"
                      : "bg-white/5 border-white/20 text-white/60 hover:bg-white/15 hover:text-white"
                  }`}
                >
                  <svg
                    className={`w-4 h-4 transition-transform duration-300 ${isFavorite ? 'fill-current' : 'fill-none'}`}
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                    strokeWidth={isFavorite ? 0 : 2}
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                  </svg>
                </button>
              </div>

              {Array.isArray(movie?.category) && movie.category.length > 0 && (
                <div className="text-[#F1E5AC]/80 text-[11px] font-bold italic tracking-wide uppercase">
                  {movie.category.slice(0, 2).map((c: any) => c.name || c.slug).join(" • ")}
                </div>
              )}

              {description && (
                <p className="text-white/60 text-[12px] font-medium line-clamp-3 leading-relaxed italic max-w-xl">
                  {description.replace(/<[^>]*>?/gm, '')}
                </p>
              )}

              <div className="pt-2">
                <button
                  disabled={!isHistoryLoaded || !currentLink}
                  onClick={() => setIsPlaying(true)}
                  className="bg-transparent border-2 border-white/80 text-white px-8 py-3 rounded-full font-black text-[11px] uppercase tracking-widest inline-flex items-center gap-2.5 enabled:hover:bg-red-600 enabled:hover:text-white disabled:opacity-50 disabled:cursor-wait shadow-[0_0_15px_rgba(220,38,38,0.2)]"
                >
                  <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24">
                    <path d="M8 5v14l11-7z" />
                  </svg>
                  <span>
                    {!mounted || !lastWatchedEpNum
                      ? "Xem ngay"
                      : String(lastWatchedEpNum).toUpperCase() === "FULL"
                        ? "Xem tiếp"
                        : `Tiếp tục tập ${getOnlyNumber(lastWatchedEpNum)}`}
                  </span>
                </button>
              </div>
            </div>
          </div>
        )}
      </section>

      {/* SECTIONS BÊN DƯỚI (4 TABS) */}
      {mounted && (
        <div className="max-w-[1400px] mx-auto px-6 md:px-20 mt-16">
          <div className="flex items-center gap-3 sm:gap-6 border-b border-white/10 mb-8 overflow-x-auto scrollbar-hide">
            {['episodes', 'seasons', 'audio', 'actors'].map((tab) => (
              (tab !== 'seasons' || (relatedSeasons && relatedSeasons.length > 1)) && (
                <button
                  key={tab}
                  onClick={() => setActiveTab(tab as any)}
                  className={`pb-3 px-2 text-[11px] sm:text-xs font-black uppercase tracking-[0.2em] italic transition-all duration-300 relative whitespace-nowrap ${
                    activeTab === tab ? 'text-[#F1E5AC]' : 'text-white/40 hover:text-white/80'
                  }`}
                >
                  {tab === 'episodes' ? 'Tập phim' : tab === 'seasons' ? 'Phần phim' : tab === 'audio' ? 'Audio' : 'Diễn viên'}
                  {activeTab === tab && (
                    <span className="absolute bottom-0 left-0 w-full h-[2px] bg-[#F1E5AC] shadow-[0_0_8px_#F1E5AC]" />
                  )}
                </button>
              )
            ))}
          </div>

          {/* NỘI DUNG TỪNG TAB */}
          {activeTab === 'episodes' && (
            <div className="animate-in fade-in duration-300">
              <div className="flex items-center gap-4 mb-6">
                <h2 className="text-[10px] font-black uppercase tracking-[0.4em] text-white/20 italic">Chọn tập phim</h2>
                <div className="h-[1px] flex-1 bg-white/5"></div>
              </div>
              <div className="ep-grid">
                {servers[activeServer]?.episodes?.map((ep: any, i: number) => (
                  <button
                    key={i}
                    onClick={() => handleNextEpisode(i)}
                    className={`w-11 h-11 flex items-center justify-center rounded-full text-[11px] font-black border transition-all duration-300 ${
                      currentEpIndex === i
                        ? "bg-red-600 border-red-600 text-white shadow-[0_0_15px_rgba(220,38,38,0.5)] scale-110"
                        : "bg-[#0f0f0f] border-white/5 text-white/30 hover:border-red-600/40 hover:text-white"
                    }`}
                  >
                    {getOnlyNumber(ep.episode_num)}
                  </button>
                ))}
              </div>
            </div>
          )}

          {activeTab === 'seasons' && relatedSeasons && relatedSeasons.length > 1 && (
            <div className="animate-in fade-in duration-300 min-h-[220px]">
              <div className="flex flex-col sm:flex-row sm:items-center gap-3">
                <span className="text-[10px] font-black uppercase text-[#F1E5AC] italic tracking-widest">Chọn phần phim:</span>
                <div className="relative inline-block text-left min-w-[240px]">
                  <button
                    type="button"
                    onClick={() => { setOpenSeason(!openSeason); setOpenAudio(false); }}
                    className="w-full bg-[#121212] border border-white/10 hover:border-red-600/50 text-white text-xs font-bold py-3 px-4 rounded-xl flex items-center justify-between transition-all duration-300 shadow-lg"
                  >
                    <span className="truncate pr-2">{relatedSeasons.find((s: any) => s.slug === slug)?.name || "Chọn phần"}</span>
                    <svg className={`w-4 h-4 text-white/50 transition-transform duration-300 shrink-0 ${openSeason ? 'rotate-180 text-red-500' : ''}`} fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path d="M19 9l-7 7-7-7" strokeWidth={2.5} />
                    </svg>
                  </button>
                  {openSeason && (
                    <div className="absolute left-0 mt-2 w-full bg-[#121212] border border-white/10 rounded-xl shadow-2xl py-2 z-[100] max-h-60 overflow-y-auto backdrop-blur-xl animate-in fade-in zoom-in-95 duration-150">
                      {relatedSeasons.map((s: any, i: number) => {
                        const isCurrent = s.slug === slug;
                        return (
                          <button
                            key={i}
                            onClick={() => { setOpenSeason(false); if (!isCurrent) router.push(`/phim/${s.slug}`); }}
                            className={`w-full text-left px-4 py-2.5 text-xs font-medium transition-all flex items-center justify-between ${isCurrent ? "bg-red-600/20 text-red-500 font-bold" : "text-white/70 hover:bg-white/5 hover:text-white"}`}
                          >
                            <span>{s.name}</span>
                            {isCurrent && <span className="text-[10px] bg-red-600 text-white px-1.5 py-0.5 rounded uppercase">Đang xem</span>}
                          </button>
                        );
                      })}
                    </div>
                  )}
                </div>
              </div>
              {openSeason && <div className="fixed inset-0 z-40" onClick={() => setOpenSeason(false)} />}
            </div>
          )}

          {activeTab === 'audio' && (
            <div className="animate-in fade-in duration-300 min-h-[220px]">
              <div className="flex flex-col sm:flex-row sm:items-center gap-3">
                <span className="text-[10px] font-black uppercase text-[#F1E5AC] italic tracking-widest">Chọn nguồn phát (Audio):</span>
                <div className="relative inline-block text-left min-w-[240px]">
                  <button
                    type="button"
                    onClick={() => { setOpenAudio(!openAudio); setOpenSeason(false); }}
                    className="w-full bg-[#121212] border border-white/10 hover:border-red-600/50 text-white text-xs font-bold py-3 px-4 rounded-xl flex items-center justify-between transition-all duration-300 shadow-lg"
                  >
                    <span className="truncate pr-2">{cleanServerName(servers[activeServer]?.server_name || "Audio")}</span>
                    <svg className={`w-4 h-4 text-white/50 transition-transform duration-300 shrink-0 ${openAudio ? 'rotate-180 text-red-500' : ''}`} fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path d="M19 9l-7 7-7-7" strokeWidth={2.5} />
                    </svg>
                  </button>
                  {openAudio && (
                    <div className="absolute left-0 mt-2 w-full bg-[#121212] border border-white/10 rounded-xl shadow-2xl py-2 z-[100] max-h-60 overflow-y-auto backdrop-blur-xl animate-in fade-in zoom-in-95 duration-150">
                      {servers.map((s: any, i: number) => {
                        const isActive = activeServer === i;
                        return (
                          <button
                            key={i}
                            onClick={() => { setActiveServer(i); setOpenAudio(false); setActiveTab('episodes'); }}
                            className={`w-full text-left px-4 py-2.5 text-xs font-medium transition-all flex items-center justify-between ${isActive ? "bg-red-600/20 text-red-500 font-bold" : "text-white/70 hover:bg-white/5 hover:text-white"}`}
                          >
                            <span>{cleanServerName(s.server_name)}</span>
                            {isActive && <span className="w-2 h-2 rounded-full bg-red-500"></span>}
                          </button>
                        );
                      })}
                    </div>
                  )}
                </div>
              </div>
              {openAudio && <div className="fixed inset-0 z-40" onClick={() => setOpenAudio(false)} />}
            </div>
          )}

          {activeTab === 'actors' && (
            <div className="animate-in fade-in duration-300">
              <ActorList movie={movie} tmdbInfo={movie?.tmdb} />
            </div>
          )}
        </div>
      )}
    </main>
  );
}
