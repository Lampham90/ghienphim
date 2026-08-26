// GIT_UPDATE_MARKER
/**
 * KKPhim Categories Configuration
 * Định nghĩa các danh mục từ dữ liệu crawl
 */

export interface Category {
  title: string;
  slug: string;
  type: "movie" | "category";
  rowType?: "ranked" | "normal"; // Kiểu hàng: Xếp hạng hoặc Thường
  rowVariant?: "vertical" | "horizontal" | "ranked1" | "ranked2" | "ranked3"; 
  variant?: "trending" | "standard"; // Biến thể màu sắc
  icon?: string;
  bg?: string;
}

// ✅ DANH MỤC CHÍNH từ dữ liệu crawl
export const MOVIE_CATEGORIES: Category[] = [
  // === PHIM LẺ ===
  { title: "Phim Lẻ Việt Nam", slug: "le_vn", type: "movie", bg: "linear-gradient(135deg, #ff0844 0%, #ffb199 100%)" },
  { title: "Phim Lẻ Hàn Quốc", slug: "le_han", type: "movie", bg: "linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)" },
  { title: "Phim Lẻ Trung Quốc", slug: "le_trung", type: "movie", bg: "linear-gradient(135deg, #43e97b 0%, #38f9d7 100%)" },
  { title: "Phim Lẻ Âu Mỹ", slug: "le_au_my", type: "movie", bg: "linear-gradient(135deg, #f093fb 0%, #f5576c 100%)" },
  { title: "Phim Lẻ Thái Lan", slug: "le_thai", type: "movie", bg: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)" },

  // === PHIM BỘ ===
  { title: "Phim Bộ Việt Nam", slug: "bo_vn", type: "movie", bg: "linear-gradient(135deg, #ff0844 0%, #ffb199 100%)" },
  { title: "Phim Bộ Hàn Quốc", slug: "bo_han", type: "movie", bg: "linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)" },
  { title: "Phim Bộ Trung Quốc", slug: "bo_trung", type: "movie", bg: "linear-gradient(135deg, #43e97b 0%, #38f9d7 100%)" },
  { title: "Phim Bộ Âu Mỹ", slug: "bo_au_my", type: "movie", bg: "linear-gradient(135deg, #f093fb 0%, #f5576c 100%)" },
  { title: "Phim Bộ Thái Lan", slug: "bo_thai", type: "movie", bg: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)" },

  // === HOẠT HÌNH ===
  { title: "Anime Movie", slug: "anime_movie", type: "movie", bg: "linear-gradient(135deg, #f83600 0%, #f9d423 100%)" },
  { title: "Anime Nhật Bản", slug: "anime_nhat", type: "movie", bg: "linear-gradient(135deg, #6a11cb 0%, #2575fc 100%)" },
  { title: "Hoạt Hình Trung Quốc", slug: "hh_trung_quoc", type: "movie", bg: "linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%)" },

  // === ĐẶC BIỆT ===
  { title: "Phim Chiếu Rạp", slug: "phim_chieu_rap", type: "movie", bg: "linear-gradient(135deg, #eb3349 0%, #f45c43 100%)" },
  { title: "Trending Phim Bộ", slug: "trending_phim_bo", type: "movie", bg: "linear-gradient(135deg, #f45c43 0%, #eb3349 100%)" },
  { title: "Lồng Tiếng", slug: "long_tieng", type: "movie", bg: "linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)" },
  { title: "Thuyết Minh", slug: "thuyet_minh", type: "movie", bg: "linear-gradient(135deg, #43e97b 0%, #38f9d7 100%)" },
];



// ✅ DANH MỤC HIỂN THỊ TRANG CHỦ (Popular sections)
export const HOME_CATEGORIES: Category[] = [
  { title: "🍿 Coi đi - ra rạp chi tốn tiền", slug: "phim_chieu_rap", type: "movie", rowType: "ranked", rowVariant: "ranked3" },
  { title: "🇯🇵 Anime cho Wibu", slug: "anime_nhat", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "🎙 Tiếng mẹ đẻ nè Ní", slug: "long_tieng", type: "movie", rowType: "normal", rowVariant: "horizontal" },
  { title: "🎤 Dành cho dân lười đọc", slug: "thuyet_minh", type: "movie", rowType: "normal", rowVariant: "horizontal" },
  { title: "🐉 HH3D Trung Quốc", slug: "hh_trung_quoc", type: "movie", rowType: "normal", rowVariant: "horizontal" },
  { title: "🎬 Anime Movie Coi là dính", slug: "anime_movie", type: "movie", rowType: "ranked", rowVariant: "ranked1" },
  { title: "🇰🇷 Drama Hàn chữa lành ", slug: "bo_han", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "📺 Drama Trung - xuyên không từa lưa", slug: "bo_trung", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: " TV Show", slug: "tv_show", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "🇻🇳 Cine Việt nè Ní", slug: "le_vn", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "🎬 Thót tim cùng phim kinh dị ", slug: "kinh_di", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "🇰🇷 Điện Ảnh Hàn cùng Oppa", slug: "le_han", type: "movie", rowType: "ranked", rowVariant: "ranked3" },
  { title: "🇨🇳 Điện Ảnh Tung Của - Tung chưởng", slug: "le_trung", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "🇺🇸 Hô-ly-wut nè Ní", slug: "le_au_my", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "🇹🇭 Điện ảnh Thái cười bò", slug: "le_thai", type: "movie", rowType: "normal", rowVariant: "vertical" },
  { title: "📺 Drama hơn mấy bà hàng xóm", slug: "bo_vn", type: "movie", rowType: "normal", rowVariant: "horizontal" },
  { title: "📺 Nghẹt thở cùng Âu Mỹ", slug: "bo_au_my", type: "movie", rowType: "normal", rowVariant: "horizontal" },
  { title: "🇹🇭 Thái không Drama đời không nể", slug: "bo_thai", type: "movie", rowType: "normal", rowVariant: "horizontal" },
];

/**
 * Get category config by slug
 */
export function getCategoryConfig(slug: string): Category | undefined {
  const homeConfig = HOME_CATEGORIES.find((cat) => cat.slug === slug);
  if (homeConfig) return homeConfig;
  
  return MOVIE_CATEGORIES.find((cat) => cat.slug === slug);
}

/**
 * Get category title by slug
 */
export function getCategoryTitle(slug: string): string {
  const config = getCategoryConfig(slug);
  // ✅ Tối ưu: Nếu tìm thấy config thì lấy title đẹp, nếu không thì dọn dẹp slug (kinh_di -> Kinh Di)
  if (config) return config.title;

  return slug
    .replace(/_/g, ' ')
    .replace(/\b\w/g, (l) => l.toUpperCase());
}

