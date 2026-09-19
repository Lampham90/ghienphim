
"use client";
export const runtime = 'edge';
import { useState, useEffect, useRef, use, useCallback } from 'react';
import Header from '@/components/Header';
import MovieCard from '@/components/MovieCard';
import { getCategoryTitle } from '@/lib/categories';
import { type KKPhimMovie } from '@/lib/kkphim';

// Helper để tương tác an toàn với sessionStorage
const safeStorage = {
  get: (key: string) => {
    try {
      const data = sessionStorage.getItem(key);
      return data ? JSON.parse(data) : null;
    } catch { return null; }
  },
  set: (key: string, value: any) => {
    try {
      sessionStorage.setItem(key, JSON.stringify(value));
    } catch {}
  }
};

const YEAR_OPTIONS = [
  { label: "Tất cả", value: "" },
  { label: "2026", value: "2026" },
  { label: "2025", value: "2025" },
  { label: "2024", value: "2024" },
  { label: "2023", value: "2023" },
  { label: "2022", value: "2022" },
  { label: "2021", value: "2021" },
  { label: "2020", value: "2020" },
  { label: "Trước 2020", value: "truoc-2020" },
];

export default function CategoryPage({ params }: { params: Promise<{ type: string; slug: string }> }) {
  const unwrappedParams = use(params);
  const categorySlug = unwrappedParams.slug;
  const categoryTitle = getCategoryTitle(categorySlug);

  const [movies, setMovies] = useState<KKPhimMovie[]>([]);
  const [page, setPage] = useState(1);
  const [selectedYear, setSelectedYear] = useState<string>("");
  const [loading, setLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const [mounted, setMounted] = useState(false);
  const [isRestored, setIsRestored] = useState(false);

  const loaderRef = useRef<HTMLDivElement>(null);
  const scrollRestoredRef = useRef(false);

  useEffect(() => { setMounted(true); }, []);

  // 1. Khôi phục trạng thái từ sessionStorage khi mount
  useEffect(() => {
    if (mounted && categorySlug) {
      const storageKey = `cat_state_${categorySlug}_${selectedYear}`;
      const savedData = safeStorage.get(storageKey);
      if (savedData && savedData.movies?.length > 0) {
        setMovies(savedData.movies);
        setPage(savedData.page);
        setHasMore(savedData.hasMore);
        setIsRestored(true);

        setTimeout(() => {
          const savedScroll = safeStorage.get(`cat_scroll_${categorySlug}_${selectedYear}`);
          if (savedScroll) {
            window.scrollTo(0, savedScroll);
          }
          scrollRestoredRef.current = true;
        }, 100);
      } else {
        loadMoreMovies(true);
      }
    }
  }, [mounted, categorySlug, selectedYear]);

  // 2. Lưu vị trí cuộn khi người dùng cuộn trang
  useEffect(() => {
    if (!mounted) return;

    let timeoutId: any;
    const handleScroll = () => {
      if (timeoutId) clearTimeout(timeoutId);
      timeoutId = setTimeout(() => {
        if (window.scrollY > 100) {
          safeStorage.set(`cat_scroll_${categorySlug}_${selectedYear}`, window.scrollY);
        }
      }, 200);
    };

    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => {
      window.removeEventListener('scroll', handleScroll);
      if (timeoutId) clearTimeout(timeoutId);
    };
  }, [categorySlug, mounted, selectedYear]);

  // 3. Lưu danh sách phim và trạng thái trang mỗi khi thay đổi
  useEffect(() => {
    if (mounted && movies.length > 0) {
      safeStorage.set(`cat_state_${categorySlug}_${selectedYear}`, {
        movies,
        page,
        hasMore
      });
    }
  }, [movies, page, hasMore, categorySlug, mounted, selectedYear]);

  const loadMoreMovies = useCallback(async (isFirst = false) => {
    if (loading || (!hasMore && !isFirst)) return;
    setLoading(true);
    try {
      const currentPage = isFirst ? 1 : page;
      const yearQuery = selectedYear ? `&year=${selectedYear}` : '';
      const res = await fetch(`/api/category-d1?slug=${categorySlug}&page=${currentPage}${yearQuery}`);
      const newData = await res.json();

      if (!newData || newData.length === 0) {
        setHasMore(false);
      } else {
        setMovies(prev => isFirst ? newData : [...prev, ...newData]);
        setPage(prev => isFirst ? 2 : prev + 1);
      }
    } catch (error) {
      setHasMore(false);
    } finally {
      setLoading(false);
    }
  }, [categorySlug, page, loading, hasMore, selectedYear]);

  const handleYearChange = (yearVal: string) => {
    if (selectedYear === yearVal) return;
    setSelectedYear(yearVal);
    setMovies([]);
    setPage(1);
    setHasMore(true);
  };

  // Infinite Scroll Trigger
  useEffect(() => {
    if (!loaderRef.current || !hasMore || loading) return;

    const observer = new IntersectionObserver((entries) => {
      if (entries[0].isIntersecting) {
        loadMoreMovies();
      }
    }, { threshold: 0.1, rootMargin: '800px' });

    observer.observe(loaderRef.current);
    return () => observer.disconnect();
  }, [loadMoreMovies, hasMore, loading]);

  if (!mounted) return <div className="min-h-screen bg-black" />;

  return (
    <main className="min-h-screen w-full bg-[#050505] text-white pt-32 px-6 md:px-16">
      <Header />
      <div className="mb-6">
         <h1 className="text-2xl md:text-4xl font-black uppercase italic tracking-tighter">{categoryTitle}</h1>
      </div>

      {/* 🎯 BỘ LỌC THEO NĂM */}
      <div className="flex items-center gap-2 overflow-x-auto pb-4 mb-8 no-scrollbar scroll-smooth">
        <span className="text-xs font-bold uppercase tracking-wider text-white/40 mr-1 flex items-center shrink-0">
          <svg className="w-3.5 h-3.5 mr-1 text-red-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 4a1 1 0 011-1h16a1 1 0 011 1v2.586a1 1 0 01-.293.707l-6.414 6.414a1 1 0 00-.293.707V17l-4 4v-6.586a1 1 0 00-.293-.707L3.293 7.293A1 1 0 013 6.586V4z" />
          </svg>
          Năm:
        </span>
        {YEAR_OPTIONS.map((item) => (
          <button
            key={item.value}
            onClick={() => handleYearChange(item.value)}
            className={`px-4 py-1.5 rounded-full text-xs font-bold transition-all duration-200 shrink-0 ${
              selectedYear === item.value
                ? "bg-red-600 text-white shadow-lg shadow-red-600/30 scale-105"
                : "bg-white/5 hover:bg-white/10 text-white/70 hover:text-white border border-white/5"
            }`}
          >
            {item.label}
          </button>
        ))}
      </div>

      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-6">
        {movies.map((movie, index) => (
          <MovieCard
            key={`${movie.slug}-${index}`}
            movie={movie}
            variant="vertical"
            priority={index < 12}
          />
        ))}
      </div>

      <div ref={loaderRef} className="py-20 flex justify-center min-h-[200px]">
        {loading && (
          <div className="flex flex-col items-center gap-4">
            <div className="animate-spin rounded-full h-8 w-8 border-t-2 border-red-600" />
            <span className="text-[10px] font-bold uppercase tracking-widest text-white/20 italic">Đang tải phim...</span>
          </div>
        )}
        {!hasMore && movies.length > 0 && (
          <span className="text-[10px] font-bold uppercase tracking-widest text-white/10 italic">Đã hiển thị toàn bộ danh sách</span>
        )}
      </div>
    </main>
  );
}
