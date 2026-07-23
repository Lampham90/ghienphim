# 🎬 Hướng Dẫn Sử Dụng KKPhim API

## 📋 Cấu Trúc Mới

```
src/
├── lib/
│   ├── kkphim.ts              ← Fetch dữ liệu crawl + KKPhim API
│   ├── categories.ts           ← Config danh mục
│   └── useKKPhim.ts            ← React hooks
├── app/
│   ├── page.tsx                ← Trang chủ (✅ DONE)
│   ├── api/kkphim/route.ts     ← API route fetch link video
│   ├── [type]/[slug]/page.tsx   ← Category page (⚠️ CẦN UPDATE)
│   ├── phim/[slug]/page.tsx     ← Movie detail (⚠️ CẦN UPDATE)
│   └── search/page.tsx          ← Search page (⚠️ CẦN UPDATE)
```

---

## 🚀 Cách Sử Dụng

### 1️⃣ **Trang Chủ** (✅ DONE)
```tsx
import { getCategoryMovies } from '@/lib/kkphim';
import { HOME_CATEGORIES } from '@/lib/categories';

const movies = await getCategoryMovies('trending_phim_bo');
// movies = [{ name, year, slug, thumb, poster, ... }]
```

### 2️⃣ **Chi Tiết Phim** (phim/[slug]/page.tsx)
```tsx
import { useKKPhimDetail } from '@/lib/useKKPhim';

export default function MovieDetail({ params }) {
  const { slug } = params;
  const { detail, loading } = useKKPhimDetail(slug);

  // detail = {
  //   name: "...",
  //   servers: [
  //     {
  //       server_name: "Server 1",
  //       episodes: [
  //         { episode_num: "1", link: "https://..." },
  //         ...
  //       ]
  //     }
  //   ]
  // }

  if (loading) return <div>Đang tải...</div>;
  if (!detail) return <div>Không tìm thấy phim</div>;

  return (
    <video>
      <source src={detail.servers[0].episodes[0].link} type="application/x-mpegURL" />
    </video>
  );
}
```

### 3️⃣ **Lấy Link Episode**
```tsx
import { useKKPhimEpisodeLink } from '@/lib/useKKPhim';

const link = useKKPhimEpisodeLink(slug, episode, serverIndex);
// link = "https://..." hoặc null
```

### 4️⃣ **Tìm Kiếm Phim**
```tsx
import { searchMovies } from '@/lib/kkphim';

const results = await searchMovies('one piece');
// results = [{ name, slug, ... }]
```

### 5️⃣ **Get Category Movies**
```tsx
import { getCategoryMovies } from '@/lib/kkphim';

const movies = await getCategoryMovies('le_vn'); // Phim lẻ Việt Nam
const movies = await getCategoryMovies('bo_han'); // Phim bộ Hàn Quốc
const movies = await getCategoryMovies('anime_movie'); // Hoạt hình
```

---

## 📝 Danh Mục Available

| Slug | Mô Tả |
|------|-------|
| `le_vn` | Phim Lẻ Việt Nam |
| `le_han` | Phim Lẻ Hàn Quốc |
| `le_trung` | Phim Lẻ Trung Quốc |
| `le_au_my` | Phim Lẻ Âu Mỹ |
| `le_thai` | Phim Lẻ Thái Lan |
| `bo_vn` | Phim Bộ Việt Nam |
| `bo_han` | Phim Bộ Hàn Quốc |
| `bo_trung` | Phim Bộ Trung Quốc |
| `bo_au_my` | Phim Bộ Âu Mỹ |
| `bo_thai` | Phim Bộ Thái Lan |
| `anime_movie` | Anime Movie |
| `anime_nhat` | Anime Nhật Bản |
| `hh_trung_quoc` | Hoạt Hình Trung Quốc |
| `phim_chieu_rap` | Phim Chiếu Rạp |
| `trending_phim_bo` | Trending Phim Bộ |
| `long_tieng` | Lồng Tiếng |
| `thuyet_minh` | Thuyết Minh |

---

## ⚙️ Config KKPhim API

File: `src/lib/kkphim.ts` (line 27-29)

```tsx
const KKPHIM_BASE_URL = "https://phim.nguonc.com/api"; // ← THAY URL THỰC TẾ
const BACKUP_KKPHIM_URLS = [
  "https://phim.nguonc.com/api",
  "https://phimapi.com/api", // ← Thêm backup URL nếu cần
];
```

**Endpoint format:**
```
GET {BASE_URL}/films/slug/{slug}
```

---

## 🔗 Data Flow

```
Crawl Data (JSON)
    ↓
getCategoryMovies() → [{ name, slug, poster, thumb, ... }]
    ↓
[Trang Chủ + Category Pages]
    ↓
User click phim → /api/kkphim?slug=xxx
    ↓
fetchKKPhimDetail() → { servers, episodes, link }
    ↓
[Video Player]
    ↓
Play: <video><source src={link} /></video>
```

---

## 🐛 Troubleshooting

### ❌ API route không hoạt động?
- Kiểm tra `KKPHIM_BASE_URL` có đúng không
- Test: `curl "http://localhost:3000/api/kkphim?slug=test-phim"`

### ❌ Link video bị null?
- Kiểm tra API response có `servers` field không
- Thử backup URL

### ❌ Data crawl load chậm?
- Dữ liệu từ GitHub, network có thể chậm
- Add cache: `const data = await fetchCrawledData();` trong SSR

---

## ✅ Next Steps

1. **Update phim/[slug]/page.tsx** - thay Ophim → KKPhim
2. **Update [type]/[slug]/page.tsx** - category pages
3. **Update search/page.tsx** - search functionality
4. **Test video player** - verify link video hoạt động
5. **Deploy** - test production environment

---

Generated: 2026-04-21
