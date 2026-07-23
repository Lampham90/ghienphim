'use client';

import Link from 'next/link';

interface ActorItem {
  name: string;
  avatar: string;
}

interface ActorListProps {
  movie: any;
}

export default function ActorList({ movie }: ActorListProps) {
  if (!movie || !movie.actor) return null;

  const rawActors = Array.isArray(movie.actor) ? movie.actor : [];

  const actors: ActorItem[] = rawActors
    .map((a: any) => {
      // Dữ liệu từ fetchKKPhimDetail đã được chuẩn hóa thành Object {name, avatar}
      const name = a?.name || '';
      const rawAvatar = a?.avatar || '';

      let avatar = '';
      if (rawAvatar && rawAvatar.trim() !== '') {
        // Luôn đi qua Proxy Route để vượt tường lửa nhà mạng VN
        // encodeURIComponent đảm bảo các ký tự đặc biệt trong URL ảnh TMDB không làm hỏng query string
        avatar = `/api/proxy-image?url=${encodeURIComponent(rawAvatar)}`;
      }

      return { name, avatar };
    })
    // Lọc: Chỉ giữ lại những người có tên và có ảnh
    .filter((item) => item.name.trim() !== '' && item.avatar !== '');

  if (actors.length === 0) return null;

  return (
    <div className="mb-10 relative z-30">
      <h3 className="text-[#F1E5AC] text-[9px] font-black uppercase tracking-[0.3em] mb-4 italic drop-shadow-[0_2px_4px_rgba(0,0,0,0.8)]">
        Diễn viên chính
      </h3>

      <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 gap-3 max-w-5xl">
        {actors.map((actorItem, idx) => {
          const searchUrl = `/search?keyword=${encodeURIComponent(actorItem.name.trim())}`;

          return (
            <Link
              key={`${idx}-${actorItem.name}`}
              href={searchUrl}
              onClick={(e) => e.stopPropagation()}
              title={actorItem.name}
              className="group relative aspect-[3/4] w-full rounded-xl overflow-hidden bg-white/5 border border-white/10 hover:border-red-500/80 transition-all duration-300 shadow-lg block"
            >
              <img
                src={actorItem.avatar}
                alt={actorItem.name}
                loading="lazy"
                className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                onError={(e) => {
                  // Nếu proxy không tải được ảnh (ví dụ link TMDB chết), ẩn phần tử này
                  const target = e.currentTarget as HTMLImageElement;
                  if (target.parentElement) {
                    target.parentElement.style.display = 'none';
                  }
                }}
              />

              <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-end p-2">
                <span className="text-[10px] font-bold text-white line-clamp-2 leading-tight uppercase italic drop-shadow">
                  {actorItem.name}
                </span>
              </div>
            </Link>
          );
        })}
      </div>
    </div>
  );
}
