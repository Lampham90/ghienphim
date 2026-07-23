export const runtime = 'edge';
export const dynamic = 'force-dynamic';

import { getMoviesFromD1 } from '@/lib/kkphim';
import { NextResponse } from 'next/server';

export async function GET(req: Request) {
  try {
    const { searchParams } = new URL(req.url);
    const slug = searchParams.get('slug') || '';
    const page = parseInt(searchParams.get('page') || '1');
    // ✅ FIX: thêm cờ home=1 để phân biệt gọi từ TRANG CHỦ (chỉ phim 2025/2026,
    // sort theo last_updated) hay từ CATALOG (giữ nguyên, không lọc năm).
    // HomeClient.tsx (load thêm khi cuộn) phải gọi kèm &home=1.
    // Trang catalog /danh-sach/... KHÔNG truyền tham số này -> hành vi cũ.
    const homeOnly = searchParams.get('home') === '1';
    if (!slug) return NextResponse.json([]);

    const results = await getMoviesFromD1(slug, page, 24, homeOnly);
    return NextResponse.json(results || []);
  } catch (e) {
    return NextResponse.json([]);
  }
}
