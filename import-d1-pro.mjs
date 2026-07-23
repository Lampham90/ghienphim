// ============================================================
// IMPORT D1 - dùng để chia dữ liệu có sẵn để import vào D1 1 lần
// ĐÃ SỬA (v2): đồng bộ cách insert với schema mới (có UNIQUE INDEX)
//   - movie_categories: INSERT OR IGNORE (thay vì OR REPLACE) để tận
//     dụng UNIQUE INDEX mới, tránh phình dữ liệu khi chạy lại script.
//   - movies_fts: DELETE trước rồi INSERT (vì FTS5 không có UNIQUE).
// Logic category (bao gồm long_tieng/thuyet_minh, le_nhat/bo_nhat)
// của file này vốn đã đúng, giữ nguyên.
// ============================================================
import fs from 'fs';

const FILE_PATH = 'D:/phimkk.movies.json';
const CHUNK_SIZE = 5000; // Chia mỗi file 5000 phim để Cloudflare D1 nạp mượt mà

const escapeSQL = (str) => (!str ? "" : String(str).replace(/'/g, "''"));
const cleanCategorySlug = (s) => s ? s.toLowerCase().trim().replace(/[^a-z0-9-]/g, '') : "";

const COUNTRY_CODE_MAP = {
  'việt nam': 'vn', 'trung quốc': 'trung', 'hàn quốc': 'han',
  'âu mỹ': 'au_my', 'thái lan': 'thai', 'nhật bản': 'nhat'
};

const ACTOR_ALIASES = {
  "châu tinh trì": "stephen chow", "stephen chow": "châu tinh trì",
  "thành long": "jackie chan", "jackie chan": "thành long",
  "lý liên kiệt": "jet li", "jet li": "lý liên kiệt"
};

async function generateFullSQL() {
  console.log("⏳ Đang đọc file JSON...");
  if (!fs.existsSync(FILE_PATH)) {
    console.error(`❌ Không tìm thấy file: ${FILE_PATH}`);
    return;
  }

  const data = JSON.parse(fs.readFileSync(FILE_PATH, 'utf8'));
  console.log(`🚀 Bắt đầu chuyển đổi ${data.length} phim sang SQL...`);

  let fileIndex = 1;
  let sqlBuffer = [];
  let count = 0;

  for (const m of data) {
    const slug = m.slug;
    if (!slug) continue;

    const type = m.type || "";
    const rawCountryName = (m.country?.[0]?.name || "").trim();
    const lang = (m.lang || "").toLowerCase();
    const epCurrent = String(m.episode_current || "").trim();
    const epLower = epCurrent.toLowerCase();
    const epTotal = parseInt(m.episode_total) || 0;

    // 🛑 KIỂM TRA TRAILER / TEASER
    const isTrailer = epLower.includes("trailer") || epLower.includes("teaser");

    // ✅ PHÂN LOẠI TẬP PHIM CHUẨN XÁC
    let finalEp = epCurrent;
    if (isTrailer) {
      finalEp = "Trailer";
    } else {
      if (type === 'hoathinh' || type === 'hoat-hinh') {
        if (epTotal === 1 || epCurrent.includes("1/1") || epLower === 'full') finalEp = "Full";
      } else if (type === 'single' || type === 'phimle' || epTotal === 1 || epCurrent.includes("1/1")) {
        finalEp = "Full";
      }
    }

    const isChieuRap = m.chieurap ? 1 : 0;

    const rawActors = m.actor || [];
    const actorsWithAvatar = rawActors.map(a => {
      if (typeof a === 'string') return { name: a, avatar: "" };
      return { name: a?.name || "", avatar: a?.avatar || "" };
    });

    let movieSql = `INSERT OR REPLACE INTO movies (slug, name, origin_name, thumb_url, poster_url, description, episode_current, episode_total, type, status, view, year, lang, quality, country_name, chieurap, actor_json, category_json, alternative_names_json, last_updated) VALUES ('${slug}', '${escapeSQL(m.name)}', '${escapeSQL(m.origin_name)}', '${m.thumb_url}', '${m.poster_url}', '${escapeSQL(m.content)}', '${finalEp}', ${epTotal}, '${type}', '${m.status}', ${m.view || 0}, ${m.year || 2026}, '${m.lang}', '${m.quality}', '${escapeSQL(rawCountryName)}', ${isChieuRap}, '${escapeSQL(JSON.stringify(actorsWithAvatar))}', '${escapeSQL(JSON.stringify(m.category || []))}', '${escapeSQL(JSON.stringify(m.alternative_names || []))}', ${Date.now()});\n`;

    // SLUG DANH MỤC
    let vCats = new Set();
    (m.category || []).forEach(c => {
      const cSlug = cleanCategorySlug(c.slug);
      if (cSlug) vCats.add(cSlug);
    });

    if (lang.includes("lồng tiếng") || lang.includes("lt")) vCats.add("long_tieng");
    if (lang.includes("thuyết minh") || lang.includes("tm")) vCats.add("thuyet_minh");

    const countryCode = COUNTRY_CODE_MAP[rawCountryName.toLowerCase()];
    if (countryCode) {
      if (finalEp === "Full") {
        vCats.add(`le_${countryCode}`);
      } else if (finalEp !== "Trailer") {
        vCats.add(`bo_${countryCode}`);
      }
    }

    if (type === 'hoathinh' || type === 'hoat-hinh') {
      vCats.add('hoat_hinh');
      if (rawCountryName.toLowerCase().includes('nhật')) vCats.add('anime_nhat');
      if (rawCountryName.toLowerCase().includes('trung')) vCats.add('hh_trung_quoc');
      if (finalEp === 'Full') vCats.add('anime_movie');
    } else if (type === 'tvshows') {
      vCats.add('tv_show');
    }

    if (isChieuRap) vCats.add('phim_chieu_rap');

    // ✅ FIX: OR IGNORE + UNIQUE INDEX (schema mới) = không phình dữ liệu
    vCats.forEach(c => {
      movieSql += `INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('${slug}', '${c}');\n`;
    });

    // FTS (FULL TEXT SEARCH)
    const actorNames = actorsWithAvatar.map(a => a.name);
    let expandedActors = [...actorNames];
    actorNames.forEach(a => {
      if (a && ACTOR_ALIASES[a.toLowerCase()]) {
        expandedActors.push(ACTOR_ALIASES[a.toLowerCase()]);
      }
    });

    const searchBlob = `${m.name} ${m.origin_name} ${expandedActors.join(' ')} ${(m.alternative_names || []).join(' ')}`.toLowerCase();
    // ✅ FIX: DELETE trước rồi INSERT, vì FTS5 không hỗ trợ UNIQUE/OR REPLACE thật sự
    movieSql += `DELETE FROM movies_fts WHERE slug = '${slug}';\n`;
    movieSql += `INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('${slug}', '${escapeSQL(m.name)}', '${escapeSQL(m.origin_name)}', '${escapeSQL(searchBlob)}', '');\n`;

    sqlBuffer.push(movieSql);
    count++;

    if (sqlBuffer.length === CHUNK_SIZE || count === data.length) {
      const fileName = `./data_part_${fileIndex}.sql`;
      fs.writeFileSync(fileName, sqlBuffer.join(''));
      console.log(`✅ Đã xuất thành công: ${fileName} (${sqlBuffer.length} phim)`);
      fileIndex++;
      sqlBuffer = [];
    }
  }

  console.log(`🎉 HOÀN TẤT! Đã tạo ${fileIndex - 1} file SQL với tổng cộng ${count} phim.`);
}

generateFullSQL();
