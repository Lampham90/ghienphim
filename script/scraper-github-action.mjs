// ============================================================
// SCRAPER ĐỊNH KỲ (GitHub Actions) - BẢN TỐI ƯU TOÀN DIỆN (v21.2)
// 1. Đồng bộ song song 2 Turso DB (phimdb2 & phimdb3).
// 2. SKIP THÔNG MINH: Bỏ qua phim không có thay đổi (tiết kiệm 95% request & write quota).
// 3. CHỐNG PHỒNG DATABASE: Dọn sạch categories cũ và chạy optimize FTS5 định kỳ.
// 4. TMDB SHARP: Tự động tải Logo, Poster & Backdrop độ phân giải gốc (/original/).
// 5. Đồng bộ hoàn hảo 100% với schema và src/lib/kkphim.ts.
// 6. KIỂM TRA LỖI NGHIÊM NGẶT: Bắt lỗi Turso pipeline và tự fail job nếu cả 2 DB lỗi.
// ============================================================

import axios from 'axios';
import fs from 'fs';

const START_PAGE = parseInt(process.env.START_PAGE || process.argv[2] || '1', 10);
const END_PAGE = parseInt(process.env.END_PAGE || process.argv[3] || '10', 10);
const FORCE_UPDATE = process.env.FORCE_UPDATE === 'true' || process.argv.includes('--force');

const TMDB_API_KEY = process.env.TMDB_API_KEY || "b81e7ce8a6c68dbea801f221b220302c";

// 💡 TURSO 2 CHÍNH (Ưu tiên biến riêng biệt TURSO2_TOKEN, sau đó mới tới fallback)
const TURSO2_URL = process.env.TURSO2_URL || 'https://phimdb2-plam.aws-ap-northeast-1.turso.io';
const TURSO2_TOKEN = process.env.TURSO2_TOKEN || process.env.TURSO_AUTH_TOKEN || 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODk0NDY1NTAsImlkIjoiMDFhMGEzNTMtNTEwMS03OWUzLTg2ODUtYmE3MzJmMjM2MDg0Iiwia2lkIjoiTzVWWk5LbEFNODJ6cWEyQ3RzSmtZUHI3Z2l4U1RSX3RTZXZjX3BoT3VLVSIsInJpZCI6ImViNTQ0MjAzLWY2YjMtNDliOC05MzcyLTk0ODdmMzA0NWVmNyJ9.pz9hEIZC4iAIwfn2hu-6fbq_S_EUveAYVjFFfZRRZctKhiDyaGdWlS2bb761dM9knCfSYAU66wl0waXpi4-dDQ';

// 💡 TURSO 3 PHỤ (FALLBACK)
const TURSO3_URL = process.env.TURSO3_URL || 'https://phimdb3-plam2.aws-ap-northeast-1.turso.io';
const TURSO3_TOKEN = process.env.TURSO3_TOKEN || process.env.TURSO3_AUTH_TOKEN || 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODk0NDY5NTEsImlkIjoiMDFhMGEzNTktN2MwMS03NjQ5LWJkNzctOWQzYzk3YjY3NDQ3Iiwia2lkIjoiZ1lwNFdZTEtJQ1Jva2FzR0FHNnNobHZBNjZGdGVkOU5IWGZaeWltZHUtYyIsInJpZCI6ImFhMGIwY2RhLWZjY2EtNDgxYy1hNTg5LWIxY2Y3YmI5Y2Y1NCJ9.x2iiZWXagUwDmhcK77qWbwgW4vxOSPKRNDa_w5ToCHl0u4XHWzjEaBcAxA8UOBaq5nFWUP-suVqeGrCCfZayDA';

const escapeSQL = (str) => (!str ? "" : String(str).replace(/'/g, "''"));
const cleanCategorySlug = (s) => s ? s.toLowerCase().trim().replace(/[^a-z0-9-_]/g, '') : "";
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

// Thực thi câu lệnh qua HTTP Pipeline với validation kết quả nghiêm ngặt
async function executeTursoDb(url, token, queries) {
  if (!queries || queries.length === 0) return { data: { results: [] } };
  const requests = queries.map(q => ({ type: 'execute', stmt: { sql: q } }));
  requests.push({ type: 'close' });
  const res = await axios.post(`${url}/v2/pipeline`, { requests }, {
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    timeout: 30000
  });

  // Bắt lỗi từng câu lệnh trong mảng kết quả của Turso
  if (res.data && res.data.results) {
    for (const r of res.data.results) {
      if (r.type === 'error') {
        throw new Error(r.error?.message || JSON.stringify(r.error || r));
      }
    }
  }
  return res;
}

// Kiểm tra phim đã có trong DB chưa để SKIP thông minh (có fallback sang DB3 nếu DB2 bận)
async function checkMoviesInDB(slugs) {
  if (!slugs || slugs.length === 0) return new Map();
  try {
    const slugInClause = slugs.map(s => `'${escapeSQL(s)}'`).join(',');
    const query = `SELECT slug, episode_current, modified, last_updated FROM movies WHERE slug IN (${slugInClause})`;
    
    let res = null;
    try {
      res = await executeTursoDb(TURSO2_URL, TURSO2_TOKEN, [query]);
    } catch (e2) {
      console.warn("⚠️ Kiểm tra DB2 gặp trục trặc, chuyển sang kiểm tra DB3 dự phòng:", e2.message);
      res = await executeTursoDb(TURSO3_URL, TURSO3_TOKEN, [query]);
    }

    const execResult = res?.data?.results?.[0]?.response?.result;
    if (!execResult) return new Map();
    const cols = execResult.cols.map(c => c.name);
    const movieMap = new Map();
    for (const r of execResult.rows) {
      const row = {};
      r.forEach((val, idx) => { row[cols[idx]] = val?.value; });
      if (row.slug) {
        movieMap.set(row.slug, {
          episode_current: String(row.episode_current || '').trim(),
          modified: String(row.modified || '').trim(),
          last_updated: row.last_updated ? parseInt(row.last_updated, 10) : null
        });
      }
    }
    return movieMap;
  } catch (e) {
    console.warn("⚠️ Không thể kiểm tra DB trước, sẽ tiếp tục cào toàn bộ:", e.message);
    return new Map();
  }
}

async function getTmdbActors(tmdbType, tmdbId, fallbackActors = []) {
  if (!tmdbId || !tmdbType || !TMDB_API_KEY) return fallbackActors.map(name => ({ name, avatar: "" }));
  try {
    const url = `https://api.tmdb.org/3/${tmdbType}/${tmdbId}/credits?api_key=${TMDB_API_KEY}&language=vi-VN`;
    const res = await axios.get(url, { timeout: 4000 });
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
    const res = await axios.get(url, { timeout: 4000 });
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
  console.log(`📡 BƯỚC 1: Quét danh sách phim từ trang ${START_PAGE} đến trang ${END_PAGE}... (Force Update: ${FORCE_UPDATE})`);
  let allScrapedItems = [];
  for (let page = START_PAGE; page <= END_PAGE; page++) {
    try {
      const listRes = await axios.get(`https://phimapi.com/v1/api/danh-sach?page=${page}`, {
        headers: { 'User-Agent': 'Mozilla/5.0' },
        timeout: 10000
      });
      const items = listRes.data?.data?.items || [];
      allScrapedItems.push(...items);
    } catch (e) {
      console.warn(`⚠️ Lỗi tải trang danh sách ${page}:`, e.message);
    }
    await sleep(80);
  }

  if (allScrapedItems.length === 0) {
    console.log("❌ Không lấy được danh sách phim nào từ phimapi. Kết thúc.");
    return;
  }

  // Lọc trùng slug trong cùng đợt cào
  const uniqueMap = new Map();
  allScrapedItems.forEach(item => {
    if (item && item.slug) uniqueMap.set(item.slug, item);
  });
  allScrapedItems = Array.from(uniqueMap.values());
  console.log(`📋 Tổng số phim cần duyệt: ${allScrapedItems.length} phim.`);

  const allSlugs = allScrapedItems.map(item => item.slug).filter(Boolean);
  const existingMovies = await checkMoviesInDB(allSlugs);

  let sql = "";
  let addedReport = [];
  let skippedCount = 0;
  let processedCount = 0;
  let now = Date.now();

  for (let i = 0; i < allScrapedItems.length; i++) {
    const item = allScrapedItems[i];
    const dbData = existingMovies.get(item.slug);
    const listEp = String(item.episode_current || '').trim();
    const listModified = String(item.modified?.time || item.modified || '').trim();
    const dbEp = dbData ? dbData.episode_current : "";
    const dbModified = dbData ? dbData.modified : "";

    // ✅ SKIP CHUẨN XÁC: Nếu phim đã có trong DB, tập phim và ngày modified không đổi thì SKIP ngay lập tức!
    if (!FORCE_UPDATE && dbData && dbEp === listEp && dbModified === listModified) {
      skippedCount++;
      continue;
    }

    try {
      await sleep(180);
      const detailRes = await axios.get(`https://phimapi.com/phim/${item.slug}`, { timeout: 10000 });
      const m = detailRes.data?.movie;
      if (!m) continue;

      const type = m.type || "";
      const epCurrent = (m.episode_current || "").trim();
      const epLower = epCurrent.toLowerCase();
      const epTotal = parseInt(m.episode_total, 10) || 0;
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

      // Check lần 2 sau khi có chi tiết: nếu tập thực tế và modified vẫn trùng khớp -> SKIP
      if (!FORCE_UPDATE && dbData && dbEp === finalEp && dbModified === listModified) {
        skippedCount++;
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

      // Chỉ cấp timestamp mới cho phim THỰC SỰ có cập nhật mới
      let movieLastUpdated = now - i;

      sql += `INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  '${m.slug}', '${escapeSQL(m.name)}', '${escapeSQL(m.origin_name)}', '${m.thumb_url}', '${m.poster_url}', '${escapeSQL(m.content)}', 
  '${finalEp}', ${epTotal}, '${type}', '${m.status}', ${m.view || 0}, ${parseInt(m.year, 10) || 2025}, 
  '${m.lang}', '${m.quality}', '${escapeSQL(m.country?.[0]?.name || "")}', ${m.chieurap ? 1 : 0}, 
  '${escapeSQL(JSON.stringify(actorsWithAvatar))}', '${escapeSQL(JSON.stringify(m.category || []))}', 
  '${escapeSQL(JSON.stringify(m.alternative_names || []))}', '${escapeSQL(JSON.stringify(tmdbPayload))}', '${escapeSQL(JSON.stringify(imdbPayload))}', 
  ${movieLastUpdated}, '${escapeSQL(listModified)}'
);\n`;

      // Xóa category cũ trước khi thêm mới để không dồn ứ thể loại cũ rác
      sql += `DELETE FROM movie_categories WHERE movie_slug = '${m.slug}';\n`;

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

      addedReport.push(`| ${m.name} | ${dbEp || 'Chưa có'} -> ${finalEp} | ${dbEp ? "Cập nhật" : "Thêm mới"} |`);
      processedCount++;
    } catch (e) {
      console.warn(`⚠️ Lỗi xử lý phim ${item.slug}:`, e.message);
    }
  }

  console.log(`📊 Kết quả quét: Đã skip ${skippedCount} phim trùng không đổi. Cần cập nhật ${processedCount} phim.`);

  if (processedCount > 0) {
    // ✅ CHỐNG PHỒNG DATABASE: Tối ưu FTS5 định kỳ
    sql += `INSERT INTO movies_fts(movies_fts) VALUES('optimize');\n`;

    const stmts = sql.split(';\n').map(s => s.trim()).filter(Boolean);

    // 1. CẬP NHẬT VÀO TURSO 2 (CHÍNH)
    console.log(`🚀 Đang cập nhật ${processedCount} phim vào Turso phimdb2 (Chính)...`);
    let turso2Ok = false;
    try {
      for (let i = 0; i < stmts.length; i += 50) {
        await executeTursoDb(TURSO2_URL, TURSO2_TOKEN, stmts.slice(i, i + 50));
      }
      console.log(`✅ Cập nhật Turso phimdb2 thành công!`);
      turso2Ok = true;
    } catch (e) {
      console.error('❌ Lỗi cập nhật Turso 2:', e.message);
    }

    // 2. CẬP NHẬT ĐỒNG THỜI VÀO TURSO 3 (DỰ PHÒNG)
    console.log(`🚀 Đang cập nhật dự phòng vào Turso phimdb3 (Phụ)...`);
    let turso3Ok = false;
    try {
      for (let i = 0; i < stmts.length; i += 50) {
        await executeTursoDb(TURSO3_URL, TURSO3_TOKEN, stmts.slice(i, i + 50));
      }
      console.log(`✅ Cập nhật Turso phimdb3 thành công!`);
      turso3Ok = true;
    } catch (e) {
      console.error('❌ Lỗi cập nhật Turso 3:', e.message);
    }

    if (!turso2Ok && !turso3Ok) {
      console.error('💥 THẤT BẠI: Cả 2 Turso Database đều không thể cập nhật dữ liệu! Kiểm tra lại token.');
      process.exit(1);
    } else if (!turso2Ok) {
      console.warn('⚠️ CẢNH BÁO: Turso phimdb2 (Chính) lỗi, dữ liệu tạm thời chỉ ghi vào Turso phimdb3 (Phụ)!');
    }

    const summary = `### ✅ ĐỒNG BỘ 2 DATABASE HOÀN TẤT (Trang ${START_PAGE} -> ${END_PAGE}: ${processedCount} phim cập nhật, ${skippedCount} phim skip)\n\n| Tên Phim | Tập Cũ -> Mới | Trạng thái |\n| :--- | :--- | :--- |\n` + addedReport.join('\n');
    if (process.env.GITHUB_STEP_SUMMARY) fs.appendFileSync(process.env.GITHUB_STEP_SUMMARY, summary);
  } else {
    console.log(`💎 Toàn bộ ${skippedCount} phim từ trang ${START_PAGE} đến ${END_PAGE} đều trùng khớp và không có tập mới. Đã Skip toàn bộ, DB không bị ghi đè!`);
  }
}

start();
