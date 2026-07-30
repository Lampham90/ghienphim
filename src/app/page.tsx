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
    // 1. Fetch song song các danh mục theo đúng tỉ lệ yêu cầu cho Banner
    const [
      catResults,
      chieuRap,
      boHan,
      boTrung,
      animeNhat
    ] = await Promise.all([
      Promise.all(first4Cats.map(cat => getMoviesFromD1(cat.slug, 1, 24, true))),
      getMoviesFromD1('phim_chieu_rap', 1, 2, true),
      getMoviesFromD1('bo_han', 1, 3, true),
      getMoviesFromD1('bo_trung', 1, 3, true),
      getMoviesFromD1('anime_nhat', 1, 2, true)
    ]);

    // Gộp danh sách Hero theo tỉ lệ: 2 rạp - 3 hàn - 3 trung - 2 anime
    const heroMovies = [
      ...(chieuRap || []),
      ...(boHan || []),
      ...(boTrung || []),
      ...(animeNhat || [])
    ];

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

    const finalHeroMovies = (heroMovies.length > 0)
      ? heroMovies
      : (initialSections[0]?.items?.slice(0, 10) || []);

    return (
      <HomeClient
        initialSections={initialSections}
        initialHeroMovies={finalHeroMovies}
        allCategoriesData={{}}
        initialLoadedCount={initialSections.length}
      />
    );
  } catch (error) {
    console.error("❌ Lỗi HomePage SSR:", error);
    return <div className="min-h-screen bg-[#050505]" />;
  }
}
