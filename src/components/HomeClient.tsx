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

interface Movie extends KKPhimMovie {
  content?: string;
  thumb_url?: string;
}

interface SectionData {
  title: string;
  type: string;
  slug: string;
  items: Movie[];
}

// ==========================================
// 0. CLIENT IN-MEMORY CACHE & SAFE STORAGE
// ==========================================
const categoryCache = new Map<string, Movie[]>();

const safeSessionStorage = {
  getItem: (key: string) => {
    try { return sessionStorage.getItem(key); } catch { return null; }
  },
  setItem: (key: string, value: string) => {
    try { sessionStorage.setItem(key, value); } catch {}
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
      categoryCache.set(slug, movies);
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

const LazyRow = memo(({ children, rootMargin = '1000px', placeholderHeight = 500 }: { children: React.ReactNode, rootMargin?: string, placeholderHeight?: number }) => {
  const [mounted, setMounted] = useState(false);
  const [visible, setVisible] = useState(false);
  const ref = useRef<HTMLDivElement | null>(null);

  useEffect(() => { setMounted(true); }, []);
  useEffect(() => {
    if (!mounted) return;
    const el = ref.current;
    if (!el) return;
    const observer = new IntersectionObserver((entries) => {
      if (entries[0]?.isIntersecting) { setVisible(true); observer.disconnect(); }
    }, { rootMargin, threshold: 0.01 });
    observer.observe(el);
    return () => observer.disconnect();
  }, [mounted, rootMargin]);

  return (
    <div ref={ref} className="min-h-[200px] transform-gpu will-change-transform">
      {mounted && visible ? children : <div style={{ height: placeholderHeight }} className="w-full" />}
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

const HistoryItem = memo(({ m }: { m: any }) => {
  const imageUrl = getImageUrl(m.thumb || m.poster);
  const progress = (m.duration && m.duration > 0) ? Math.min((m.seconds / m.duration) * 100, 100) : 0;

  return (
    <div className="min-w-[240px] md:min-w-[320px] snap-start group relative flex flex-col transform-gpu">
      <Link href={`/phim/${m.slug}?poster=${encodeURIComponent(m.poster || m.thumb || '')}&thumb=${encodeURIComponent(m.thumb || m.poster || '')}`} prefetch={false} className="relative aspect-video w-full rounded-2xl md:rounded-[1.5rem] overflow-hidden border border-white/5 bg-[#0a0a0a] transition-[transform,border-color] duration-300 group-hover:border-red-600/50 group-hover:-translate-y-2 shadow-2xl transform-gpu">
        {imageUrl && (
          <Image
            loader={imageLoader}
            src={imageUrl}
            alt={m.name}
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

const RankedMovieRow = memo(({ section, isTrending = false, variant = 'ranked1' }: { section: SectionData, isTrending?: boolean, variant?: 'ranked1' | 'ranked2' | 'ranked3' }) => {
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
          {section.items?.map((movie, index) => movie && <MovieCard key={`${movie.slug}-${index}`} movie={movie} variant={variant} index={index} />)}
        </div>
      </div>
    </div>
  );
});
RankedMovieRow.displayName = 'RankedMovieRow';

const MovieRow = memo(({ section, variant = 'vertical' }: { section: SectionData, variant?: 'vertical' | 'horizontal' }) => {
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
             <MovieCard key={`${movie.slug}-${index}`} movie={movie} variant={variant} />
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
    return Object.entries(storeHistory)
      .map(([slug, data]: [string, any]) => ({ slug, ...data }))
      .filter(item => item && item.name && (item.poster || item.thumb))
      .sort((a, b) => (b.last_updated || 0) - (a.last_updated || 0))
      .slice(0, 10);
  }, [mounted, storeHistory]);

  if (!mounted || historyMovies.length === 0) return null;

  return (
      <div className="pl-6 md:pl-20 group/row relative mb-20">
        <div className="flex items-end justify-between pr-8 md:pr-24 mb-8 border-b border-white/[0.03] pb-3">
          <div className="flex flex-col text-left">
            <span className="text-[7.5px] font-black text-red-600 tracking-[0.5em] uppercase mb-1 italic">Continue Watching</span>
            <h2 className="text-lg md:text-2xl font-black uppercase tracking-tighter text-white italic">Tiếp tục xem</h2>
          </div>
          <ScrollNav rowRef={rowRef} />
        </div>
        <div className="relative">
          <div ref={rowRef} className="flex gap-4 md:gap-6 overflow-x-auto pb-4 scrollbar-hide snap-x snap-mandatory pr-20 scroll-smooth">
            {historyMovies.map((m, index) => <HistoryItem key={`${m.slug}-${index}`} m={m} />)}
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
  
  // SỬ DỤNG REF KẾT HỢP STATE ĐỂ FIX INFINITE LOOP CỦA OBSERVER
  const loadedIndexRef = useRef(initialLoadedCount);
  const [loadedIndex, setLoadedIndex] = useState(initialLoadedCount);
  
  const updateLoadedIndex = useCallback((newIndex: number) => {
    setLoadedIndex(newIndex);
    loadedIndexRef.current = newIndex;
  }, []);

  const [isRestoring, setIsRestoring] = useState(true); // Khóa các hoạt động auto-load khi đang khôi phục trang
  const isFetching = useRef(false);
  const loaderRef = useRef<HTMLDivElement>(null);
  const scrollRafRef = useRef<number | null>(null);

  // Khởi tạo Cache từ Props
  useEffect(() => {
    Object.entries(allCategoriesData).forEach(([slug, movies]) => {
      if (movies && movies.length > 0) {
        categoryCache.set(slug, movies as Movie[]);
      }
    });
  }, [allCategoriesData]);

  // TẮT SCROLL RESTORATION MẶC ĐỊNH
  useEffect(() => {
    if ('scrollRestoration' in history) {
      history.scrollRestoration = 'manual';
    }
  }, []);

  // --- 1. LƯU VỊ TRÍ CUỘN (CHỈ LƯU KHI KHÔNG TRONG QUÁ TRÌNH RESTORE) ---
  useEffect(() => {
    const handleScroll = () => {
      if (isRestoring) return; // Tránh ghi đè vị trí 0 vào session khi đang nhảy vị trí
      
      if (scrollRafRef.current) cancelAnimationFrame(scrollRafRef.current);
      scrollRafRef.current = requestAnimationFrame(() => {
        const currentScrollY = window.scrollY;
        if (currentScrollY > 20) {
          safeSessionStorage.setItem("home_scroll_pos", currentScrollY.toString());
        }
      });
    };
    window.addEventListener("scroll", handleScroll, { passive: true });
    return () => {
      if (scrollRafRef.current) cancelAnimationFrame(scrollRafRef.current);
      window.removeEventListener("scroll", handleScroll);
    };
  }, [isRestoring]);

  // --- 2. KHÔI PHỤC SESSION VÀ SCROLL ---
  useEffect(() => {
    const restoreSession = async () => {
      try {
        const savedSlugsStr = safeSessionStorage.getItem("home_loaded_slugs");
        const savedScrollPos = safeSessionStorage.getItem("home_scroll_pos");

        if (!savedSlugsStr) {
          setIsRestoring(false);
          return;
        }
        
        const savedSlugs: string[] = JSON.parse(savedSlugsStr);
        if (savedSlugs.length === 0) {
          setIsRestoring(false);
          return;
        }

        // Tải ngầm các danh sách phim
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
            const uniqueMap = new Map();
            combined.forEach(s => uniqueMap.set(s.slug, s));
            return Array.from(uniqueMap.values());
          });

          const lastSlug = savedSlugs[savedSlugs.length - 1];
          const foundIdx = HOME_CATEGORIES.findIndex(c => c.slug === lastSlug);
          if (foundIdx !== -1) {
            updateLoadedIndex(foundIdx + 1);
          }
        }

        // ĐỢI DOM RENDER MỚI BẮT ĐẦU CUỘN (TRÁNH LỖI MẤT KÍCH THƯỚC)
        setTimeout(() => {
          const targetScroll = savedScrollPos ? parseInt(savedScrollPos, 10) : 0;
          if (targetScroll > 0) {
            window.scrollTo({ top: targetScroll, behavior: 'instant' });
            // Double-check chốt vị trí cuộn cho LazyRow render xong
            setTimeout(() => {
               window.scrollTo({ top: targetScroll, behavior: 'instant' });
               setIsRestoring(false);
            }, 100);
          } else {
            setIsRestoring(false);
          }
        }, 150);

      } catch (e) {
        console.error("Failed to restore session storage", e);
        setIsRestoring(false);
      }
    };

    restoreSession();
  }, [initialSections, updateLoadedIndex]);

  // --- 3. TẢI TIẾP KHI CUỘN ĐẾN CUỐI (HÀM NÀY ĐƯỢC GIỮ ỔN ĐỊNH BẰNG REF) ---
  const loadNextCategory = useCallback(async () => {
    const currentIndex = loadedIndexRef.current; // Dùng Ref để không bị phụ thuộc vòng lặp
    if (currentIndex >= HOME_CATEGORIES.length || isFetching.current) return;

    isFetching.current = true;
    const currentCat = HOME_CATEGORIES[currentIndex];

    let movies = categoryCache.get(currentCat.slug);
    if (!movies || movies.length === 0) {
      movies = await fetchCategoryFromD1(currentCat.slug);
    }

    if (movies && movies.length > 0) {
      setSections(prev => {
        if (prev.some(s => s.slug === currentCat.slug)) return prev;

        const next = [...prev, { title: currentCat.title, type: "category", slug: currentCat.slug, items: movies!.slice(0, 15) }];
        const dynamicSlugs = next.filter(s => !initialSections.some(init => init.slug === s.slug)).map(s => s.slug);
        safeSessionStorage.setItem("home_loaded_slugs", JSON.stringify(dynamicSlugs));
        return next;
      });
    }

    updateLoadedIndex(currentIndex + 1);
    isFetching.current = false;

    // Load nền mảng tiếp theo
    const nextNextIdx = currentIndex + 1;
    if (nextNextIdx < HOME_CATEGORIES.length) {
       const futureCat = HOME_CATEGORIES[nextNextIdx];
       if (futureCat && !categoryCache.has(futureCat.slug)) {
         fetchCategoryFromD1(futureCat.slug);
       }
    }
  }, [initialSections, updateLoadedIndex]);

  // --- INTERSECTION OBSERVER CHỈ KHỞI TẠO 1 LẦN ---
  useEffect(() => {
    if (isRestoring) return; // Chặn Observer khi đang khôi phục trang

    const observer = new IntersectionObserver((entries) => {
      if (entries[0].isIntersecting) {
        loadNextCategory();
      }
    }, { threshold: 0.1, rootMargin: '1200px' });
    
    if (loaderRef.current) observer.observe(loaderRef.current);
    
    return () => observer.disconnect();
  }, [loadNextCategory, isRestoring]); // Giờ đây dependencies rất ổn định, không bị chớp giật 

  useEffect(() => {
    if (initialHeroMovies.length > 0) {
      const timer = setInterval(() => setCurrentHero(p => (p + 1) % initialHeroMovies.length), 7000);
      return () => clearInterval(timer);
    }
  }, [initialHeroMovies.length]);

  return (
    <main className={`${montserrat.className} min-h-screen bg-[var(--background)] text-white overflow-x-hidden selection:bg-red-600`}>
      <style dangerouslySetInnerHTML={{ __html: `
        .scrollbar-hide::-webkit-scrollbar { display: none; }
        .text-shadow-netflix { text-shadow: 2px 2px 4px rgba(0,0,0,0.8), -1px -1px 0 rgba(0,0,0,0.5); }
        main { overflow-anchor: none; }
        .snap-x { scroll-snap-type: x mandatory; scroll-behavior: smooth; }
        .snap-start { scroll-snap-align: start; }
      ` }} />

      {/* CHỖ NÀY GIỮ NGUYÊN HOÀN TOÀN PHẦN RENDER HERO VÀ CÁC ROW NHƯ CODE CŨ CỦA BẠN */}
      {/* ... (Các phần JSX Hero, History, và List Movies render) ... */}

      {initialHeroMovies.length > 0 && (
         /* Bê y hệt khối Hero section cũ vào đây */
         <section className="relative w-full bg-black overflow-hidden mb-8 border-b border-white/5 transform-gpu">
             {/* ... */}
         </section>
      )}
      
      <InterestedSection />
      <HistoryRow />

      <section className="relative z-30 space-y-8 pb-20">
        {sections.map((s, index) => {
          if (!s || !s.slug) return null;
          const config = getCategoryConfig(s.slug);
          const isRanked = config?.rowType === "ranked";
          const rowVariant = config?.rowVariant || (isRanked ? "ranked1" : "vertical");

          return (
            <LazyRow key={`${s.slug}-${index}`} placeholderHeight={isRanked ? 450 : 350}>
              {isRanked ? (
                <RankedMovieRow section={s} variant={rowVariant as any} isTrending={s.slug === 'phim-bo'} />
              ) : (
                <MovieRow section={s} variant={rowVariant as any} />
              )}
            </LazyRow>
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