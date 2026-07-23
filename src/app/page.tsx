// @/app/page.tsx
import { HOME_CATEGORIES } from '@/lib/categories';
import HomeClient from '@/components/HomeClient';
import { getMoviesFromD1 } from '@/lib/kkphim';

export const runtime = 'edge';
export const revalidate = 60;

export default async function HomePage() {
  const initialSections: any[] = [];
  const first4Cats = HOME_CATEGORIES.slice(0, 4);

  try {
    // 1. Fetch song song 4 danh mục đầu + 1 danh mục Phim Hot/Chiếu Rạp làm Banner
    // ✅ homeOnly = true -> CHỈ lấy phim năm 2025/2026 cho trang chủ, sắp xếp
    // theo last_updated DESC (cào cái nào tới trước hiện trước). Phim năm
    // khác vẫn được cào/lưu D1 bình thường, chỉ không hiện ở trang chủ —
    // xem đầy đủ ở trang catalog (/danh-sach/...) vì catalog KHÔNG truyền
    // homeOnly nên không bị lọc năm.
    const [catResults, heroMovies] = await Promise.all([
      Promise.all(first4Cats.map(cat => getMoviesFromD1(cat.slug, 1, 24, true))),
      // ✅ FIX: đổi 'phim-chieu-rap' (gạch ngang) -> 'phim_chieu_rap' (gạch dưới)
      // để khớp đúng category_slug được lưu trong D1 (movie_categories) và
      // khớp với nhánh đặc biệt trong kkphim.ts (categorySlug === 'phim_chieu_rap').
      // Bản cũ dùng gạch ngang -> JOIN không khớp -> Hero luôn rỗng, phải fallback.
      getMoviesFromD1('phim_chieu_rap', 1, 8, true) // 🔥 Lấy riêng 8 phim hot làm Hero Banner
    ]);

    first4Cats.forEach((cat, idx) => {
      if (catResults[idx] && catResults[idx].length > 0) {
        initialSections.push({
          title: cat.title,
          type: "category",
          slug: cat.slug,
          items: catResults[idx]
        });
      }
    });

    // Fallback: Nếu không lấy được phim chiếu rạp làm hero thì mới dùng danh mục đầu tiên
    const finalHeroMovies = (heroMovies && heroMovies.length > 0)
      ? heroMovies
      : (initialSections[0]?.items?.slice(0, 8) || []);

    return (
      <HomeClient
        initialSections={initialSections}
        initialHeroMovies={finalHeroMovies}
        allCategoriesData={{}} // Giữ cho HTML siêu nhẹ
        initialLoadedCount={initialSections.length}
      />
    );
  } catch (error) {
    console.error("❌ Lỗi HomePage SSR:", error);
    return <div className="min-h-screen bg-[#050505]" />;
  }
}
