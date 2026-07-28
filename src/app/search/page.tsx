"use client";
import { Suspense, useState, useEffect, useRef, useCallback } from 'react';
import { useSearchParams } from 'next/navigation';
import Link from 'next/link';
import Image from 'next/image';
import MovieBadge from '@/components/MovieBadge';
import { searchMovies, type KKPhimMovie, getImageUrl, getMoviesByActor } from '@/lib/kkphim';
import imageLoader from '@/lib/imageLoader';
import { actorAlias, normalizeName } from '@/lib/actor-utils';

function SearchContent() {
  const searchParams = useSearchParams();
  const query = searchParams.get('keyword') || '';
  const [movies, setMovies] = useState<KKPhimMovie[]>([]);
  const [page, setPage] = useState(1);
  const [loading, setLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const [actorInfo, setActorInfo] = useState<{ name: string; avatar: string | null; aliases: string[] } | null>(null);
  const loaderRef = useRef<HTMLDivElement>(null);

  const fetchActorDetails = async (name: string) => {
    try {
      const res = await fetch(`/api/actor-search?name=${encodeURIComponent(name)}`);
      if (res.ok) {
        const data = await res.json();
        if (data.avatar) {
          // Tìm aliases nếu có
          const normalized = normalizeName(name);
          const aliases = actorAlias[normalized] || [];
          return { name, avatar: data.avatar, aliases };
        }
      }
    } catch (e) {}
    return null;
  };

  const fetchResults = useCallback(async (isFirstLoad: boolean) => {
    if (!query || (loading && !isFirstLoad)) return;
    setLoading(true);

    try {
      let combinedResults: KKPhimMovie[] = [];

      if (isFirstLoad) {
        // 1. Kiểm tra xem có phải search diễn viên không
        const info = await fetchActorDetails(query);
        setActorInfo(info);

        // 2. Lấy phim từ D1 (cả theo tên phim và tên diễn viên)
        const params = new URLSearchParams({ q: query });
        const myDbRes = await fetch(`/api/search-d1?${params.toString()}`);
        const myDbResults = await myDbRes.json();

        // 3. Lấy thêm phim từ API KKPhim
        const kkResults = await searchMovies(query, 1);

        combinedResults = [...(myDbResults || []), ...(kkResults || [])];
      } else {
        const nextResults = await searchMovies(query, page);
        combinedResults = nextResults;
      }

      // Lọc trùng và sắp xếp năm giảm dần
      setMovies(prev => {
        const total = isFirstLoad ? combinedResults : [...prev, ...combinedResults];
        const unique = total.filter((movie, index, self) =>
          index === self.findIndex((t) => t.slug === movie.slug)
        );
        // Sắp xếp năm giảm dần
        return unique.sort((a, b) => (Number(b.year) || 0) - (Number(a.year) || 0));
      });

      if (combinedResults.length === 0 && !isFirstLoad) setHasMore(false);
    } catch (error) {
      console.error("Search error:", error);
    } finally {
      setLoading(false);
    }
  }, [query, page, loading]);

  useEffect(() => {
    setMovies([]);
    setPage(1);
    setHasMore(true);
    setActorInfo(null);
    fetchResults(true);
  }, [query]);

  return (
    <main className="min-h-screen w-full bg-[#120a10] text-white pt-32 pb-20 px-6 md:px-20">
      {loading && <div className="fixed top-0 left-0 right-0 h-[2px] z-[110] bg-red-600 animate-pulse" />}

      {/* GIAO DIỆN HEADER SEARCH THEO HÌNH MẪU */}
      <div className="mb-16 flex flex-col md:flex-row md:items-end justify-between gap-8">
        <div className="flex flex-col md:flex-row items-center md:items-end gap-6 md:gap-10">
          {actorInfo ? (
            <>
              {/* Avatar diễn viên - Hình vuông bo góc rounded-2xl */}
              <div className="relative w-32 h-32 md:w-40 md:h-40 rounded-2xl overflow-hidden border-4 border-white/5 shadow-2xl bg-[#121212] shrink-0">
                <Image
                  loader={imageLoader}
                  src={actorInfo.avatar || ''}
                  alt={actorInfo.name}
                  fill
                  className="object-cover"
                />
              </div>
              <div className="flex flex-col text-center md:text-left">
                <span className="text-white/20 text-[10px] font-black uppercase tracking-[0.3em] mb-2 italic">Search for Actor</span>
                <h1 className="text-4xl md:text-6xl font-black uppercase italic tracking-tighter text-[#F1E5AC] leading-none mb-4">
                  {actorInfo.name}
                </h1>
                <div className="space-y-1">
                  {actorInfo.aliases.length > 0 && (
                    <p className="text-white/40 text-xs font-bold italic uppercase">
                      Tên gọi khác: <span className="text-white/80">{actorInfo.aliases.join(", ")}</span>
                    </p>
                  )}
                </div>
              </div>
            </>
          ) : (
            <div className="flex flex-col text-center md:text-left">
              <span className="text-white/20 text-[10px] font-black uppercase tracking-[0.3em] mb-2 italic">Search results</span>
              <h1 className="text-4xl md:text-6xl font-black uppercase italic tracking-tighter text-white leading-none">
                {query}
              </h1>
            </div>
          )}
        </div>

        {/* Thống kê số phim bên phải */}
        <div className="bg-white/5 backdrop-blur-md border border-white/10 px-6 py-4 rounded-3xl text-center md:text-right self-center md:self-end">
          <p className="text-white/30 text-[10px] font-black uppercase italic tracking-widest mb-1">Các phim đã tham gia</p>
          <p className="text-3xl font-black italic text-red-600 leading-none">{movies.length} <span className="text-sm text-white/60">phim</span></p>
        </div>
      </div>

      {/* GRID DANH SÁCH PHIM */}
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-x-6 gap-y-12">
        {movies.map((movie, index) => (
          <Link href={`/phim/${movie.slug}`} key={`${movie.slug}-${index}`} className="group relative flex flex-col">
            <div className="relative aspect-[2/3] rounded-[2rem] overflow-hidden border border-white/10 group-hover:border-red-600/50 transition-all duration-500 shadow-2xl group-hover:-translate-y-2">
              <Image
                loader={imageLoader}
                src={getImageUrl(movie.poster)}
                alt={movie.name}
                fill
                sizes="(max-width: 768px) 50vw, 250px"
                className="object-cover group-hover:scale-110 transition-transform duration-700"
                priority={index < 6}
                quality={50}
              />
              <MovieBadge movie={movie} />
            </div>
            <div className="mt-4 px-2">
              <h3 className="text-[11px] md:text-[12px] font-black uppercase text-white/80 group-hover:text-red-500 transition-colors line-clamp-2 text-center italic leading-tight">
                {movie.name}
              </h3>
              <p className="text-[9px] font-bold text-white/20 text-center uppercase mt-1 italic tracking-widest">
                {movie.year} • {movie.country}
              </p>
            </div>
          </Link>
        ))}
      </div>

      <div ref={loaderRef} className="py-20 flex justify-center">
        {loading && hasMore && (
          <div className="flex flex-col items-center gap-4">
            <div className="animate-spin rounded-full h-10 w-10 border-t-2 border-b-2 border-red-600" />
            <span className="text-[10px] font-black uppercase italic text-white/20 tracking-widest">Đang tải thêm...</span>
          </div>
        )}
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