"use client";

import { useState, useEffect, useRef, memo, useCallback, useMemo } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { Montserrat } from 'next/font/google';
import { type KKPhimMovie, getImageUrl } from '@/lib/kkphim';
import { HOME_CATEGORIES, getCategoryConfig } from '@/lib/categories';
import MovieBadge from '@/components/MovieBadge';
import MovieCard from '@/components/MovieCard';
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

interface Movie extends KKPhimMovie {
  content?: string;
  thumb_url?: string;
  poster_url?: string;
  description?: string;
  imdb_score?: number | string;
  vote_average?: number | string;
  tmdb?: { vote_average?: number | string };
  last_updated?: number;
  seconds?: number;
  duration?: number;
  poster?: string;
  thumb?: string;
  category?: CategoryInfo[];
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
}

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
  const imageUrl = getImageUrl(m.thumb || m.poster);
  const progress = (m.duration && m.duration > 0 && m.seconds) ? Math.min((m.seconds / m.duration) * 100, 100) : 0;

  return (
    <div className="min-w-[240px] md:min-w-[320px] snap-start group relative flex flex-col transform-gpu">
      <Link href={`/phim/${m.slug}?poster=${encodeURIComponent(m.poster || m.thumb || '')}&thumb=${encodeURIComponent(m.thumb || m.poster || '')}`} prefetch={false} className="relative aspect-video w-full rounded-2xl md:rounded-[1.5rem] overflow-hidden border border-white/5 bg-[#0a0a0a] transition-[transform,border-color] duration-300 group-hover:border-red-600/50 group-hover:-translate-y-2 shadow-2xl transform-gpu">
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
        <div ref={rowRef} className="flex gap-4 md:gap-6 overflow-x-auto pb-10 scrollbar-hide snap-x snap-mandatory pr-20 scroll-smooth min-h-[300px]">
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
        <div ref={rowRef} className="flex gap-4 md:gap-5 overflow-x-auto pb-4 scrollbar-hide snap-x snap-mandatory pr-20 scroll-smooth min-h-[250px]">
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
      if (item && item.name && (item.poster || item.thumb)) {
        const cleanName = item.name.trim().toLowerCase();

        if (uniqueMovies.has(cleanName)) {
          const existing = uniqueMovies.get(cleanName)!;
          if ((item.last_updated || 0) > (existing.last_updated || 0)) {
            uniqueMovies.set(cleanName, { slug: key, ...item });
          }
        } else {
          uniqueMovies.set(cleanName, { slug: key, ...item });
        }
      }
    });

    return Array.from(uniqueMovies.values())
      .sort((a, b) => (b.last_updated || 0) - (a.last_updated || 0))
      .slice(0, 10);
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
        <div ref={rowRef} className="flex gap-4 md:gap-6 overflow-x-auto pb-4 scrollbar-hide snap-x snap-mandatory pr-20 scroll-smooth min-h-[180px]">
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
  const [isHoveredHero, setIsHoveredHero] = useState(false);

  const loadedIndexRef = useRef(initialLoadedCount);
  const [loadedIndex, setLoadedIndex] = useState(initialLoadedCount);

  const [isRestoring, setIsRestoring] = useState(true);
  const pendingRestoreRef = useRef(false);
  const isFetching = useRef(false);
  const hasRestoredRef = useRef(false);
  const loaderRef = useRef<HTMLDivElement>(null);

  // Memoize Hero Movies - Tách biệt URL Thumb (Desktop) và Poster (Mobile)
  const heroMoviesProcessed = useMemo(() => {
    return initialHeroMovies.map((m) => {
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

      let displayQuality = m.quality || 'FHD';
      if (displayQuality.toLowerCase().includes("lồng") || displayQuality.toLowerCase().includes("thuyết")) {
         displayQuality = "FHD";
      }

      // Desktop dùng Thumb (Ngang), Mobile dùng Poster (Dọc)
      const heroThumbUrl = getImageUrl(m.thumb_url || m.thumb || m.poster);
      const heroPosterUrl = getImageUrl(m.poster || m.poster_url || m.thumb_url || m.thumb);

      return {
        ...m,
        displayLang,
        displayQuality,
        cleanDescription: stripHtml(m.content || m.description),
        heroThumbUrl,
        heroPosterUrl
      };
    });
  }, [initialHeroMovies]);

  // Preload Slide kế tiếp (Bao gồm cả Thumb cho Desktop và Poster cho Mobile)
  useEffect(() => {
    if (typeof window === 'undefined' || heroMoviesProcessed.length <= 1) return;
    const nextIdx = (currentHero + 1) % heroMoviesProcessed.length;
    const nextMovie = heroMoviesProcessed[nextIdx];

    if (nextMovie) {
      if (nextMovie.heroThumbUrl) {
        const imgDesktop = new window.Image();
        imgDesktop.src = imageLoader({ src: nextMovie.heroThumbUrl, width: 1920, quality: 80 });
      }
      if (nextMovie.heroPosterUrl) {
        const imgMobile = new window.Image();
        imgMobile.src = imageLoader({ src: nextMovie.heroPosterUrl, width: 750, quality: 80 });
      }
    }
  }, [currentHero, heroMoviesProcessed]);

  // Auto Hero Slider với Pause on Hover
  useEffect(() => {
    if (heroMoviesProcessed.length <= 1 || isHoveredHero) return;

    const timer = setInterval(() => {
      if (typeof document !== 'undefined' && document.visibilityState === 'visible') {
        setCurrentHero((p) => (p + 1) % heroMoviesProcessed.length);
      }
    }, 7000);

    return () => clearInterval(timer);
  }, [heroMoviesProcessed.length, isHoveredHero]);

  // Sync initialSections khi Revalidate
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

  // Cache Props
  useEffect(() => {
    Object.entries(allCategoriesData).forEach(([slug, movies]) => {
      if (movies && movies.length > 0) {
        setInCache(slug, movies as Movie[]);
      }
    });
  }, [allCategoriesData]);

  // Sync Session Slugs
  useEffect(() => {
    if (isRestoring) return;
    const dynamicSlugs = sections
      .filter(s => !initialSections.some(init => init.slug === s.slug))
      .map(s => s.slug);
    safeSessionStorage.setItem("home_loaded_slugs", JSON.stringify(dynamicSlugs));
  }, [sections, initialSections, isRestoring]);

  // Disable Browser Native Scroll Restoration
  useEffect(() => {
    if (typeof window !== 'undefined' && 'scrollRestoration' in history) {
      history.scrollRestoration = 'manual';
    }
  }, []);

  // Save Scroll Position
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

  // Observe Active Section
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

  // Restore Session Data
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

  // Restore Scroll Position
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

  // Infinite Scroll Trigger
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
      <h1 className="sr-only">Xem Phim Mới Cập Nhật - Phim Hay Vietsub Thuyết Minh HD</h1>

      {/* Hero Banner: Desktop hiển thị Thumb, Mobile hiển thị Poster */}
      {heroMoviesProcessed.length > 0 && (
        <section 
          className="relative w-full bg-black overflow-hidden mb-8 border-b border-white/5 h-[62vh] md:h-screen transform-gpu"
          onMouseEnter={() => setIsHoveredHero(true)}
          onMouseLeave={() => setIsHoveredHero(false)}
        >
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
                className={`absolute inset-0 w-full h-full transition-opacity duration-1000 ease-in-out ${isActive ? 'opacity-100 z-10 pointer-events-auto' : 'opacity-0 z-0 pointer-events-none'}`}
              >
                <div className="relative w-full h-full bg-black">
                  {/* DESKTOP THUMB IMAGE (Ẩn trên Mobile) */}
                  {m.heroThumbUrl && (
                    <Image
                      loader={imageLoader}
                      src={m.heroThumbUrl}
                      alt={m.name || 'Hero Banner'}
                      fill
                      sizes="100vw"
                      priority={index === 0}
                      className="hidden md:block w-full h-full object-cover transform-gpu"
                      style={{ objectPosition: 'center 20%' }}
                    />
                  )}

                  {/* MOBILE POSTER IMAGE (Hiện trên Mobile, Ẩn trên Desktop) */}
                  {m.heroPosterUrl && (
                    <Image
                      loader={imageLoader}
                      src={m.heroPosterUrl}
                      alt={m.name || 'Hero Banner Mobile'}
                      fill
                      sizes="100vw"
                      priority={index === 0}
                      className="block md:hidden w-full h-full object-cover transform-gpu"
                      style={{ objectPosition: 'center top' }}
                    />
                  )}

                  {/* Gradient Overlay Tối Ưu Tương Phản Nhìn Rõ Nội Dung */}
                  <div className="absolute inset-0 bg-gradient-to-r from-black/90 via-black/30 to-transparent z-10 hidden md:block" />
                  <div className="absolute inset-0 bg-gradient-to-t from-black via-black/70 to-black/30 z-10 md:hidden" />
                 
                  {/* HERO CONTENT */}
                  <div className="absolute inset-0 z-20 flex flex-col justify-end pb-8 px-6 md:pb-32 md:px-20 text-center md:text-left items-center md:items-start">
                    <div className="max-w-2xl space-y-2 md:space-y-4">
                      <div className="flex items-center justify-center md:justify-start gap-2 md:gap-3">
                        <span className="w-6 md:w-8 h-[2px] md:h-[3px] bg-red-600 rounded-full" />
                        <span className="text-red-500 font-black text-[9px] md:text-[11px] tracking-[0.4em] md:tracking-[0.5em] uppercase italic">Hot Premiere</span>
                        <span className="w-6 md:w-8 h-[2px] md:h-[3px] bg-red-600 rounded-full" />
                      </div>
                     
                      <h2 className="text-[22px] md:text-[45px] font-black uppercase italic leading-[1.1] md:leading-[1] text-[#F1E5AC] drop-shadow-[0_5px_15px_rgba(0,0,0,0.9)] line-clamp-1 md:line-clamp-none">
                        {m.name || "..."}
                      </h2>

                      <div className="flex flex-wrap items-center justify-center md:justify-start gap-1.5 md:gap-2 text-[10px] md:text-sm font-semibold">
                        <span className="px-2 py-0.5 bg-red-600 text-white text-[8px] md:text-[9px] font-black uppercase rounded italic tracking-widest shadow-lg">
                          {m.displayQuality}
                        </span>
                        {m.displayLang && (
                          <span className="px-1.5 py-0.5 bg-red-600/80 text-white rounded font-bold text-[9px] md:text-xs">
                            {m.displayLang}
                          </span>
                        )}
                        {(m.imdb_score || m.vote_average || m.tmdb?.vote_average) && (
                          <span className="px-1.5 py-0.5 bg-amber-500/90 text-black rounded font-black text-[9px] md:text-xs flex items-center gap-1">
                            ⭐ {m.imdb_score || m.vote_average || m.tmdb?.vote_average}
                          </span>
                        )}
                        {m.year && (
                          <span className="px-1.5 py-0.5 bg-white/20 text-white rounded text-[9px] md:text-xs backdrop-blur-sm">
                            {m.year}
                          </span>
                        )}
                      </div>

                      <p className="text-white/70 text-[11px] md:text-[14px] font-medium line-clamp-2 md:line-clamp-3 leading-snug md:leading-relaxed max-w-xl italic">
                        {m.cleanDescription}
                      </p>

                      <div className="pt-1 md:pt-2">
                        <Link href={`/phim/${m.slug}`} prefetch={false} className="bg-transparent border-2 border-white/80 text-white px-6 md:px-10 py-2 md:py-3.5 rounded-full font-black text-[10px] md:text-[12px] uppercase tracking-widest transition-all shadow-[0_0_20px_rgba(220,38,38,0.2)] inline-flex items-center gap-2 md:gap-3 hover:bg-red-600 hover:text-white">
                          <svg className="w-3.5 h-3.5 md:w-4 md:h-4 fill-current" viewBox="0 0 24 24"><path d="M8 5v14l11-7z" /></svg>
                          <span>Xem ngay</span>
                        </Link>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            );
          })}

          {/* Navigation Dots */}
          <div className="absolute bottom-3 right-1/2 translate-x-1/2 md:translate-x-0 md:bottom-10 md:right-20 z-30 flex items-center gap-2">
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