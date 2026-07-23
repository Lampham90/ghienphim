
"use client";
import { Suspense, useState, useEffect, useRef, useCallback } from 'react';
import { useSearchParams } from 'next/navigation';
import Link from 'next/link';
import Image from 'next/image';
import MovieBadge from '@/components/MovieBadge';
import { searchMovies, type KKPhimMovie, getImageUrl } from '@/lib/kkphim';
import imageLoader from '@/lib/imageLoader';

function SearchContent() {
  const searchParams = useSearchParams();
  const query = searchParams.get('keyword') || '';
  const [movies, setMovies] = useState<KKPhimMovie[]>([]);
  const [page, setPage] = useState(1);
  const [loading, setLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const loaderRef = useRef<HTMLDivElement>(null);

  const fetchResults = useCallback(async (isFirstLoad: boolean) => {
    if (!query || (loading && !isFirstLoad)) return;
    setLoading(true);

    try {
      let combinedResults: KKPhimMovie[] = [];
      if (isFirstLoad) {
        const params = new URLSearchParams({ q: query });
        const myDbRes = await fetch(`/api/search-d1?${params.toString()}`);
        const myDbResults = await myDbRes.json();
        const kkResults = await searchMovies(query, 1);
        combinedResults = [...(myDbResults || []), ...(kkResults || [])];
      } else {
        const nextResults = await searchMovies(query, page);
        combinedResults = nextResults;
      }

      setMovies(prev => {
        const total = isFirstLoad ? combinedResults : [...prev, ...combinedResults];
        return total.filter((movie, index, self) =>
          index === self.findIndex((t) => t.slug === movie.slug)
        );
      });
      if (combinedResults.length === 0 && !isFirstLoad) setHasMore(false);
    } catch (error) {
      console.error("Search error");
    } finally {
      setLoading(false);
    }
  }, [query, page, loading]);

  useEffect(() => {
    setMovies([]); setPage(1); setHasMore(true);
    fetchResults(true);
  }, [query]);

  return (
    <main className="min-h-screen w-full bg-[#050505] text-white pt-32 px-6 md:px-16">
      {loading && <div className="fixed top-0 left-0 right-0 h-[2px] z-[110] bg-red-600 animate-pulse" />}
      <div className="mb-10">
        <h1 className="text-white/20 text-xs font-black uppercase italic">Search: {movies.length} phim</h1>
        <h2 className="text-3xl font-black italic uppercase italic tracking-tighter uppercase">"{query}"</h2>
      </div>
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-x-6 gap-y-12">
        {movies.map((movie, index) => (
          <Link href={`/phim/${movie.slug}`} key={`${movie.slug}-${index}`} className="group relative flex flex-col">
            <div className="relative aspect-[2/3] rounded-[2rem] overflow-hidden border border-white/10 group-hover:border-red-600/50 transition-all duration-500 shadow-2xl group-hover:-translate-y-2">
              <Image loader={imageLoader} src={getImageUrl(movie.poster)} alt={movie.name} fill sizes="250px" className="object-cover group-hover:scale-110 transition-transform duration-700" priority={index < 6} quality={50} />
              <MovieBadge movie={movie} />
            </div>
            <h3 className="mt-4 text-[10px] md:text-[11px] font-black uppercase text-white/40 group-hover:text-red-500 line-clamp-2 text-center italic">{movie.name}</h3>
          </Link>
        ))}
      </div>
      <div ref={loaderRef} className="py-20 flex justify-center">
        {loading && hasMore && <div className="animate-spin rounded-full h-8 w-8 border-t-2 border-red-600" />}
      </div>
    </main>
  );
}

export default function SearchPage() {
  return (
    <Suspense fallback={<div className="min-h-screen bg-black" />}>
      <SearchContent />
    </Suspense>
  );
}