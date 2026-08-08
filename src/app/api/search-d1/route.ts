export const runtime = 'edge';
export const dynamic = 'force-dynamic';
import { searchPhimInD1 } from '@/lib/kkphim';
import { NextResponse } from 'next/server';

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const keyword = searchParams.get('q') || '';
  if (!keyword) return NextResponse.json([]);

  // 1. Lấy kết quả từ D1 như cũ
  const results = await searchPhimInD1(keyword);

  if (!Array.isArray(results) || results.length === 0) {
    return NextResponse.json([]);
  }

  // 2. Kiểm tra và bổ sung thông tin từ Nguồn 2 cho một số kết quả đầu tiên (giới hạn tối đa 5-10 phim để tối ưu tốc độ)
  const enrichedResults = await Promise.all(
    results.map(async (movie: any, index: number) => {
      // Nếu phim đã có sẵn thông tin lồng tiếng/thuyết minh rồi thì giữ nguyên
      if (movie.sub_type || movie.lang || index >= 8) {
        return movie;
      }

      try {
        // Gọi search nhanh bên Nguồn 2 dựa vào tên phim gốc hoặc tên tiếng Việt
        const searchName = movie.origin_name || movie.name;
        if (!searchName) return movie;

        const nguoncRes = await fetch(`https://phim.nguonc.com/api/film/search?keyword=${encodeURIComponent(searchName)}`, {
          signal: AbortSignal.timeout(3000) // Timeout 3s tránh làm nghẽn request
        });
        
        if (nguoncRes.ok) {
          const nguoncData = await nguoncRes.json();
          const items = nguoncData?.items || nguoncData?.data || [];
          
          if (items.length > 0) {
            // Lấy item đầu tiên khớp từ Nguồn 2
            const matched = items[0];
            // Nếu bên Nguồn 2 có thông tin chất lượng hoặc tên thể hiện thuyết minh/lồng tiếng
            if (matched.category || matched.quality) {
              return {
                ...movie,
                // Gắn thêm cờ hoặc thông tin phụ để MovieBadge nhận diện được
                sub_type: matched.quality?.includes('Thuyết Minh') ? 'Thuyết Minh' : 
                          matched.quality?.includes('Lồng Tiếng') ? 'Lồng Tiếng' : movie.sub_type
              };
            }
          }
        }
      } catch (e) {
        // Bỏ qua lỗi timeout hoặc lỗi mạng từ Nguồn 2 để không làm gián đoạn API chính
      }

      return movie;
    })
  );

  return NextResponse.json(enrichedResults);
}