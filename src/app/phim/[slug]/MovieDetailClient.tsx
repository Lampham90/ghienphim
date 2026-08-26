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
import MovieLogoTitle from "@/components/MovieLogoTitle";

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

const getEpisodesArray = (server: any) => {
  if (!server) return [];
  return server.episodes || server.server_data || server.items || [];
};

const getEpisodeLink = (ep: any) => {
  if (!ep) return "";
  return ep.link || ep.link_m3u8 || ep.embed || ep.link_embed || "";
};

const extractNumber = (val: any) => {
  if (!val) return "1";
  const str = String(val);
  const match = str.match(/\d+/);
  return match ? parseInt(match[0], 10).toString() : str;
};

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

  // Kiểm tra preview truyền từ Home có PHẢI ảnh TMDB thật hay không
  // (Card ở Home có thể không có sẵn data tmdb -> rawPoster/rawThumb lúc đó là ảnh KKPhim fallback,
  // không phải TMDB, nên KHÔNG được coi là "đã có TMDB" trong trường hợp đó)
  const isPreviewPosterTmdb = /image\.tmdb\.org/.test(previewPoster);
  const isPreviewThumbTmdb = /image\.tmdb\.org/.test(previewThumb);

  // State để lưu trữ hình ảnh lấy từ API TMDB
  const [tmdbImages, setTmdbImages] = useState<{ backdrop: string | null; poster: string | null }>({
    backdrop: null,
    poster: null,
  });

  // Effect chạy ngầm để lấy ảnh chất lượng cao từ TMDB
  // ⚠️ CHỈ bỏ qua gọi API này khi ảnh preview truyền từ Home ĐÃ LÀ ảnh TMDB thật (đỡ tốn request thừa).
  // Nếu preview chỉ là ảnh KKPhim fallback (card ở Home chưa có sẵn TMDB), hoặc không có preview,
  // thì BẮT BUỘC vẫn phải fetch để tìm & nâng cấp lên ảnh TMDB thật ngay khi có.
  useEffect(() => {
    if (isPreviewPosterTmdb && isPreviewThumbTmdb) return; // Đã chắc chắn có ảnh TMDB thật từ Home rồi, khỏi fetch lại

    const fetchTmdbImages = async () => {
      if (!movie) return;
      
      const tmdbId = movie.tmdb?.id || (movie as any)?.id || "";
      const queryName = (movie as any).origin_name || movie.name || "";
      const tmdbType = movie.tmdb?.type || (movie as any)?.type || "movie"; 
      
      try {
        const res = await fetch(`/api/tmdb-logo?id=${tmdbId}&type=${tmdbType}&query=${encodeURIComponent(queryName)}`);
        if (res.ok) {
          const data = await res.json();
          setTmdbImages({
            backdrop: data.backdropUrl,
            poster: data.posterUrl
          });
        }
      } catch (error) {
        console.error("Lỗi lấy ảnh TMDB:", error);
      }
    };

    fetchTmdbImages();
  }, [movie?.tmdb?.id, movie?.name, isPreviewPosterTmdb, isPreviewThumbTmdb]);

  // Đồng bộ Banner/Backdrop — LUÔN ưu tiên TMDB (bắt buộc), KKPhim chỉ là fallback cuối cùng khi thật sự
  // không tìm được ảnh TMDB nào. Thứ tự:
  // 1. Preview truyền thẳng từ Home NẾU đã là ảnh TMDB thật -> hiển thị TỨC THÌ, không chờ.
  // 2. Ảnh tmdb có sẵn trong data phim (khi movie đã load xong).
  // 3. Ảnh tmdb fetch ngầm qua /api/tmdb-logo (tìm được match theo tên phim).
  // 4. Preview từ Home dù chỉ là KKPhim fallback -> vẫn hiển thị tạm trong lúc đang fetch TMDB ở bước 3.
  // 5. Fallback cuối cùng: KKPhim (ảnh mờ) khi hoàn toàn không tìm được ảnh TMDB nào.
  const bannerSrc = useMemo(() => {
    if (isPreviewThumbTmdb) return previewThumb;
    if (movie?.tmdb?.backdrop_path) {
      return `https://image.tmdb.org/t/p/original${movie.tmdb.backdrop_path}`;
    }
    if (tmdbImages.backdrop) return tmdbImages.backdrop;
    if (previewThumb) return previewThumb;
    if (!movie) return "";

    const rawThumb = (movie as any).thumb_url || movie.thumb || movie.poster;
    return getImageUrl(rawThumb);
  }, [previewThumb, isPreviewThumbTmdb, movie, tmdbImages.backdrop]);

  // Đồng bộ Poster - cùng thứ tự ưu tiên như Banner ở trên
  const posterSrc = useMemo(() => {
    if (isPreviewPosterTmdb) return previewPoster;
    if (movie?.tmdb?.poster_path) {
      return `https://image.tmdb.org/t/p/w500${movie.tmdb.poster_path}`;
    }
    if (tmdbImages.poster) return tmdbImages.poster;
    if (previewPoster) return previewPoster;
    if (!movie) return "";

    const rawPoster = movie.poster || (movie as any).poster_url;
    return getImageUrl(rawPoster);
  }, [previewPoster, isPreviewPosterTmdb, movie, tmdbImages.poster]);

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
          
          setMovie((prev) => {
            if ((!prev || !prev.name) && data.movieInfo) {
              return {
                ...data.movieInfo,
                name: data.movieInfo.name,
                origin_name: data.original_name || data.movieInfo.original_name || data.movieInfo.name,
                poster: previewPoster || data.movieInfo.poster_url || data.movieInfo.poster,
                thumb: previewThumb || data.movieInfo.thumb_url || data.movieInfo.thumb,
                content: data.movieInfo.description || data.movieInfo.content || "",
                year: data.movieInfo.year || new Date().getFullYear(),
              } as KKPhimDetail;
            }
            return prev;
          });

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
    [slug, previewPoster, previewThumb]
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

    const saved = history[slug];
    if (!saved) {
      setIsHistoryLoaded(true);
      return;
    }

    let targetServerIndex = 0;
    let foundIndex = 0;
    let timeToSet = 0;

    const cleanSavedNum = extractNumber(saved.epNum);

    if (saved.sub_type) {
      const matchedServerIdx = servers.findIndex(
        (s) => formatServerLabel(s).toLowerCase() === saved.sub_type.toLowerCase()
      );
      if (matchedServerIdx !== -1) {
        targetServerIndex = matchedServerIdx;
      }
    }

    const targetServer = servers[targetServerIndex];
    const episodes = getEpisodesArray(targetServer);

    if (episodes.length > 0) {
      const idx = episodes.findIndex((ep: any, i: number) => getEpNum(ep, i) === cleanSavedNum);
      if (idx !== -1) {
        foundIndex = idx;
      }
    }

    const epHistoryKey = getEpisodeHistoryKey(slug, cleanSavedNum);
    const epSaved = history[epHistoryKey] || saved;
    timeToSet = epSaved.duration && epSaved.seconds > epSaved.duration * 0.95 ? 0 : epSaved.seconds || 0;

    setActiveServerIndex(targetServerIndex);
    setCurrentEpIndex(foundIndex);
    setInitialTime(timeToSet);
    setIsHistoryLoaded(true);
  }, [slug, servers, history, isPlaying]);

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

  const forceMobileFullscreen = async () => {
    if (window.innerWidth < 1024) {
      const container = document.documentElement; 
      try {
        if (container.requestFullscreen) await container.requestFullscreen();
        else if ((container as any).webkitRequestFullscreen) await (container as any).webkitRequestFullscreen();
        
        const orientation = (screen as any).orientation || (screen as any).msOrientation;
        if (orientation && orientation.lock) {
          await orientation.lock('landscape').catch(() => {});
        }
      } catch (e) {
        console.log("Không thể ép fullscreen:", e);
      }
    }
  };

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
    forceMobileFullscreen();
    saveProgress(index, timeToSet, savedEpData?.duration || 0, true);
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  const handleServerChange = (newServerIndex: number) => {
    if (newServerIndex === activeServerIndex) return;

    const currentServer = servers[activeServerIndex];
    const currentEpisodes = getEpisodesArray(currentServer);
    const currentEp = currentEpisodes[currentEpIndex];
    const currentEpNum = getEpNum(currentEp, currentEpIndex);

    const targetServer = servers[newServerIndex];
    const targetEpisodes = getEpisodesArray(targetServer);
    
    let targetEpIdx = targetEpisodes.findIndex((ep: any, i: number) => getEpNum(ep, i) === currentEpNum);
    if (targetEpIdx === -1) targetEpIdx = 0;

    const targetEp = targetEpisodes[targetEpIdx];
    let timeToSet = 0;

    if (targetEp) {
      const targetEpNum = getEpNum(targetEp, targetEpIdx);
      const epHistoryKey = getEpisodeHistoryKey(slug, targetEpNum);
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
  const isFullMovie = currentEpisodes.length <= 1;

  const imdbRating = movie?.tmdb?.vote_average
    ? Number(movie.tmdb.vote_average).toFixed(1)
    : (movie as any)?.vote_average
    ? Number((movie as any).vote_average).toFixed(1)
    : (movie as any)?.imdb?.vote_average
    ? Number((movie as any).imdb.vote_average).toFixed(1)
    : null;

  const displayImdb = useMemo(() => {
    if (imdbRating) return imdbRating;
    const hash = slug.split('').reduce((acc, char) => acc + char.charCodeAt(0), 0);
    const randomScore = 7.1 + (hash % 15) * 0.1; 
    return randomScore.toFixed(1);
  }, [imdbRating, slug]);

  const movieLang = movie?.lang || (movie as any)?.language || "";

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
              key={slug}
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
              <svg className="w-5 h-5 group-hover:-translate-x-1 transition-transform text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}>
                <path d="M15.75 19.5L8.25 12l7.5-7.5" />
              </svg>
            </button>

            <div className="relative w-full h-[45vh] md:h-screen bg-black overflow-hidden">
              <div className="absolute inset-0 w-full h-full">
                {(bannerSrc || posterSrc) && (
                  <Image
                    loader={imageLoader}
                    src={bannerSrc || posterSrc}
                    alt={movie?.name || "Banner"}
                    fill
                    sizes="100vw"
                    quality={70}
                    priority
                    className="object-cover"
                    style={{ objectPosition: "center 20%" }}
                  />
                )}
              </div>
              <div className="absolute inset-0 bg-gradient-to-t from-[#050505] via-[#050505]/40 to-black/30 z-10" />
            </div>

            {/* DESKTOP INFO */}
            <div className="hidden md:flex absolute bottom-12 left-20 z-25 flex-col justify-end text-left items-start pointer-events-auto">
              <div className="max-w-4xl space-y-4">
                
                <MovieLogoTitle
                  tmdbId={movie?.tmdb?.id}
                  tmdbType={movie?.tmdb?.type || (movie as any)?.type}
                  title={movie?.name || "..."}
                  subTitle={(movie as any)?.origin_name || movie?.name}
                />

                <div className="flex flex-wrap items-center gap-2">
                  <div className="flex items-center gap-1.5 bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                    <svg className="w-3.5 h-3.5 fill-current text-yellow-400" viewBox="0 0 24 24">
                      <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z" />
                    </svg>
                    <span className="font-extrabold text-white">{displayImdb}</span>
                  </div>

                  <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                    {movie?.quality || "FHD"}
                  </span>

                  <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                    {movie?.year || "2026"}
                  </span>

                  {movieLang && (
                    <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                      {movieLang}
                    </span>
                  )}

                  {movie?.category && Array.isArray(movie.category) && movie.category.length > 0 && (
                    <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                      {movie.category.slice(0, 2).map((c: any) => c.name).join(", ")}
                    </span>
                  )}

                  {currentEpisodes && currentEpisodes.length > 0 && (
                    <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                      {currentEpisodes.length}/{movie?.episode_total || movie?.total_episodes || currentEpisodes.length} Tập
                    </span>
                  )}
                  
                  <button
                    onClick={toggleFavorite}
                    className={`h-[26px] px-2.5 rounded-md flex items-center justify-center transition-all border ml-1 backdrop-blur-md shadow-sm ${
                      isFavorite
                        ? "bg-red-500/20 border-red-500/50 text-red-500"
                        : "bg-white/10 border border-white/30 text-white hover:bg-white/20 hover:border-white/40"
                    }`}
                  >
                    <svg className={`w-3.5 h-3.5 ${isFavorite ? "fill-current" : "fill-none"}`} viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
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
                    onClick={() => {
                      setIsPlaying(true);
                      forceMobileFullscreen();
                    }}
                    className="bg-transparent border-2 border-white/80 text-white px-8 py-3.5 rounded-full font-black text-[12px] uppercase tracking-widest hover:bg-red-600 hover:border-red-600 transition-all disabled:opacity-50 shadow-xl"
                  >
                    {getWatchButtonLabel()}
                  </button>
                </div>
              </div> 
            </div> 
            
            {/* MOBILE INFO */}
            <div className="flex md:hidden flex-col items-center justify-center text-center px-6 py-6 bg-[#050505] space-y-4 w-full">
              
              <MovieLogoTitle
                tmdbId={movie?.tmdb?.id}
                tmdbType={movie?.tmdb?.type || (movie as any)?.type}
                title={movie?.name || "..."}
                subTitle={(movie as any)?.origin_name || movie?.name || ""}
              />

              <div className="flex flex-wrap items-center justify-center gap-2">
                <div className="flex items-center gap-1.5 bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                  <svg className="w-3.5 h-3.5 fill-current text-yellow-400" viewBox="0 0 24 24">
                    <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z" />
                  </svg>
                  <span className="font-extrabold text-white">{displayImdb}</span>
                </div>

                <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                  {movie?.quality || "FHD"}
                </span>

                <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                  {movie?.year || "2026"}
                </span>

                {movieLang && (
                  <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                    {movieLang}
                  </span>
                )}

                {movie?.category && Array.isArray(movie.category) && movie.category.length > 0 && (
                  <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                    {movie.category.slice(0, 2).map((c: any) => c.name).join(", ")}
                  </span>
                )}

                {currentEpisodes && currentEpisodes.length > 0 && (
                  <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider backdrop-blur-md shadow-sm">
                    {currentEpisodes.length}/{movie?.episode_total || movie?.total_episodes || currentEpisodes.length} Tập
                  </span>
                )}

                <button
                  onClick={toggleFavorite}
                  className={`h-[26px] px-2.5 rounded-md flex items-center justify-center transition-all border ml-1 backdrop-blur-md shadow-sm ${
                    isFavorite
                      ? "bg-red-500/20 border-red-500/50 text-red-500"
                      : "bg-white/10 border border-white/30 text-white hover:bg-white/20 hover:border-white/40"
                  }`}
                >
                  <svg className={`w-3.5 h-3.5 ${isFavorite ? "fill-current" : "fill-none"}`} viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                    <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                  </svg>
                </button>
              </div>

              {description && (
                <p className="text-white/60 text-[12px] font-medium line-clamp-3 leading-relaxed italic max-w-md">
                  {description.replace(/<[^>]*>?/gm, "")}
                </p>
              )}

              <div className="pt-2 w-full flex justify-center">
                <button
                  disabled={!isHistoryLoaded || !activeEpisode}
                  onClick={() => { 
                    setIsPlaying(true);
                    forceMobileFullscreen();
                  }}
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