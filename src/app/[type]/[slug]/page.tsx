
"use client";
export const runtime = 'edge';
import { useState, useEffect, useRef, use, useCallback } from 'react';
import Header from '@/components/Header';
import MovieCard from '@/components/MovieCard';
import { getCategoryTitle } from '@/lib/categories';
import { type KKPhimMovie } from '@/lib/kkphim';

export default function CategoryPage({ params }: { params: Promise<{ type: string; slug: string }> }) {
  const unwrappedParams = use(params);
  const categorySlug = unwrappedParams.slug;
  const categoryTitle = getCategoryTitle(categorySlug);

  const [movies, setMovies] = useState<KKPhimMovie[]>([]);
  const [page, setPage] = useState(1);
  const [loading, setLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const [mounted, setMounted] = useState(false);
  const loaderRef = useRef<HTMLDivElement>(null);

  useEffect(() => { setMounted(true); }, []);

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

  useEffect(() => {
    if (mounted) {
      setMovies([]); setPage(1); setHasMore(true);
      loadMoreMovies(true);
    }
  }, [categorySlug, mounted]);

  useEffect(() => {
    if (!loaderRef.current || !hasMore || loading) return;
    const observer = new IntersectionObserver((entries) => {
      if (entries[0].isIntersecting) loadMoreMovies();
    }, { threshold: 0.1, rootMargin: '600px' });
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
          <MovieCard key={`${movie.slug}-${index}`} movie={movie} variant="vertical" priority={index < 6} />
        ))}
      </div>
      <div ref={loaderRef} className="py-20 flex justify-center">
        {loading && <div className="animate-spin rounded-full h-8 w-8 border-t-2 border-red-600" />}
      </div>
    </main>
  );
}