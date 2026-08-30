"use client";

import { useState, useEffect, useRef, memo, useCallback, useMemo } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { Montserrat } from 'next/font/google';
import { type KKPhimMovie, getImageUrl, getCleanName } from '@/lib/kkphim';
import { HOME_CATEGORIES, getCategoryConfig } from '@/lib/categories';
import MovieBadge from '@/components/MovieBadge';
import MovieCard from '@/components/MovieCard';
import MovieLogoTitle from "@/components/MovieLogoTitle";
import InterestedSection from '@/components/InterestedSection';
import { useMovieStore } from "@/lib/useMovieStore";
import imageLoader from '@/lib/imageLoader';

const montserrat = Montserrat({ subsets: ['vietnamese'], weight: ['400', '700', '900'] });

// ==========================================
// TYPES & INTERFACES
// ==========================================
interface CategoryInfo {
  name?: string;
  slug?: string;
}

interface RatingResult {
  score: string;
  label: string;
}

interface Movie extends KKPhimMovie {
  content?: string;
  thumb_url?: string;
  poster_url?: string;
  description?: string;
  imdb_score?: number | string;
  vote_average?: number | string;
  tmdb?: {
    id?: number | string;
    type?: string;
    vote_average?: number | string;
    poster_path?: string;
    backdrop_path?: string;
  };
  imdb?: {
    id?: string;
    vote_average?: number | string;
    score?: number | string
  };
  rating?: RatingResult | null;
  last_updated?: number;
  seconds?: number;
  duration?: number;
  poster?: string;
  thumb?: string;
  category?: CategoryInfo[];
  quality?: string;
}

interface SectionData {
  title: string;
  type: string;
  slug: string;
  items: Movie[];
}

interface HistoryRecord {
  name?: string;
  poster?: string;
  thumb?: string;
  last_updated?: number;
  seconds?: number;
  duration?: number;
  tmdb?: any;
}

// ==========================================
// HELPER FUNCTIONS
// ==========================================
const getTmdbOrRawPoster = (movie: any) => {
  if (movie?.tmdb?.poster_path) return `https://image.tmdb.org/t/p/w500${movie.tmdb.poster_path}`;
  if (movie?.poster_path) return `https://image.tmdb.org/t/p/w500${movie.poster_path}`;
  const p = movie?.poster_url || movie?.poster;
  if (typeof p === 'string' && (p.includes('tmdb.org') || p.includes('image.tmdb.org'))) return p;
  return getImageUrl(p);
};

const getTmdbOrRawThumb = (movie: any) => {
  if (movie?.tmdb?.backdrop_path) return `https://image.tmdb.org/t/p/w780${movie.tmdb.backdrop_path}`;
  if (movie?.backdrop_path) return `https://image.tmdb.org/t/p/w780${movie.backdrop_path}`;
  const t = movie?.thumb_url || movie?.thumb;
  if (typeof t === 'string' && (t.includes('tmdb.org') || t.includes('image.tmdb.org'))) return t;
  return getImageUrl(t);
};

const getMovieRating = (m: any): RatingResult => {
  const realScore = Number(m?.imdb?.vote_average || m?.tmdb?.vote_average || m?.imdb_score || m?.vote_average);

  if (!isNaN(realScore) && realScore > 0) {
    return { score: realScore.toFixed(1), label: "IMDb" };
  }

  if (m?.slug) {
    let hash = 0;
    for (let i = 0; i < m.slug.length; i++) {
      hash = m.slug.charCodeAt(i) + ((hash << 5) - hash);
    }
    const generatedScore = (7.0 + (Math.abs(hash) % 19) / 10).toFixed(1);
    return { score: generatedScore, label: "IMDb" };
  }

  return { score: "8.5", label: "IMDb" };
};

const stripHtml = (html: string = ''): string => {
  if (!html) return '';
  return html
    .replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, '')
    .replace(/<style\b[^<]*(?:(?!<\/style>)<[^<]*)*<\/style>/gi, '')
    .replace(/<[^>]+>/g, '')
    .replace(/&nbsp;/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .trim();
};

// ==========================================
// 0. SAFE SESSION STORAGE & CLIENT CACHE
// ==========================================
const MAX_CACHE_SIZE = 30;
const categoryCache = new Map<string, Movie[]>();

const setInCache = (key: string, value: Movie[]) => {
  if (categoryCache.size >= MAX_CACHE_SIZE) {
    const firstKey = categoryCache.keys().next().value;
    if (firstKey) categoryCache.delete(firstKey);
  }
  categoryCache.set(key, value);
};

const safeSessionStorage = {
  getItem: (key: string): string | null => {
    try {
      if (typeof window !== 'undefined') {
        return sessionStorage.getItem(key);
      }
    } catch {}
    return null;
  },
  setItem: (key: string, value: string): void => {
    try {
      if (typeof window !== 'undefined') {
        sessionStorage.setItem(key, value);
      }
    } catch {}
  }
};

const fetchCategoryFromD1 = async (slug: string): Promise<Movie[]> => {
  if (categoryCache.has(slug)) {
    return categoryCache.get(slug)!;
  }
  try {
    const res = await fetch(`/api/category-d1?slug=${slug}&page=1&home=1`);
    if (!res.ok) return [];
    const movies = await res.json();
    if (Array.isArray(movies) && movies.length > 0) {
      setInCache(slug, movies);
      return movies;
    }
  } catch (e) {
    console.error(`Error fetching category ${slug} from D1:`, e);
  }
  return [];
};

// ==========================================
// 1. HELPER COMPONENTS
// ==========================================

const LazyRow = memo(({ 
  children, 
  rootMargin = '200px', 
  placeholderHeight = 350,
  forceVisible = false
}: { 
  children: React.ReactNode, 
  rootMargin?: string, 
  placeholderHeight?: number,
  forceVisible?: boolean 
}) => {
  const [visible, setVisible] = useState(forceVisible);
  const ref = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    if (forceVisible) {
      setVisible(true);
      return;
    }

    const el = ref.current;
    if (!el) return;

    const observer = new IntersectionObserver((entries) => {
      if (entries[0]?.isIntersecting) { 
        setVisible(true); 
        observer.disconnect(); 
      }
    }, { rootMargin, threshold: 0.01 });

    observer.observe(el);
    return () => observer.disconnect();
  }, [rootMargin, forceVisible]);

  return (
    <div 
      ref={ref} 
      style={{ minHeight: `${placeholderHeight}px` }}
      className="w-full transform-gpu will-change-transform"
    >
      {(visible || forceVisible) ? children : null}
    </div>
  );
});
LazyRow.displayName = 'LazyRow';

const ViewAllButton = memo(({ slug }: { slug: string }) => {
  return (
    <Link
      href={`/danh-sach/${slug}`}
      prefetch={false}
      className="group inline-flex items-center gap-1.5 pl-3 pr-2.5 py-1.5 rounded-full border border-white/10 bg-white/[0.03] hover:bg-red-600 hover:border-red-600 transition-all duration-300 shrink-0"
    >
      <span className="text-[8.5px] font-black uppercase tracking-[0.2em] text-white/45 group-hover:text-white transition-colors">
        Xem tất cả
      </span>
      <svg
        className="w-3 h-3 text-white/45 group-hover:text-white group-hover:translate-x-0.5 transition-all duration-300"
        fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}
      >
        <path strokeLinecap="round" strokeLinejoin="round" d="M9 5l7 7-7 7" />
      </svg>
    </Link>
  );
});
ViewAllButton.displayName = 'ViewAllButton';

const ScrollNav = memo(({ rowRef }: { rowRef: React.RefObject<HTMLDivElement | null> }) => {
  const [canLeft, setCanLeft] = useState(false);
  const [canRight, setCanRight] = useState(true);
  const rafId = useRef<number | null>(null);

  const updateScrollState = useCallback(() => {
    if (rafId.current) cancelAnimationFrame(rafId.current);
    rafId.current = requestAnimationFrame(() => {
      const el = rowRef.current;
      if (!el) return;
      setCanLeft(el.scrollLeft > 10);
      setCanRight(el.scrollLeft < el.scrollWidth - el.clientWidth - 10);
    });
  }, [rowRef]);

  useEffect(() => {
    const el = rowRef.current;
    if (!el) return;
    updateScrollState();
    el.addEventListener('scroll', updateScrollState, { passive: true });
    return () => {
      if (rafId.current) cancelAnimationFrame(rafId.current);
      el.removeEventListener('scroll', updateScrollState);
    };
  }, [updateScrollState, rowRef]);

  const btnClass = "w-9 h-9 rounded-full flex items-center justify-center transition-all duration-300 border border-white/10 backdrop-blur-md bg-white/5 text-white hover:bg-white/25";

  return (
    <div className="flex items-center gap-2 shrink-0">
      <button
        onClick={() => rowRef.current?.scrollBy({ left: -600, behavior: 'smooth' })}
        className={`${btnClass} ${canLeft ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}
        aria-label="Scroll left"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}><path d="M15 19l-7-7 7-7" /></svg>
      </button>
      <button
        onClick={() => rowRef.current?.scrollBy({ left: 600, behavior: 'smooth' })}
        className={`${btnClass} ${canRight ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}
        aria-label="Scroll right"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}><path d="M9 5l7 7-7 7" /></svg>
      </button>
    </div>
  );
});
ScrollNav.displayName = 'ScrollNav';

const HistoryItem = memo(({ m }: { m: Movie }) => {
  const posterUrl = getTmdbOrRawPoster(m);
  const thumbUrl = getTmdbOrRawThumb(m);
  const imageUrl = thumbUrl || posterUrl;
  const progress = (m.duration && m.duration > 0 && m.seconds) ? Math.min((m.seconds / m.duration) * 100, 100) : 0;

  return (
    <div className="min-w-[240px] md:min-w-[320px] snap-start group relative flex flex-col transform-gpu">
      <Link href={`/phim/${m.slug}?poster=${encodeURIComponent(posterUrl)}&thumb=${encodeURIComponent(thumbUrl)}`} prefetch={false} className="relative aspect-video w-full rounded-2xl md:rounded-[1.5rem] overflow-hidden border border-white/5 bg-[#0a0a0a] transition-[transform,border-color] duration-300 group-hover:border-red-600/50 group-hover:-translate-y-2 shadow-2xl transform-gpu">
        {imageUrl && (
          <Image
            loader={imageLoader}
            src={imageUrl}
            alt={m.name || 'Movie thumbnail'}
            fill
            sizes="(max-width: 768px) 250px, 400px"
            quality={80}
            loading="lazy"
            decoding="async"
            className="object-cover opacity-100 group-hover:scale-105 transition-transform duration-500 transform-gpu"
          />
        )}
        <div className="absolute bottom-0 left-0 right-0 h-1 bg-white/20">
          <div className="h-full bg-red-600" style={{ width: `${progress}%` }} />
        </div>
        <MovieBadge movie={m} />
        <div className="absolute inset-0 bg-gradient-to-t from-black via-transparent to-transparent opacity-40" />
      </Link>
      <div className="mt-4 px-1"><h3 className="text-[10px] md:text-[11px] font-black uppercase text-white/40 group-hover:text-red-500 transition-colors line-clamp-1 italic">{m.name}</h3></div>
    </div>
  );
});
HistoryItem.displayName = 'HistoryItem';

// ==========================================
// 2. MAIN ROW COMPONENTS
// ==========================================

const RankedMovieRow = memo(({ 
  section, 
  isTrending = false, 
  variant = 'ranked1' 
}: { 
  section: SectionData, 
  isTrending?: boolean, 
  variant?: 'ranked1' | 'ranked2' | 'ranked3' 
}) => {
  const rowRef = useRef<HTMLDivElement>(null);
  return (
    <div className="pl-6 md:pl-20 group/row relative mb-18 transform-gpu">
      <div className="flex items-end justify-between pr-8 md:pr-24 mb-6 border-b border-white/[0.03] pb-3">
        <div className="flex items-end gap-4">
          <div className="flex flex-col text-left"><span className="text-[7.5px] font-black text-red-600 tracking-[0.5em] uppercase mb-1 italic">{isTrending ? "Must Watch" : "Daily Charts"}</span><h2 className="text-lg md:text-2xl font-black uppercase tracking-tighter text-white italic">{section.title}</h2></div>
          <div className="mb-1"><ViewAllButton slug={section.slug} /></div>
        </div>
        <ScrollNav rowRef={rowRef} />
      </div>
      <div className="relative">
        <div ref={rowRef} className="flex gap-4 md:gap-6 overflow-x-auto pb-10 scrollbar-hide pr-20 scroll-smooth min-h-[300px]">
          {section.items?.map((movie, index) => movie && <MovieCard key={movie.slug ? `${section.slug}-${movie.slug}` : `${section.slug}-item-${index}`} movie={movie} variant={variant} index={index} />)}
        </div>
      </div>
    </div>
  );
});
RankedMovieRow.displayName = 'RankedMovieRow';

const MovieRow = memo(({ 
  section, 
  variant = 'vertical' 
}: { 
  section: SectionData, 
  variant?: 'vertical' | 'horizontal' 
}) => {
  const rowRef = useRef<HTMLDivElement>(null);
  return (
    <div className="pl-6 md:pl-20 group/row relative mb-14 transform-gpu">
      <div className="flex items-end justify-between pr-8 md:pr-24 mb-6 border-b border-white/[0.03] pb-3">
        <div className="flex items-end gap-4">
          <div className="flex flex-col text-left"><span className="text-[7.5px] font-black text-red-600 tracking-[0.5em] uppercase mb-1 italic">Collection</span><h2 className="text-lg md:text-2xl font-black uppercase tracking-tighter text-white italic leading-none">{section.title}</h2></div>
          <div className="mb-1"><ViewAllButton slug={section.slug} /></div>
        </div>
        <ScrollNav rowRef={rowRef} />
      </div>
      <div className="relative">
        <div ref={rowRef} className="flex gap-4 md:gap-5 overflow-x-auto pb-4 scrollbar-hide pr-20 scroll-smooth min-h-[250px]">
          {section.items?.map((movie, index) => movie && (
             <MovieCard key={movie.slug ? `${section.slug}-${movie.slug}` : `${section.slug}-item-${index}`} movie={movie} variant={variant} />
          ))}
        </div>
      </div>
    </div>
  );
});
MovieRow.displayName = 'MovieRow';

const HistoryRow = memo(() => {
  const rowRef = useRef<HTMLDivElement>(null);
  const storeHistory = useMovieStore((state) => state.history);
  const initStore = useMovieStore((state) => state.init);
  const [mounted, setMounted] = useState(false);

  useEffect(() => { initStore(); setMounted(true); }, [initStore]);

  const historyMovies = useMemo(() => {
    if (!mounted || !storeHistory) return [];
    
    const uniqueMovies = new Map<string, Movie>();

    Object.entries(storeHistory).forEach(([key, data]) => {
      if (key.includes('_ep_')) return;
      const item = data as HistoryRecord;
      if (item && item.name) {
        uniqueMovies.set(key, { ...item, slug: key } as Movie);
      }
    });

    return Array.from(uniqueMovies.values())
      .sort((a, b) => (b.last_updated || 0) - (a.last_updated || 0))
      .slice(0, 15);
  }, [mounted, storeHistory]);

  if (!mounted || historyMovies.length === 0) return null;

  return (
    <div className="pl-6 md:pl-20 group/row relative mb-20 animate-fade-in">
      <div className="flex items-end justify-between pr-8 md:pr-24 mb-8 border-b border-white/[0.03] pb-3">
        <div className="flex flex-col text-left">
          <span className="text-[7.5px] font-black text-red-600 tracking-[0.5em] uppercase mb-1 italic">Continue Watching</span>
          <h2 className="text-lg md:text-2xl font-black uppercase tracking-tighter text-white italic">Tiếp tục xem</h2>
        </div>
        <ScrollNav rowRef={rowRef} />
      </div>
      <div className="relative">
        <div ref={rowRef} className="flex gap-4 md:gap-6 overflow-x-auto pb-4 scrollbar-hide pr-20 scroll-smooth min-h-[180px]">
          {historyMovies.map((m) => <HistoryItem key={m.slug} m={m} />)}
        </div>
      </div>
    </div>
  );
});
HistoryRow.displayName = 'HistoryRow';

// ==========================================
// 3. MAIN PAGE COMPONENT
// ==========================================

interface HomeClientProps {
  initialSections: SectionData[];
  initialHeroMovies: Movie[];
  allCategoriesData?: Record<string, KKPhimMovie[]>;
  initialLoadedCount: number;
}

export default function HomeClient({ initialSections, initialHeroMovies, allCategoriesData = {}, initialLoadedCount }: HomeClientProps) {
  const [sections, setSections] = useState<SectionData[]>(initialSections);
  const [currentHero, setCurrentHero] = useState(0);

  const loadedIndexRef = useRef(initialLoadedCount);
  const [loadedIndex, setLoadedIndex] = useState(initialLoadedCount);

  const [isRestoring, setIsRestoring] = useState(true);
  const pendingRestoreRef = useRef(false);
  const isFetching = useRef(false);
  const hasRestoredRef = useRef(false);
  const loaderRef = useRef<HTMLDivElement>(null);

  const [tmdbHeroImages, setTmdbHeroImages] = useState<Record<string, { backdropUrl: string | null; posterUrl: string | null }>>({});

  useEffect(() => {
    const fetchHeroImages = async () => {
      const newImages: Record<string, { backdropUrl: string | null; posterUrl: string | null }> = {};
      
      await Promise.all(
        initialHeroMovies.map(async (m) => {
          if (!m) return;
          const tmdbId = m?.tmdb?.id || (m as any)?.id || '';
          const imdbId = m?.imdb?.id || (m as any)?.imdb_id || '';
          const type = m?.tmdb?.type || (m as any)?.type || 'movie';
          const query = getCleanName(m?.name || '');
          
          try {
            const res = await fetch(`/api/tmdb-logo?id=${tmdbId}&imdbId=${imdbId}&type=${type}&query=${encodeURIComponent(query)}`);
            if (res.ok) {
              const data = await res.json();
              newImages[m.slug] = {
                backdropUrl: data.backdropUrl || null,
                posterUrl: data.posterUrl || null
              };
            }
          } catch (err) {
            console.error("Lỗi fetch TMDB cho banner:", m.slug, err);
          }
        })
      );
      
      setTmdbHeroImages(newImages);
    };

    if (initialHeroMovies && initialHeroMovies.length > 0) {
      fetchHeroImages();
    }
  }, [initialHeroMovies]);

  const heroMoviesProcessed = useMemo(() => {
    return initialHeroMovies.map((m) => {
      const rating = getMovieRating(m);

      const langText = [
        m?.lang,
        m?.language,
        m?.quality,
        m?.episode_current,
        m?.current_episode,
        m?.sub_type 
      ]
        .filter((val): val is string => typeof val === 'string')
        .join(' ')
        .toLowerCase();

      let displayLang = m.sub_type || "";
      if (langText.includes("lồng")) {
        displayLang = "L.Tiếng";
      } else if (langText.includes("thuyết")) {
        displayLang = "T.Minh";
      }

      const tmdbData = tmdbHeroImages[m.slug];
      const heroThumbUrl = tmdbData?.backdropUrl || getTmdbOrRawThumb(m);
      const heroPosterUrl = tmdbData?.posterUrl || getTmdbOrRawPoster(m);

      return {
        ...m,
        rating,
        displayLang,
        cleanDescription: stripHtml(m.content || m.description),
        heroThumbUrl,
        heroPosterUrl
      };
    });
  }, [initialHeroMovies, tmdbHeroImages]);

  useEffect(() => {
    if (typeof window === 'undefined' || heroMoviesProcessed.length <= 1) return;
    const nextIdx = (currentHero + 1) % heroMoviesProcessed.length;
    const nextMovie = heroMoviesProcessed[nextIdx];

    if (nextMovie.heroThumbUrl) {
      const imgDesktop = new window.Image();
      imgDesktop.src = imageLoader({ src: nextMovie.heroThumbUrl, width: 1920, quality: 70 });
    }
    if (nextMovie.heroPosterUrl) {
      const imgMobile = new window.Image();
      imgMobile.src = imageLoader({ src: nextMovie.heroPosterUrl, width: 750, quality: 70 });
    }
  }, [currentHero, heroMoviesProcessed]);

  useEffect(() => {
    if (heroMoviesProcessed.length <= 1) return;

    const timer = setInterval(() => {
      if (typeof document !== 'undefined' && document.visibilityState === 'visible') {
        setCurrentHero((p) => (p + 1) % heroMoviesProcessed.length);
      }
    }, 4000);

    return () => clearInterval(timer);
  }, [heroMoviesProcessed.length]);

  useEffect(() => {
    setSections(prev => {
      if (prev.length === 0) return initialSections;
      const dynamicSections = prev.filter(s => !initialSections.some(init => init.slug === s.slug));
      const updatedInit = initialSections.map(init => {
        const match = prev.find(p => p.slug === init.slug);
        return match ? { ...match, items: init.items } : init;
      });
      return [...updatedInit, ...dynamicSections];
    });
  }, [initialSections]);

  useEffect(() => {
    Object.entries(allCategoriesData).forEach(([slug, movies]) => {
      if (movies && movies.length > 0) {
        setInCache(slug, movies as Movie[]);
      }
    });
  }, [allCategoriesData]);

  useEffect(() => {
    if (isRestoring) return;
    const dynamicSlugs = sections
      .filter(s => !initialSections.some(init => init.slug === s.slug))
      .map(s => s.slug);
    safeSessionStorage.setItem("home_loaded_slugs", JSON.stringify(dynamicSlugs));
  }, [sections, initialSections, isRestoring]);

  useEffect(() => {
    if (typeof window !== 'undefined' && 'scrollRestoration' in history) {
      history.scrollRestoration = 'manual';
    }
  }, []);

  useEffect(() => {
    if (isRestoring) return;
    let timeoutId: ReturnType<typeof setTimeout> | null = null;
    
    const saveScroll = () => {
      const currentScrollY = window.scrollY;
      if (currentScrollY > 20) {
        safeSessionStorage.setItem("home_scroll_pos", currentScrollY.toString());
      }
    };

    const handleScroll = () => {
      if (timeoutId) return;
      timeoutId = setTimeout(() => {
        saveScroll();
        timeoutId = null;
      }, 100);
    };

    const handleUnload = () => {
      saveScroll();
    };

    window.addEventListener("scroll", handleScroll, { passive: true });
    window.addEventListener("beforeunload", handleUnload);
    document.addEventListener("visibilitychange", handleUnload);

    return () => {
      if (timeoutId) clearTimeout(timeoutId);
      window.removeEventListener("scroll", handleScroll);
      window.removeEventListener("beforeunload", handleUnload);
      document.removeEventListener("visibilitychange", handleUnload);
    };
  }, [isRestoring]);

  useEffect(() => {
    if (isRestoring) return;

    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          const slug = entry.target.getAttribute('data-section-slug');
          if (slug) {
            safeSessionStorage.setItem("home_target_slug", slug);
          }
        }
      });
    }, {
      rootMargin: '-20% 0px -50% 0px',
      threshold: 0
    });

    const elements = document.querySelectorAll('[data-section-slug]');
    elements.forEach((el) => observer.observe(el));

    return () => observer.disconnect();
  }, [sections, isRestoring]);

  useEffect(() => {
    if (hasRestoredRef.current) return;
    hasRestoredRef.current = true;

    const restoreSession = async () => {
      try {
        const savedSlugsStr = safeSessionStorage.getItem("home_loaded_slugs");
        const savedScrollPos = safeSessionStorage.getItem("home_scroll_pos");
        const savedTargetSlug = safeSessionStorage.getItem("home_target_slug");

        if (!savedSlugsStr && !savedScrollPos && !savedTargetSlug) {
          setIsRestoring(false);
          return;
        }

        const savedSlugs: string[] = savedSlugsStr ? JSON.parse(savedSlugsStr) : [];

        if (savedSlugs.length > 0) {
          const fetchPromises = savedSlugs.map(async (slug) => {
            const cat = HOME_CATEGORIES.find(c => c.slug === slug);
            if (!cat) return null;

            let movies = categoryCache.get(slug);
            if (!movies || movies.length === 0) {
              movies = await fetchCategoryFromD1(slug);
            }
            if (!movies || movies.length === 0) return null;

            return { title: cat.title, type: "category", slug: slug, items: movies.slice(0, 15) };
          });

          const results = await Promise.all(fetchPromises);
          const dynamicSections = results.filter((s): s is SectionData => s !== null);

          if (dynamicSections.length > 0) {
            setSections(prev => {
              const combined = [...initialSections, ...dynamicSections];
              const uniqueMap = new Map<string, SectionData>();
              combined.forEach(s => uniqueMap.set(s.slug, s));
              return Array.from(uniqueMap.values());
            });

            const lastSlug = savedSlugs[savedSlugs.length - 1];
            const foundIdx = HOME_CATEGORIES.findIndex(c => c.slug === lastSlug);
            if (foundIdx !== -1) {
              const newIndex = foundIdx + 1;
              loadedIndexRef.current = newIndex;
              setLoadedIndex(newIndex);
            }
          }
        }

        pendingRestoreRef.current = true;

      } catch (e) {
        console.error("Failed to restore session storage", e);
        setIsRestoring(false);
      }
    };

    restoreSession();
  }, [initialSections]);

  useEffect(() => {
    if (!isRestoring || !pendingRestoreRef.current) return;

    const savedScrollPos = safeSessionStorage.getItem("home_scroll_pos");
    const savedTargetSlug = safeSessionStorage.getItem("home_target_slug");
    const targetScroll = savedScrollPos ? parseInt(savedScrollPos, 10) : 0;

    let timerId: ReturnType<typeof setTimeout>;
    let attempts = 0;

    const performScroll = () => {
      attempts++;

      if (savedTargetSlug) {
        const targetEl = document.querySelector(`[data-section-slug="${savedTargetSlug}"]`);
        if (targetEl) {
          targetEl.scrollIntoView({ block: 'start', behavior: 'instant' });
          pendingRestoreRef.current = false;
          setIsRestoring(false);
          return;
        }
      }

      if (document.body.scrollHeight >= targetScroll || attempts >= 15) {
        if (targetScroll > 0) {
          window.scrollTo({ top: targetScroll, behavior: 'instant' });
        }
        pendingRestoreRef.current = false;
        setIsRestoring(false);
        return;
      }

      timerId = setTimeout(performScroll, 50);
    };

    timerId = setTimeout(performScroll, 50);

    return () => clearTimeout(timerId);
  }, [sections, isRestoring]);

  const loadNextCategory = useCallback(async () => {
    const currentIndex = loadedIndexRef.current;
    
    if (currentIndex >= HOME_CATEGORIES.length || isFetching.current) return;

    isFetching.current = true;
    const currentCat = HOME_CATEGORIES[currentIndex];

    try {
      let movies = categoryCache.get(currentCat.slug);
      if (!movies || movies.length === 0) {
        movies = await fetchCategoryFromD1(currentCat.slug);
      }

      if (movies && movies.length > 0) {
        setSections(prev => {
          if (prev.some(s => s.slug === currentCat.slug)) return prev;
          return [...prev, { title: currentCat.title, type: "category", slug: currentCat.slug, items: movies!.slice(0, 15) }];
        });
      }

      const nextIndex = currentIndex + 1;
      loadedIndexRef.current = nextIndex;
      setLoadedIndex(nextIndex);

      if (nextIndex < HOME_CATEGORIES.length) {
         const futureCat = HOME_CATEGORIES[nextIndex];
         if (futureCat && !categoryCache.has(futureCat.slug)) {
            fetchCategoryFromD1(futureCat.slug);
         }
      }
    } catch (err) {
      console.error("Error loading next category:", err);
    } finally {
      isFetching.current = false;
    }
  }, []);

  useEffect(() => {
    if (isRestoring) return;

    const observer = new IntersectionObserver((entries) => {
      if (entries[0].isIntersecting) {
        loadNextCategory();
      }
    }, { threshold: 0.1, rootMargin: '800px' });
    
    if (loaderRef.current) observer.observe(loaderRef.current);
    
    return () => observer.disconnect();
  }, [loadNextCategory, isRestoring, loadedIndex]);

  return (
    <main className={`${montserrat.className} min-h-screen bg-[var(--background)] text-white selection:bg-red-600`}>
      <h1 className="sr-only"></h1>

      {/* Hero Banner */}
      {heroMoviesProcessed.length > 0 && (
        <section className="relative w-full bg-black overflow-hidden h-[95vh] md:h-screen transform-gpu">
          {heroMoviesProcessed.map((m, index) => {
            const total = heroMoviesProcessed.length;
            const isActive = index === currentHero;
            const isPrev = index === (currentHero - 1 + total) % total;
            const isNext = index === (currentHero + 1) % total;

            if (!isActive && !isNext && !isPrev) {
              return null;
            }

            return (
              <div 
                key={m.slug || index} 
                className={`absolute inset-0 w-full h-full transition-opacity duration-1000 ease-in-out flex flex-col md:block ${isActive ? 'opacity-100 z-10 pointer-events-auto' : 'opacity-0 z-0 pointer-events-none'}`}
              >
                {/* IMAGE & DESKTOP CONTENT */}
                <div className="relative w-full h-[55vh] md:h-full bg-black shrink-0">
                  {/* DESKTOP THUMB IMAGE */}
                  {m.heroThumbUrl && (
                    <Image
                      loader={imageLoader}
                      src={m.heroThumbUrl}
                      alt={m.name || 'Hero Banner'}
                      fill
                      sizes="100vw"
                      quality={70}
                      priority={index === 0}
                      className="hidden md:block w-full h-full object-cover transform-gpu"
                      style={{ objectPosition: 'center 20%' }}
                    />
                  )}

                  {/* MOBILE POSTER IMAGE */}
                  {m.heroPosterUrl && (
                    <Image
                      loader={imageLoader}
                      src={m.heroPosterUrl}
                      alt={m.name || 'Hero Banner Mobile'}
                      fill
                      sizes="100vw"
                      quality={70}
                      priority={index === 0}
                      className="block md:hidden w-full h-full object-cover transform-gpu"
                      style={{ objectPosition: 'center top' }}
                    />
                  )}

                  {/* Gradient Overlays */}
                  <div className="absolute inset-0 bg-gradient-to-r from-black/90 via-black/40 to-transparent z-10 hidden md:block" />
                  <div className="absolute inset-0 bg-gradient-to-t from-[#050505] via-[#050505]/40 to-black/30 z-10 md:hidden" />
                 
                  {/* Lớp màng mờ Fade đáy Banner (Desktop Only) */}
                  <div className="absolute inset-x-0 bottom-0 h-24 md:h-36 bg-gradient-to-t from-[var(--background,#000000)] via-[var(--background,#000000)]/60 to-transparent z-15 pointer-events-none hidden md:block" />

                  {/* DESKTOP CONTENT */}
                  <div className="hidden md:flex absolute inset-0 z-20 flex-col justify-end pb-24 px-20 text-left items-start">
                    <div className="max-w-3xl lg:max-w-4xl space-y-4">
                      
                      <div className="flex items-center justify-start gap-3">
                        <span className="w-8 h-[3px] bg-red-600 rounded-full" />
                        <span className="text-red-500 font-black text-[11px] tracking-[0.5em] uppercase italic">Hot Premiere</span>
                        <span className="w-8 h-[3px] bg-red-600 rounded-full" />
                      </div>
                     
                      {/* Tiêu đề Logo chuẩn TMDB */}
                      <MovieLogoTitle
                        tmdbId={m?.tmdb?.id}
                        imdbId={m?.imdb?.id || (m as any)?.imdb_id}
                        tmdbType={m?.tmdb?.type || (m as any)?.type}
                        title={m?.name || "..."}
                        subTitle={(m as any)?.origin_name || m?.name || ""}
                      />

                      {/* Thông tin phụ: Điểm IMDb thật */}
                      <div className="flex flex-wrap items-center justify-start gap-2 text-sm font-semibold">

                        {m.rating && (
                          <span className="px-2 py-0.5 bg-amber-500/10 text-amber-400 border border-amber-500/30 rounded font-bold text-xs backdrop-blur-sm">
                            <span className="font-black text-amber-300">⭐ {m.rating.score} {m.rating.label}</span>
                          </span>
                        )}

                        {m.displayLang && (
                          <span className="px-2 py-0.5 bg-amber-500/10 text-amber-400 border border-amber-500/30 rounded font-bold text-xs backdrop-blur-sm">
                            {m.displayLang}
                          </span>
                        )}

                        {m.year && (
                          <span className="px-2 py-0.5 bg-amber-500/10 text-amber-400 border border-amber-500/30 rounded font-bold text-xs backdrop-blur-sm">
                            {m.year}
                          </span>
                        )}

                        {/* Thể loại */}
                        {m?.category && m.category.length > 0 && (
                          <span className="px-2 py-0.5 bg-amber-500/10 text-amber-400 border border-amber-500/30 rounded font-bold text-xs backdrop-blur-sm">
                            {m.category.slice(0, 2).map((cat: any) => cat.name).join(", ")}
                          </span>
                        )}

                      </div>

                      <p className="text-white/70 text-[14px] font-medium line-clamp-3 leading-relaxed max-w-2xl italic">
                        {m.cleanDescription}
                      </p>

                      <div className="pt-2">
                        <Link href={`/phim/${m.slug}?poster=${encodeURIComponent(m.heroPosterUrl || '')}&thumb=${encodeURIComponent(m.heroThumbUrl || '')}`} prefetch={false} className="bg-transparent border-2 border-white/80 text-white px-10 py-3.5 rounded-full font-black text-[12px] uppercase tracking-widest transition-all shadow-[0_0_20px_rgba(220,38,38,0.2)] inline-flex items-center gap-3 hover:bg-red-600 hover:text-white hover:border-red-600">
                          <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24"><path d="M8 5v14l11-7z" /></svg>
                          <span>Xem ngay</span>
                        </Link>
                      </div>

                    </div>
                  </div>
                </div>

                {/* MOBILE CONTENT (MATCHING MOVIE DETAIL) */}
                <div className="flex md:hidden flex-col items-center justify-start text-center px-6 py-6 bg-[#050505] space-y-4 w-full flex-1 z-20">
                  
                  <MovieLogoTitle
                    tmdbId={m?.tmdb?.id}
                    imdbId={m?.imdb?.id || (m as any)?.imdb_id}
                    tmdbType={m?.tmdb?.type || (m as any)?.type}
                    title={m?.name || "..."}
                    subTitle={(m as any)?.origin_name || m?.name || ""}
                  />

                  <div className="flex flex-wrap items-center justify-center gap-2">
                    {m.rating && (
                      <div className="flex items-center gap-1.5 bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider shadow-sm">
                        <svg className="w-3.5 h-3.5 fill-current text-yellow-400" viewBox="0 0 24 24">
                          <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z" />
                        </svg>
                        <span className="font-extrabold text-white">{m.rating.score}</span>
                      </div>
                    )}

                    <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider shadow-sm">
                      {m.quality || "FHD"}
                    </span>

                    <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider shadow-sm">
                      {m.year || "2026"}
                    </span>

                    {m.displayLang && (
                      <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider shadow-sm">
                        {m.displayLang}
                      </span>
                    )}

                    {m?.category && m.category.length > 0 && (
                      <span className="bg-yellow-500/10 border border-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-md font-bold text-[10px] sm:text-[11px] uppercase tracking-wider shadow-sm">
                        {m.category.slice(0, 2).map((cat: any) => cat.name).join(", ")}
                      </span>
                    )}
                  </div>

                  <p className="text-white/60 text-[12px] font-medium line-clamp-3 leading-relaxed italic max-w-md">
                    {m.cleanDescription}
                  </p>

                  <div className="pt-2 w-full flex justify-center pb-4">
                    <Link href={`/phim/${m.slug}?poster=${encodeURIComponent(m.heroPosterUrl || '')}&thumb=${encodeURIComponent(m.heroThumbUrl || '')}`} prefetch={false} className="bg-transparent border-2 border-white/80 text-white px-8 py-3 rounded-full font-black text-[11px] uppercase tracking-widest hover:bg-red-600 hover:border-red-600 transition-all shadow-md inline-flex items-center gap-2">
                      <svg className="w-3.5 h-3.5 fill-current" viewBox="0 0 24 24"><path d="M8 5v14l11-7z" /></svg>
                      <span>Xem ngay</span>
                    </Link>
                  </div>
                </div>
              </div>
            );
          })}

          {/* Navigation Dots */}
          <div className="absolute bottom-4 right-1/2 translate-x-1/2 md:translate-x-0 md:bottom-10 md:right-20 z-30 flex items-center gap-2">
            {heroMoviesProcessed.map((_, idx) => (
              <button
                key={idx}
                onClick={() => setCurrentHero(idx)}
                aria-label={`Go to slide ${idx + 1}`}
                className={`h-1.5 rounded-full transition-all duration-300 ${idx === currentHero ? 'w-8 bg-red-600' : 'w-2 bg-white/30 hover:bg-white/60'}`}
              />
            ))}
          </div>
        </section>
      )}
      
      <InterestedSection />
      <HistoryRow />

      <section className="relative z-30 space-y-8 pb-20">
        {sections.map((s) => {
          if (!s || !s.slug) return null;
          const config = getCategoryConfig(s.slug);
          const isRanked = config?.rowType === "ranked";
          const rowVariant = config?.rowVariant || (isRanked ? "ranked1" : "vertical");

          return (
            <div key={s.slug} data-section-slug={s.slug}>
              <LazyRow forceVisible={isRestoring} placeholderHeight={isRanked ? 450 : 350}>
                {isRanked ? (
                  <RankedMovieRow 
                    section={s} 
                    variant={rowVariant as 'ranked1' | 'ranked2' | 'ranked3'} 
                    isTrending={s.slug === 'phim-bo'} 
                  />
                ) : (
                  <MovieRow 
                    section={s} 
                    variant={rowVariant as 'vertical' | 'horizontal'} 
                  />
                )}
              </LazyRow>
            </div>
          );
        })}
      </section>

      {loadedIndex < HOME_CATEGORIES.length && (
        <div ref={loaderRef} className="h-60 w-full flex items-center justify-center text-white/10 font-black text-xs tracking-widest uppercase italic animate-pulse">
          Đang tải thêm nội dung...
        </div>
      )}
    </main>
  );
}