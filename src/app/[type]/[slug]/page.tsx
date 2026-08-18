
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

export default function CategoryPage({ params }: { params: Promise<{ type: string; slug: string }> }) {
  const unwrappedParams = use(params);
  const categorySlug = unwrappedParams.slug;
  const categoryTitle = getCategoryTitle(categorySlug);

  const [movies, setMovies] = useState<KKPhimMovie[]>([]);
  const [page, setPage] = useState(1);
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
      const savedData = safeStorage.get(`cat_state_${categorySlug}`);
      if (savedData && savedData.movies?.length > 0) {
        setMovies(savedData.movies);
        setPage(savedData.page);
        setHasMore(savedData.hasMore);
        setIsRestored(true);

        // Đợi DOM render xong rồi mới scroll
        setTimeout(() => {
          const savedScroll = safeStorage.get(`cat_scroll_${categorySlug}`);
          if (savedScroll) {
            window.scrollTo(0, savedScroll);
          }
          scrollRestoredRef.current = true;
        }, 100);
      } else {
        // Nếu không có dữ liệu cũ, load từ đầu
        loadMoreMovies(true);
      }
    }
  }, [mounted, categorySlug]);

  // 2. Lưu vị trí cuộn khi người dùng cuộn trang
  useEffect(() => {
    if (!mounted) return;

    let timeoutId: any;
    const handleScroll = () => {
      if (timeoutId) clearTimeout(timeoutId);
      timeoutId = setTimeout(() => {
        if (window.scrollY > 100) {
          safeStorage.set(`cat_scroll_${categorySlug}`, window.scrollY);
        }
      }, 200);
    };

    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => {
      window.removeEventListener('scroll', handleScroll);
      if (timeoutId) clearTimeout(timeoutId);
    };
  }, [categorySlug, mounted]);

  // 3. Lưu danh sách phim và trạng thái trang mỗi khi thay đổi
  useEffect(() => {
    if (mounted && movies.length > 0) {
      safeStorage.set(`cat_state_${categorySlug}`, {
        movies,
        page,
        hasMore
      });
    }
  }, [movies, page, hasMore, categorySlug, mounted]);

  const loadMoreMovies = useCallback(async (isFirst = false) => {
    if (loading || (!hasMore && !isFirst)) return;
    setLoading(true);
    try {
      const currentPage = isFirst ? 1 : page;
      const res = await fetch(`/api/category-d1?slug=${categorySlug}&page=${currentPage}`);
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
  }, [categorySlug, page, loading, hasMore]);

  // Infinite Scroll Trigger
  useEffect(() => {
    if (!loaderRef.current || !hasMore || loading) return;

    const observer = new IntersectionObserver((entries) => {
      // Chỉ kích hoạt load more nếu:
      // - Phần tử loader xuất hiện
      // - Đã khôi phục xong scroll (nếu là back navigation) để tránh loop
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
      <div className="mb-10">
         <h1 className="text-2xl md:text-4xl font-black uppercase italic tracking-tighter">{categoryTitle}</h1>
         <p className="text-white/20 text-[10px] font-bold mt-2 uppercase tracking-widest italic"></p>
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
