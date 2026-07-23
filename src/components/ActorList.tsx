
'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';

interface ActorListProps {
  movie: any;
  tmdbInfo?: { id: string | number; type: string };
}

const normalizeName = (str: string) => {
  if (!str) return '';
  return str
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[đĐ]/g, 'd')
    .replace(/[^a-z0-9 ]/g, '')
    .trim();
};

const actorAlias: Record<string, string[]> = {
  "ly lien kiet": ["jet li"],
  "thanh long": ["jackie chan"],
  "chau tinh tri": ["stephen chow"],
  "don tu dan": ["donnie yen"],
  "ngo kinh": ["wu jing"],
  "luu duc hoa": ["andy lau"],
  "co thien lac": ["louis koo"],
  "truong gia huy": ["nick cheung"],
  "ta dinh phong": ["nicholas tse"],
  "duong tu quynh": ["michelle yeoh"]
};

export default function ActorList({ movie, tmdbInfo }: ActorListProps) {
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

    setActors(initialActors);

    // Lấy ID và Type
    const tmdbId = tmdbInfo?.id || movie?.tmdb?.id || movie?.tmdb_id;
    const rawType = tmdbInfo?.type || movie?.tmdb?.type || movie?.type || '';
    const tmdbType = (rawType.includes('series') || rawType.includes('bo') || rawType.includes('tv')) ? 'tv' : 'movie';

    if (tmdbId && tmdbId !== '0' && tmdbId !== 0) {
      // 💡 Gọi qua worker của chính mình (/api/actor-credits) - KHÔNG gọi thẳng TMDB nữa,
      // vì api.themoviedb.org / image.tmdb.org bị nhiều nhà mạng Việt Nam chặn.
      // Worker (Cloudflare Edge Function) sẽ thay ta gọi TMDB và trả sẵn avatar đã proxy.
      const fetchCredits = async () => {
        try {
          const res = await fetch(`/api/actor-credits?tmdb_id=${tmdbId}&type=${tmdbType}`);
          if (!res.ok) return null;
          return await res.json();
        } catch (e) { return null; }
      };

      fetchCredits().then((data) => {
        if (data?.cast && Array.isArray(data.cast)) {
          const castMap = new Map<string, string>();
          data.cast.forEach((c: any) => {
            if (c.avatar) {
              castMap.set(normalizeName(c.name), c.avatar);
              if (c.original_name) castMap.set(normalizeName(c.original_name), c.avatar);
            }
          });

          setActors(prev => prev.map(item => {
            const normalized = normalizeName(item.name);
            let foundAvatar = castMap.get(normalized);

            if (!foundAvatar && actorAlias[normalized]) {
              for (const alias of actorAlias[normalized]) {
                if (castMap.has(alias)) {
                  foundAvatar = castMap.get(alias);
                  break;
                }
              }
            }

            if (!foundAvatar) {
              for (let [key, value] of castMap) {
                if (key.includes(normalized) || normalized.includes(key)) {
                  foundAvatar = value;
                  break;
                }
              }
            }

            return { ...item, avatar: foundAvatar || item.avatar || '' };
          }));
        }
      }).finally(() => setIsFetched(true));
    } else {
      setIsFetched(true);
    }
  }, [movie?.slug, movie?.tmdb_id, tmdbInfo?.id]);

  // 💡 CHỈ HIỆN DIỄN VIÊN CÓ HÌNH
  const visibleActors = actors.filter(a => a.avatar);

  if (isFetched && visibleActors.length === 0) return null;

  return (
    <div className="animate-in fade-in duration-700">
      <div className="flex items-center gap-4 mb-6">
        <h3 className="text-[#F1E5AC] text-[10px] font-black uppercase tracking-[0.4em] italic">
          Dàn diễn viên
        </h3>
        <div className="h-[1px] flex-1 bg-white/5"></div>
      </div>

      <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 gap-4">
        {visibleActors.map((actor, idx) => (
          <Link
            key={idx}
            href={`/search?keyword=${encodeURIComponent(actor.name)}`}
            className="group block"
          >
            <div className="relative aspect-square w-full rounded-2xl overflow-hidden border border-white/5 group-hover:border-red-600 transition-all duration-500 shadow-xl bg-white/5">
              <img
                src={actor.avatar}
                alt={actor.name}
                loading="lazy"
                className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                // 💡 Dự phòng nếu ảnh bị lỗi link
                onError={(e) => (e.currentTarget.style.display = 'none')}
              />
            </div>
            <p className="mt-2 text-[9px] font-black text-white/40 group-hover:text-red-500 transition-colors uppercase italic text-center line-clamp-2">
              {actor.name}
            </p>
          </Link>
        ))}
      </div>
    </div>
  );
}
