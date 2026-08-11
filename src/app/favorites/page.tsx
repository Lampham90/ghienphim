"use client";
import { useState, useEffect, useCallback, useMemo } from "react";
import Link from "next/link";
import Header from "@/components/Header";
import Image from "next/image";
import MovieBadge from '@/components/MovieBadge';
import { useMovieStore } from "@/lib/useMovieStore";
import { useAuth } from "@/lib/useAuth";
import { getImageUrl } from "@/lib/kkphim";
import imageLoader from "@/lib/imageLoader";

export default function FavoritesPage() {
  const [mounted, setMounted] = useState(false);
  const { user } = useAuth();
  const [searchTerm, setSearchTerm] = useState("");
  const [sortBy, setSortBy] = useState<"newest" | "oldest" | "az" | "za">("newest");

  const storeFavorites = useMovieStore((state) => state.favorites);
  const storeToggleFavorite = useMovieStore((state) => state.toggleFavorite);

  const filteredAndSorted = useMemo(() => {
    let result = [...storeFavorites];

    if (searchTerm.trim()) {
      const s = searchTerm.toLowerCase().trim();
      result = result.filter(m => m.name.toLowerCase().includes(s));
    }

    result.sort((a, b) => {
      switch (sortBy) {
        case "newest": return (b.last_updated || 0) - (a.last_updated || 0);
        case "oldest": return (a.last_updated || 0) - (b.last_updated || 0);
        case "az": return a.name.localeCompare(b.name, "vi");
        case "za": return b.name.localeCompare(a.name, "vi");
        default: return 0;
      }
    });

    return result;
  }, [storeFavorites, searchTerm, sortBy]);

  useEffect(() => {
    setMounted(true);
  }, []);

  const removeFavorite = useCallback(async (e: React.MouseEvent, slug: string) => {
    e.preventDefault();
    e.stopPropagation();
    if (!slug) return;
    await storeToggleFavorite(slug, {}, true, user?.uid); 
  }, [user, storeToggleFavorite]);

  if (!mounted) return null;

  return (
    <main className="min-h-screen bg-[#050505] text-white select-none relative overflow-x-hidden">
      <Header />

      <div className="max-w-[2000px] mx-auto px-6 md:px-12 pt-32 pb-20">
        <header className="flex flex-col md:flex-row items-end justify-between mb-16 gap-8 border-b border-white/5 pb-10">
          <div className="space-y-4">
            <div className="flex items-center gap-4">
              <span className="w-2 h-10 bg-red-600 rounded-full shadow-[0_0_20px_red]"></span>
              <h1 className="text-3xl md:text-5xl font-black uppercase italic tracking-tighter">
                Bộ sưu tập <span className="text-red-600">của tôi</span>
              </h1>
            </div>
            <p className="text-white/30 text-[10px] font-black tracking-[0.5em] uppercase flex items-center gap-2">
              <span className="w-2 h-2 rounded-full bg-red-600 animate-pulse"></span>
              {storeFavorites.length} Phim đã sẵn sàng xem
            </p>
          </div>
          
          <div className="flex flex-col sm:flex-row items-center gap-4 w-full md:w-auto">
            <div className="relative w-full sm:w-64">
              <input 
                type="text" 
                placeholder="Tìm tên phim..." 
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="w-full bg-white/5 border border-white/10 rounded-xl px-5 py-3 text-[10px] font-bold uppercase tracking-wider focus:outline-none focus:border-red-600 transition-all"
              />
            </div>

            <select 
              value={sortBy}
              onChange={(e) => setSortBy(e.target.value as any)}
              className="w-full sm:w-auto bg-white/5 border border-white/10 rounded-xl px-5 py-3 text-[10px] font-bold uppercase tracking-widest focus:outline-none focus:border-red-600 transition-all appearance-none cursor-pointer"
            >
              <option value="newest" className="bg-[#0f0f0f]">Mới nhất</option>
              <option value="oldest" className="bg-[#0f0f0f]">Cũ nhất</option>
              <option value="az" className="bg-[#0f0f0f]">Tên A-Z</option>
              <option value="za" className="bg-[#0f0f0f]">Tên Z-A</option>
            </select>

            <Link href="/" className="group flex items-center gap-3 bg-white/5 border border-white/10 px-8 py-3 rounded-xl text-[10px] font-black uppercase tracking-widest hover:bg-red-600 transition-all whitespace-nowrap">
              <span className="group-hover:-translate-x-1 transition-transform">←</span> Home
            </Link>
          </div>
        </header>

        {storeFavorites.length === 0 ? (
          <div className="h-[40vh] flex flex-col items-center justify-center text-center space-y-8">
            <div className="relative p-10 rounded-full bg-white/5 border border-white/10 opacity-20">
              <svg className="w-16 h-16" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
              </svg>
            </div>
            <p className="text-white/20 font-black uppercase tracking-[0.3em] text-xs">Danh sách yêu thích đang trống</p>
            <Link href="/" className="bg-red-600 px-10 py-4 rounded-2xl text-[10px] font-black uppercase tracking-[0.2em] hover:scale-110 active:scale-95 transition-all shadow-2xl">Khám phá phim mới</Link>
          </div>
        ) : (
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-x-6 gap-y-12 animate-in fade-in slide-in-from-bottom-4 duration-700">
            {filteredAndSorted.map((movie) => {
              const poster = getImageUrl(movie.poster || movie.thumb || (movie as any).poster_url || (movie as any).thumb_url);

              return (
                <div key={movie.slug} className="group relative">
                  <button 
                    onClick={(e) => removeFavorite(e, movie.slug)}
                    className="absolute -top-3 -right-3 z-[30] p-2 md:p-3 rounded-xl bg-red-600 text-white opacity-100 md:opacity-0 md:group-hover:opacity-100 transition-all hover:scale-110 shadow-2xl border-4 border-[#050505]"
                  >
                    <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M6 18L18 6M6 6l12 12" />
                    </svg>
                  </button>

                  <Link href={`/phim/${movie.slug}`} prefetch={false} className="block">
                    <div className="relative aspect-[2/3] rounded-[2.5rem] overflow-hidden border border-white/5 bg-[#0a0a0a] transition-all duration-500 group-hover:border-red-600/50 group-hover:-translate-y-3 shadow-2xl">
                      <Image 
                        loader={imageLoader}
                        src={poster}
                        alt={movie.name}
                        fill
                        sizes="(max-width: 768px) 50vw, 300px"
                        className="object-cover"
                        quality={55}
                        loading="lazy"
                        referrerPolicy="no-referrer"
                      />
                      <MovieBadge movie={movie} />
                      <div className="absolute inset-0 bg-gradient-to-t from-black via-transparent to-transparent opacity-20"></div>
                    </div>
                    <div className="mt-6 px-2">
                      <h3 className="text-[11px] md:text-[12px] font-black uppercase tracking-widest text-white/40 group-hover:text-red-600 transition-colors line-clamp-2 italic text-center leading-relaxed">
                        {movie.name}
                      </h3>
                    </div>
                  </Link>
                </div>
              );
            })}
          </div>
        )}
      </div>
    </main>
  );
}
