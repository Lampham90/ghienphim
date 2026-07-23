export const runtime = 'edge';

import { NextResponse } from 'next/server';

const TMDB_API_KEY = 'b81e7ce8a6c68dbea801f221b220302c';

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const name = searchParams.get('name') || '';

  if (!name || name.toLowerCase() === 'dang cap nhat') {
    return NextResponse.json({ avatar: null });
  }

  try {
    // Tìm kiếm diễn viên theo tên trên TMDB
    const res = await fetch(
      `https://api.themoviedb.org/3/search/person?api_key=${TMDB_API_KEY}&query=${encodeURIComponent(name)}&language=vi-VN`,
      { cf: { cacheTtl: 604800, cacheEverything: true } } as any
    );

    if (!res.ok) return NextResponse.json({ avatar: null });

    const data = await res.json();
    const person = data.results?.[0]; // Lấy kết quả đầu tiên chính xác nhất

    if (person && person.profile_path) {
      return NextResponse.json({
        avatar: `/api/actor-avatar?path=${encodeURIComponent(person.profile_path)}`
      });
    }

    return NextResponse.json({ avatar: null });
  } catch (e) {
    return NextResponse.json({ avatar: null });
  }
}
