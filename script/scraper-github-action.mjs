// ============================================================
// SCRAPER ĐỊNH KỲ (GitHub Actions) - ĐÃ TỐI ƯU (v13)
// 1. SỬA LỖI TRỄ TẬP: Bỏ qua check tập ở Danh sách cho 100 phim đầu (5 trang).
//    Robot BẮT BUỘC vào Chi tiết để lấy Tập 3 ngay cả khi Danh sách vẫn báo Tập 2.
// 2. CHECK SỐ TẬP: So sánh dbEp (trong DB) và finalEp (vừa cào). Nếu khác -> Cập nhật.
// 3. THỨ TỰ: Trang 1 luôn có last_updated lớn hơn Trang 2 -> Hiện trước trên Web.
// 4. TIẾT KIỆM: Các trang từ 6-10 vẫn skip nếu thực sự không có gì thay đổi.
// ============================================================

import axios from 'axios';
import { execSync } from 'child_process';
import fs from 'fs';

const PAGES = 10;
const TELEGRAM_TOKEN = process.env.TELEGRAM_TOKEN || "";
const TELEGRAM_CHAT_ID = process.env.TELEGRAM_CHAT_ID || "";
const TMDB_API_KEY = process.env.TMDB_API_KEY || "";

const escapeSQL = (str) => (!str ? "" : String(str).replace(/'/g, "''"));
const cleanCategorySlug = (s) => s ? s.toLowerCase().trim().replace(/[^a-z0-9-]/g, '') : "";
const sleep = (ms) => new Promise(res => setTimeout(res, ms));

const COUNTRY_CODE_MAP = {
  'việt nam': 'vn', 'trung quốc': 'trung', 'hàn quốc': 'han',
  'âu mỹ': 'au_my', 'thái lan': 'thai', 'nhật bản': 'nhat'
};

const ACTOR_ALIASES = {
  "châu tinh trì": "stephen chow", "stephen chow": "châu tinh trì",
  "thành long": "jackie chan", "jackie chan": "thành long",
  "lý liên kiệt": "jet li", "jet li": "lý liên kiệt"
};

function checkMoviesInDB(slugs) {
  if (!slugs || slugs.length === 0) return new Map();
  try {
    const slugInClause = slugs.map(s => `'${escapeSQL(s)}'`).join(',');
    const query = `SELECT slug, episode_current FROM movies WHERE slug IN (${slugInClause})`;
    const rawResult = execSync(
      `npx wrangler d1 execute phim_db --remote --command="${query}" --json`,
      { encoding: 'utf-8', maxBuffer: 10 * 1024 * 1024, stdio: ['pipe', 'pipe', 'ignore'] }
    );
    const parsed = JSON.parse(rawResult);
    const rows = parsed[0]?.results || parsed?.results || [];
    const movieMap = new Map();
    for (const row of rows) {
      if (row.slug) movieMap.set(row.slug, String(row.episode_current || '').trim());
    }
    return movieMap;
  } catch (e) { return new Map(); }
}

async function getTmdbActors(tmdbType, tmdbId, fallbackActors = []) {
  if (!tmdbId || !tmdbType || !TMDB_API_KEY) return fallbackActors.map(name => ({ name, avatar: "" }));
  try {
    const url = `https://api.themoviedb.org/3/${tmdbType}/${tmdbId}/credits?api_key=${TMDB_API_KEY}&language=vi-VN`;
    const res = await axios.get(url, { timeout: 3000 });
    const cast = res.data?.cast || [];
    if (cast.length > 0) {
      return cast.slice(0, 10).map(c => ({
        name: c.name || c.original_name,
        avatar: c.profile_path ? `https://image.tmdb.org/t/p/w185${c.profile_path}` : ""
      }));
    }
  } catch (e) {}
  return fallbackActors.map(name => ({ name, avatar: "" }));
}

async function start() {
    console.log(`📡 BƯỚC 1: Quét danh sách 10 trang...`);
    let allScrapedItems = [];
    for (let page = 1; page <= PAGES; page++) {
        try {
            const listRes = await axios.get(`https://phimapi.com/v1/api/danh-sach?page=${page}`);
            allScrapedItems.push(...(listRes.data.data.items || []));
        } catch (e) {}
        await sleep(100);
    }

    if (allScrapedItems.length === 0) return;

    const allSlugs = allScrapedItems.map(item => item.slug).filter(Boolean);
    const existingMovies = checkMoviesInDB(allSlugs);

    let sql = "";
    let addedReport = [];
    let processedCount = 0;
    let now = Date.now();

    for (let i = 0; i < allScrapedItems.length; i++) {
        const item = allScrapedItems[i];
        const dbEp = existingMovies.get(item.slug);

        // ✅ LOGIC QUAN TRỌNG: 100 phim đầu (5 trang) BẮT BUỘC cào chi tiết.
        // Không skip ở đây vì List API của nguồn thường bị trễ số tập.
        const isForceUpdate = i < 100;

        if (!isForceUpdate && dbEp && dbEp === String(item.episode_current || '').trim()) {
            continue;
        }

        try {
            await sleep(350);
            const detailRes = await axios.get(`https://phimapi.com/phim/${item.slug}`);
            const m = detailRes.data.movie;
            if (!m) continue;

            const type = m.type || "";
            const epCurrent = (m.episode_current || "").trim();
            const epLower = epCurrent.toLowerCase();
            const epTotal = parseInt(m.episode_total) || 0;
            const isTrailer = epLower.includes("trailer") || epLower.includes("teaser");

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

            // ✅ CHECK SỐ TẬP THỰC TẾ: Nếu số tập sau khi cào chi tiết vẫn giống DB thì skip
            if (!isForceUpdate && dbEp && dbEp === finalEp) {
                continue;
            }

            const tmdbType = m.tmdb?.type || (type === 'single' || type === 'phimle' ? 'movie' : 'tv');
            const actorsWithAvatar = await getTmdbActors(tmdbType, m.tmdb?.id, m.actor || []);

            // ✅ Sắp xếp: i tăng thì last_updated giảm -> Trang 1 LUÔN hiện trước Trang 2
            const movieLastUpdated = now - i;

            sql += `INSERT OR REPLACE INTO movies (slug, name, origin_name, thumb_url, poster_url, description, episode_current, episode_total, type, status, view, year, lang, quality, country_name, chieurap, actor_json, category_json, alternative_names_json, last_updated) VALUES ('${m.slug}', '${escapeSQL(m.name)}', '${escapeSQL(m.origin_name)}', '${m.thumb_url}', '${m.poster_url}', '${escapeSQL(m.content)}', '${finalEp}', ${epTotal}, '${type}', '${m.status}', ${m.view || 0}, ${parseInt(m.year) || 2025}, '${m.lang}', '${m.quality}', '${escapeSQL(m.country?.[0]?.name || "")}', ${m.chieurap ? 1 : 0}, '${escapeSQL(JSON.stringify(actorsWithAvatar))}', '${escapeSQL(JSON.stringify(m.category || []))}', '${escapeSQL(JSON.stringify(m.alternative_names || []))}', ${movieLastUpdated});\n`;

            let vCats = new Set();
            (m.category || []).forEach(c => {
                const cSlug = cleanCategorySlug(c.slug);
                if (cSlug) vCats.add(cSlug);
            });

            const lang = (m.lang || "").toLowerCase();
            if (lang.includes("lồng tiếng") || lang.includes("lt")) vCats.add("long_tieng");
            if (lang.includes("thuyết minh") || lang.includes("tm")) vCats.add("thuyet_minh");

            const rawCountryName = (m.country?.[0]?.name || "").trim();
            const countryCode = COUNTRY_CODE_MAP[rawCountryName.toLowerCase()];
            if (countryCode) {
                if (finalEp === "Full") vCats.add(`le_${countryCode}`);
                else if (finalEp !== "Trailer") vCats.add(`bo_${countryCode}`);
            }

            if (type === 'hoathinh' || type === 'hoat-hinh') {
                vCats.add('hoat_hinh');
                if (rawCountryName.toLowerCase().includes('nhật')) vCats.add('anime_nhat');
                if (rawCountryName.toLowerCase().includes('trung')) vCats.add('hh_trung_quoc');
                if (finalEp === 'Full') vCats.add('anime_movie');
            } else if (type === 'tvshows') {
                vCats.add('tv_show');
            }
            if (m.chieurap) vCats.add('phim_chieu_rap');

            vCats.forEach(c => {
                sql += `INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('${m.slug}', '${c}');\n`;
            });

            const actorNames = actorsWithAvatar.map(a => a.name);
            let expandedActors = [...actorNames];
            actorNames.forEach(a => {
                if (a && ACTOR_ALIASES[a.toLowerCase()]) expandedActors.push(ACTOR_ALIASES[a.toLowerCase()]);
            });
            const searchBlob = `${m.name} ${m.origin_name} ${expandedActors.join(' ')}`.toLowerCase();
            sql += `DELETE FROM movies_fts WHERE slug = '${m.slug}';\n`;
            sql += `INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('${m.slug}', '${escapeSQL(m.name)}', '${escapeSQL(m.origin_name)}', '${escapeSQL(searchBlob)}', '');\n`;

            addedReport.push(`| ${m.name} | ${dbEp || 'N/A'} -> ${finalEp} | ${dbEp ? "Cập nhật" : "Mới"} |`);
            processedCount++;
        } catch (e) {}
    }

    if (processedCount > 0) {
        fs.writeFileSync('./update.sql', sql);
        execSync('npx wrangler d1 execute phim_db --remote --file=./update.sql', { stdio: 'inherit' });
        const summary = `### ✅ ĐỒNG BỘ HOÀN TẤT (${processedCount} phim cập nhật)\n\n| Tên Phim | Tập Cũ -> Mới | Trạng thái |\n| :--- | :--- | :--- |\n` + addedReport.join('\n');
        if (process.env.GITHUB_STEP_SUMMARY) fs.appendFileSync(process.env.GITHUB_STEP_SUMMARY, summary);
    } else {
        console.log("💎 Không có phim nào mới. Đã Skip toàn bộ.");
    }
}
start();
