export const runtime = 'edge';
export const dynamic = 'force-dynamic';

import { getMoviesFromD1 } from '@/lib/kkphim';
import { NextResponse } from 'next/server';

export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const slug = searchParams.get('slug') || '';
    const page = parseInt(searchParams.get('page') || '1');
    
    // Kiểm tra xem có phải gọi từ Trang chủ không
    const homeOnly = searchParams.get('home') === '1';
    
    if (!slug) return NextResponse.json([]);

    // 🎯 PHÂN BIỆT TẠI ĐÂY:
    // - Nếu là Trang chủ (homeOnly = true) -> homeOnly = true, sortByYear = false (giữ cào mới nhất)
    // - Nếu là Catalog (homeOnly = false) -> homeOnly = false, sortByYear = true (sắp xếp năm giảm dần)
    const sortByYear = !homeOnly; 

    const results = await getMoviesFromD1(slug, page, 24, homeOnly, sortByYear);
    return NextResponse.json(results || [], {
      headers: {
        'Cache-Control': 'public, s-maxage=60, stale-while-revalidate=300',
      },
    });
  } catch (e) {
    return NextResponse.json([]);
  }
}