export const runtime = 'edge';
export const dynamic = 'force-dynamic'; // Cực kỳ quan trọng: Luôn lấy mới

import { NextRequest, NextResponse } from 'next/server';
import { fetchKKPhimDetail } from '@/lib/kkphim';

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const slug = searchParams.get('slug');

  // Chặn đứng slug rác/undefined
  if (!slug || slug === 'undefined' || slug === 'null' || slug.length < 2) {
    return NextResponse.json({ error: 'Slug invalid' }, { status: 400 });
  }

  try {
    const data = await fetchKKPhimDetail(slug);
    
    // Nếu API KKPhim trả về rỗng, trả lỗi 404 nhưng CẤM CACHE
    if (!data || !data.servers || data.servers.length === 0) {
      return NextResponse.json(
        { error: 'Not Found' }, 
        { 
          status: 404, 
          headers: {
            'Cache-Control': 'no-store, no-cache, must-revalidate, proxy-revalidate',
            'CDN-Cache-Control': 'no-store', // Cấm Cloudflare cache lỗi
            'Vary': '*'
          } 
        }
      );
    }

    // Nếu thành công, trả về dữ liệu và cho phép cache ngắn (5 phút cho chắc)
    return NextResponse.json(data, {
      headers: {
        'Cache-Control': 'public, s-maxage=300, stale-while-revalidate=600',
        'Content-Type': 'application/json',
      }
    });
  } catch (error) {
    return NextResponse.json({ error: 'Server Error' }, { status: 500 });
  }
}