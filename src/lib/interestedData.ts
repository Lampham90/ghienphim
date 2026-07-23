// src/lib/interestedData.ts

export const INTERESTED_STRUCTURE = [
  {
    id: "long_tieng",
    title: "Lồng Tiếng",
    slug: "long_tieng",
    bg: "linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)",
  },
  {
    id: "thuyet_minh",
    title: "Thuyết Minh",
    slug: "thuyet_minh",
    bg: "linear-gradient(135deg, #43e97b 0%, #38f9d7 100%)",
  },
  {
    id: "chieu_rap",
    title: "Chiếu Rạp",
    slug: "phim_chieu_rap",
    bg: "linear-gradient(135deg, #eb3349 0%, #f45c43 100%)",
  },
  {
    id: "hoat_hinh",
    title: "Hoạt Hình",
    slug: "hoat_hinh",
    bg: "linear-gradient(135deg, #f83600 0%, #f9d423 100%)",
    subs: [
      { title: "Anime Movie", slug: "anime_movie", bg: "linear-gradient(135deg, #FF512F 0%, #DD2476 100%)" },
      { title: "Anime Nhật", slug: "anime_nhat", bg: "linear-gradient(135deg, #6a11cb 0%, #2575fc 100%)" },
      { title: "HH Trung Quốc", slug: "hh_trung_quoc", bg: "linear-gradient(135deg, #00b09b 0%, #96c93d 100%)" },
    ]
  },
  {
    id: "dien_anh",
    title: "Điện Ảnh",
    slug: "dien_anh",
    bg: "linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)",
    subs: [
      { title: "Hàn Quốc", slug: "le_han", bg: "linear-gradient(135deg, #1e3c72 0%, #2a5298 100%)" },
      { title: "Trung Quốc", slug: "le_trung", bg: "linear-gradient(135deg, #e52d27 0%, #b31217 100%)" },
      { title: "Việt Nam", slug: "le_vn", bg: "linear-gradient(135deg, #11998e 0%, #38ef7d 100%)" },
      { title: "Âu Mỹ", slug: "le_au_my", bg: "linear-gradient(135deg, #FC466B 0%, #3F5EFB 100%)" },
      { title: "Thái Lan", slug: "le_thai", bg: "linear-gradient(135deg, #f093fb 0%, #f5576c 100%)" },
    ]
  },
  {
    id: "phim_bo",
    title: "Phim Bộ",
    slug: "phim_bo",
    bg: "linear-gradient(135deg, #43e97b 0%, #38f9d7 100%)",
    subs: [
      { title: "Hàn Quốc", slug: "bo_han", bg: "linear-gradient(135deg, #6a11cb 0%, #2575fc 100%)" },
      { title: "Trung Quốc", slug: "bo_trung", bg: "linear-gradient(135deg, #f83600 0%, #f9d423 100%)" },
      { title: "Việt Nam", slug: "bo_vn", bg: "linear-gradient(135deg, #11998e 0%, #38ef7d 100%)" },
      { title: "Âu Mỹ", slug: "bo_au_my", bg: "linear-gradient(135deg, #8E2DE2 0%, #4A00E0 100%)" },
      { title: "Thái Lan", slug: "bo_thai", bg: "linear-gradient(135deg, #ff9a9e 0%, #fecfef 100%)" },
    ]
  },
  {
    // ✅ ĐÂY LÀ "Ổ" THỂ LOẠI MỚI NÈ
    id: "the_loai_tong_hop",
    title: "Thể Loại",
    slug: "the_loai",
    bg: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)",
    subs: [
      { title: "Hành Động", slug: "hanh_dong", bg: "linear-gradient(135deg, #f093fb 0%, #f5576c 100%)" },
      { title: "Cổ Trang", slug: "co_trang", bg: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)" },
      { title: "Hài Hước", slug: "hai_huoc", bg: "linear-gradient(135deg, #f093fb 0%, #f5576c 100%)" },
      { title: "Kinh Dị", slug: "kinh_di", bg: "linear-gradient(135deg, #232526 0%, #414345 100%)" },
      { title: "Khoa Học", slug: "khoa_hoc", bg: "linear-gradient(135deg, #00b09b 0%, #414345 100%)" },
      { title: "Tâm Lý", slug: "tam_ly", bg: "linear-gradient(135deg, #f6d365 0%, #fda085 100%)" },
    ]
  },
  {
    id: "tv_show",
    title: "TV Show",
    slug: "tv_show",
    bg: "linear-gradient(135deg, #00b09b 0%, #96c93d 100%)"
  },
];