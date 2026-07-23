'use client';

import { useState, useEffect, memo } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import imageLoader from '@/lib/imageLoader';
import { actorAlias, normalizeName, isStrictNameMatch } from '@/lib/actor-utils';

interface ActorListProps {
  movie: any;
  tmdbInfo?: { id: string | number; type: string };
}

const ActorList = memo(({ movie, tmdbInfo }: ActorListProps) => {
  const [actors, setActors] = useState<Array<{ name: string; avatar?: string }>>([]);
  const [isFetched, setIsFetched] = useState(false);

  useEffect(() => {
    if (!movie) return;

    const rawActors = Array.isArray(movie.actor) ? movie.actor : [];
    if (rawActors.length === 0) {
      setActors([]);
      setIsFetched(true);
      return;
    }

    // Khởi tạo danh sách từ dữ liệu phim
    const initialActors = rawActors.map((a: any) => ({
      name: typeof a === 'string' ? a : a?.name || '',
      avatar: typeof a === 'object' ? a?.avatar || '' : '',
    })).filter(item => item.name.trim() !== '' && item.name.toLowerCase() !== 'dang cap nhat');

    // ✅ Hiện ngay dữ liệu thô (có thể đã có avatar từ DB cào sẵn)
    setActors(initialActors);

    const tmdbId = tmdbInfo?.id || movie?.tmdb?.id || movie?.tmdb_id;
    const rawType = tmdbInfo?.type || movie?.tmdb?.type || movie?.type || '';
    const tmdbType = (rawType.includes('series') || rawType.includes('bo') || rawType.includes('tv')) ? 'tv' : 'movie';

    const fetchAllAvatars = async () => {
      let currentActors = [...initialActors];

      // BƯỚC 1: Lấy từ Credit của phim (Chính xác nhất theo vai diễn)
      if (tmdbId && tmdbId !== '0' && tmdbId !== 0) {
        try {
          const res = await fetch(`/api/actor-credits?tmdb_id=${tmdbId}&type=${tmdbType}`);
          if (res.ok) {
            const data = await res.json();
            if (data?.cast) {
              currentActors = currentActors.map(item => {
                const found = data.cast.find((c: any) =>
                  isStrictNameMatch(item.name, c.name) || (c.original_name && isStrictNameMatch(item.name, c.original_name))
                );
                if (found) return { ...item, avatar: found.avatar };

                const normalized = normalizeName(item.name);
                if (actorAlias[normalized]) {
                  const aliasMatch = data.cast.find((c: any) =>
                    actorAlias[normalized].some(alias => isStrictNameMatch(alias, c.name) || (c.original_name && isStrictNameMatch(alias, c.original_name)))
                  );
                  if (aliasMatch) return { ...item, avatar: aliasMatch.avatar };
                }
                return item;
              });
            }
          }
        } catch (e) {}
      }

      setActors([...currentActors]);

      // BƯỚC 2: Global Search cho những người còn thiếu (TMDB Search toàn cầu)
      const stillMissing = currentActors.filter(a => !a.avatar);
      if (stillMissing.length > 0) {
        // Tối đa quét 20 diễn viên đầu tiên còn thiếu
        const searchPromises = stillMissing.slice(0, 20).map(async (actor) => {
          try {
            const sRes = await fetch(`/api/actor-search?name=${encodeURIComponent(actor.name)}`);
            if (sRes.ok) {
              const sData = await sRes.json();
              if (sData.avatar) return { name: actor.name, avatar: sData.avatar };
            }
          } catch (e) {}
          return null;
        });

        const searchResults = await Promise.all(searchPromises);
        const validResults = searchResults.filter((r): r is { name: string; avatar: string } => r !== null);

        if (validResults.length > 0) {
          setActors(prev => prev.map(item => {
            const found = validResults.find(r => r.name === item.name);
            if (found) return { ...item, avatar: found.avatar };
            return item;
          }));
        }
      }
      setIsFetched(true);
    };

    fetchAllAvatars();
  }, [movie?.slug, movie?.tmdb_id, tmdbInfo?.id]);

  const visibleActors = actors.filter(a => a.avatar);

  // ✅ Tránh hiện tiêu đề rỗng khi chưa có ảnh nào
  if (visibleActors.length === 0) return null;

  return (
    <div className="animate-in fade-in duration-700 mt-10">
      <div className="flex items-center gap-4 mb-8">
        <h3 className="text-[#F1E5AC] text-[10px] font-black uppercase tracking-[0.4em] italic">
          Dàn diễn viên
        </h3>
        <div className="h-[1px] flex-1 bg-white/5"></div>
      </div>

      <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 gap-6">
        {visibleActors.map((actor, idx) => (
          <Link key={idx} href={`/search?keyword=${encodeURIComponent(actor.name)}`} className="group block">
            <div className="relative aspect-square w-full rounded-2xl overflow-hidden border border-white/5 group-hover:border-red-600 transition-all duration-500 shadow-2xl bg-[#121212]">
              <Image
                loader={imageLoader}
                src={actor.avatar || ''}
                alt={actor.name}
                fill
                sizes="(max-width: 768px) 33vw, 15vw"
                className="object-cover group-hover:scale-110 transition-transform duration-500"
              />
            </div>
            <p className="mt-3 text-[10px] font-black text-white/40 group-hover:text-red-500 transition-colors uppercase italic text-center line-clamp-2 leading-tight px-1">
              {actor.name}
            </p>
          </Link>
        ))}
      </div>
    </div>
  );
});

ActorList.displayName = 'ActorList';
export default ActorList;