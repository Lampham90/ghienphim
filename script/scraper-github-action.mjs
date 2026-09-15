// ============================================================
// SCRAPER ĐỊNH KỲ (GitHub Actions) - PHIÊN BẢN CHUẨN TURSO + D1 (v16)
// 1. KHÔNG CẦN CÀI THÊM THƯ VIỆN: Dùng axios sẵn có gọi trực tiếp Turso HTTP API.
// 2. TỰ ĐỘNG TẢI TMDB LOGO & BACKDROP: Web hiển thị logo tức thì trong 0 giây.
// 3. SIÊU TỐI ƯU: Check số tập và ngày modified để skip phim không đổi, tiết kiệm tài nguyên.
// 4. BÁO CÁO: Hiển thị bảng chi tiết trực tiếp trên GitHub Actions Step Summary.
// ============================================================

import axios from 'axios';
import { execSync } from 'child_process';
import fs from 'fs';

// Có thể truyền tham số qua dòng lệnh: node update-d1.mjs 1 100 (từ trang 1 đến 100)
// Hoặc mặc định chạy 10 trang đầu khi cron tự động chạy
const START_PAGE = parseInt(process.env.START_PAGE || process.argv[2] || '1');
const END_PAGE = parseInt(process.env.END_PAGE || process.argv[3] || '10');
const TMDB_API_KEY = process.env.TMDB_API_KEY || "b81e7ce8a6c68dbea801f221b220302c";
const TURSO_URL = 'https://phim-db-lampham90.aws-ap-northeast-1.turso.io';
const TURSO_AUTH_TOKEN = process.env.TURSO_AUTH_TOKEN || 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODkzNzA3NzAsImlkIjoiMDFhMDllY2UtYmEwMS03MGZmLWJiZjgtMDE0YzBhZTc4ZWE0Iiwia2lkIjoiUDFmaGgzd3g5bmNsejNvOFQxVGlqMzJwVmdjWFY3YXFCbTczOW05WE9VayIsInJpZCI6Ijg3NDM1NDEwLWIzMzAtNGU5Ni1iNWYwLTRiODE0MjBhMDY2NiJ9.ebSs5uG_BlrDnCR_QI5uHyb6oDRUpthoEODOcWGON0qjgE-WzBKKWQO9rwkfbQiFWyCvzFDoa8jFKPiYsjmKDQ';

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

// Gọi Turso HTTP API qua axios không cần cài @libsql/client
async function executeTurso(sqlOrQueries) {
  const queries = Array.isArray(sqlOrQueries) ? sqlOrQueries : [sqlOrQueries];
  const requests = queries.map(q => ({ type: 'execute', stmt: { sql: q } }));
  requests.push({ type: 'close' });
  const res = await axios.post(`${TURSO_URL}/v2/pipeline`, { requests }, {
    headers: {
      'Authorization': `Bearer ${TURSO_AUTH_TOKEN}`,
      'Content-Type': 'application/json'
    },
    timeout: 15000
  });
  return res.data?.results;
}

async function checkMoviesInDB(slugs) {
  if (!slugs || slugs.length === 0) return new Map();
  try {
    const slugInClause = slugs.map(s => `'${escapeSQL(s)}'`).join(',');
    const query = `SELECT slug, episode_current, modified FROM movies WHERE slug IN (${slugInClause})`;
    const results = await executeTurso(query);
    const execResult = results?.[0]?.response?.result;
    if (!execResult) return new Map();
    const cols = execResult.cols.map(c => c.name);
    const movieMap = new Map();
    for (const r of execResult.rows) {
      const row = {};
      r.forEach((val, idx) => { row[cols[idx]] = val?.value; });
      if (row.slug) {
        movieMap.set(row.slug, {
          episode_current: String(row.episode_current || '').trim(),
          modified: String(row.modified || '').trim()
        });
      }
    }
    return movieMap;
  } catch (e) {
    return new Map();
  }
}

async function getTmdbActors(tmdbType, tmdbId, fallbackActors = []) {
  if (!tmdbId || !tmdbType || !TMDB_API_KEY) return fallbackActors.map(name => ({ name, avatar: "" }));
  try {
    const url = `https://api.tmdb.org/3/${tmdbType}/${tmdbId}/credits?api_key=${TMDB_API_KEY}&language=vi-VN`;
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

async function getTmdbMedia(tmdbType, tmdbId) {
  if (!tmdbId || !tmdbType || !TMDB_API_KEY) return null;
  try {
    const url = `https://api.tmdb.org/3/${tmdbType}/${tmdbId}/images?api_key=${TMDB_API_KEY}&include_image_language=vi,en,null`;
    const res = await axios.get(url, { timeout: 3000 });
    const logos = res.data?.logos || [];
    const backdrops = res.data?.backdrops || [];
    const posters = res.data?.posters || [];

    const bestLogo =
      logos.find(l => l.iso_639_1 === 'vi') ||
      logos.find(l => l.iso_639_1 === 'en') ||
      logos.find(l => l.iso_639_1 === null) ||
      logos[0];

    const bestBackdrop = backdrops[0];
    const bestPoster = posters[0];

    return {
      logo_url: bestLogo ? `https://image.tmdb.org/t/p/original${bestLogo.file_path}` : null,
      backdrop_url: bestBackdrop ? `https://image.tmdb.org/t/p/original${bestBackdrop.file_path}` : null,
      poster_url: bestPoster ? `https://image.tmdb.org/t/p/original${bestPoster.file_path}` : null,
      aspect_ratio: bestLogo?.aspect_ratio || null
    };
  } catch (e) {
    return null;
  }
}

async function start() {
  console.log(`📡 BƯỚC 1: Quét danh sách từ trang ${START_PAGE} đến trang ${END_PAGE}...`);
  let allScrapedItems = [];
  for (let page = START_PAGE; page <= END_PAGE; page++) {
    try {
      const listRes = await axios.get(`https://phimapi.com/v1/api/danh-sach?page=${page}`, {
        headers: { 'User-Agent': 'Mozilla/5.0' }
      });
      allScrapedItems.push(...(listRes.data.data.items || []));
    } catch (e) {}
    await sleep(100);
  }

  if (allScrapedItems.length === 0) return;

  // ✅ LỌC TRÙNG SLUG
  const uniqueMap = new Map();
  allScrapedItems.forEach(item => {
    if (item && item.slug) uniqueMap.set(item.slug, item);
  });
  allScrapedItems = Array.from(uniqueMap.values());

  const allSlugs = allScrapedItems.map(item => item.slug).filter(Boolean);
  const existingMovies = await checkMoviesInDB(allSlugs);

  let sql = "";
  let addedReport = [];
  let processedCount = 0;
  let now = Date.now();

  for (let i = 0; i < allScrapedItems.length; i++) {
    const item = allScrapedItems[i];
    const dbData = existingMovies.get(item.slug);
    const listEp = String(item.episode_current || '').trim();
    const listModified = String(item.modified?.time || item.modified || '').trim();
    const dbEp = dbData ? dbData.episode_current : "";
    const dbModified = dbData ? dbData.modified : "";

    // 100 phim đầu bắt buộc check sâu, các trang sau nếu không đổi thì skip
    const isForceUpdate = i < 100;
    if (!isForceUpdate && dbData && dbEp === listEp && dbModified === listModified) {
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

      if (!isForceUpdate && dbData && dbEp === finalEp && dbModified === listModified) {
        continue;
      }

      const tmdbType = m.tmdb?.type || (type === 'single' || type === 'phimle' ? 'movie' : 'tv');
      const [actorsWithAvatar, tmdbMedia] = await Promise.all([
        getTmdbActors(tmdbType, m.tmdb?.id, m.actor || []),
        getTmdbMedia(tmdbType, m.tmdb?.id)
      ]);

      const tmdbPayload = {
        id: m.tmdb?.id || null,
        type: tmdbType,
        vote_average: m.tmdb?.vote_average || null,
        vote_count: m.tmdb?.vote_count || null,
        logo_url: tmdbMedia?.logo_url || null,
        backdrop_url: tmdbMedia?.backdrop_url || null,
        poster_url: tmdbMedia?.poster_url || null,
        aspect_ratio: tmdbMedia?.aspect_ratio || null
      };

      const imdbPayload = {
        id: m.imdb?.id || null,
        vote_average: m.imdb?.vote_average || null
      };

      const movieLastUpdated = now - i;

      sql += `INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  '${m.slug}', '${escapeSQL(m.name)}', '${escapeSQL(m.origin_name)}', '${m.thumb_url}', '${m.poster_url}', '${escapeSQL(m.content)}', 
  '${finalEp}', ${epTotal}, '${type}', '${m.status}', ${m.view || 0}, ${parseInt(m.year) || 2025}, 
  '${m.lang}', '${m.quality}', '${escapeSQL(m.country?.[0]?.name || "")}', ${m.chieurap ? 1 : 0}, 
  '${escapeSQL(JSON.stringify(actorsWithAvatar))}', '${escapeSQL(JSON.stringify(m.category || []))}', 
  '${escapeSQL(JSON.stringify(m.alternative_names || []))}', '${escapeSQL(JSON.stringify(tmdbPayload))}', '${escapeSQL(JSON.stringify(imdbPayload))}', 
  ${movieLastUpdated}, '${escapeSQL(listModified)}'
);\n`;

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
    console.log(`🚀 Đang cập nhật ${processedCount} phim vào Turso DB...`);
    try {
      const stmts = sql.split(';\n').map(s => s.trim()).filter(Boolean);
      for (let i = 0; i < stmts.length; i += 50) {
        const batch = stmts.slice(i, i + 50);
        await executeTurso(batch);
      }
      console.log(`✅ Cập nhật Turso thành công!`);
    } catch (e) {
      console.error('❌ Lỗi cập nhật Turso:', e.message);
    }

    try {
      if (process.env.CLOUDFLARE_API_TOKEN) {
        console.log(`🚀 Đang đồng bộ thêm vào Cloudflare D1 (backup)...`);
        execSync('npx wrangler d1 execute phim_db --remote --file=./update.sql', { stdio: 'inherit' });
      }
    } catch (e) {}

    const summary = `### ✅ ĐỒNG BỘ HOÀN TẤT (${processedCount} phim cập nhật)\n\n| Tên Phim | Tập Cũ -> Mới | Trạng thái |\n| :--- | :--- | :--- |\n` + addedReport.join('\n');
    if (process.env.GITHUB_STEP_SUMMARY) fs.appendFileSync(process.env.GITHUB_STEP_SUMMARY, summary);
  } else {
    console.log("💎 Không có phim nào mới. Đã Skip toàn bộ.");
  }
}

start();
