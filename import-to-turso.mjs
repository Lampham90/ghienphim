import fs from 'fs';
import { createClient } from '@libsql/client';

const TURSO_URL = 'libsql://phim-db-lampham90.aws-ap-northeast-1.turso.io';
const TURSO_AUTH_TOKEN = 'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3ODkzNzA3NzAsImlkIjoiMDFhMDllY2UtYmEwMS03MGZmLWJiZjgtMDE0YzBhZTc4ZWE0Iiwia2lkIjoiUDFmaGgzd3g5bmNsejNvOFQxVGlqMzJwVmdjWFY3YXFCbTczOW05WE9VayIsInJpZCI6Ijg3NDM1NDEwLWIzMzAtNGU5Ni1iNWYwLTRiODE0MjBhMDY2NiJ9.ebSs5uG_BlrDnCR_QI5uHyb6oDRUpthoEODOcWGON0qjgE-WzBKKWQO9rwkfbQiFWyCvzFDoa8jFKPiYsjmKDQ';

const client = createClient({
  url: TURSO_URL,
  authToken: TURSO_AUTH_TOKEN,
});

async function importFile(filePath) {
  console.log(`\n📂 Đang đọc ${filePath}...`);
  if (!fs.existsSync(filePath)) {
    console.error(`❌ Không tìm thấy ${filePath}`);
    return;
  }

  const content = fs.readFileSync(filePath, 'utf8');
  const lines = content.split('\n');
  
  let batch = [];
  let batchSize = 0;
  const MAX_BATCH_CHARS = 300 * 1024;
  let totalStatements = 0;

  for (let i = 0; i < lines.length; i++) {
    const line = lines[i].trim();
    if (!line) continue;

    batch.push(line);
    batchSize += line.length;

    if (batchSize >= MAX_BATCH_CHARS || i === lines.length - 1) {
      const sqlChunk = batch.join('\n');
      let retries = 3;
      while (retries > 0) {
        try {
          await client.executeMultiple(sqlChunk);
          totalStatements += batch.length;
          process.stdout.write(`\r✅ Đã nạp ${totalStatements} dòng lệnh từ ${filePath}...`);
          break;
        } catch (err) {
          retries--;
          console.error(`\n⚠️ Lỗi batch, thử lại (còn ${retries} lần):`, err.message);
          if (retries === 0) throw err;
          await new Promise(r => setTimeout(r, 1000));
        }
      }
      batch = [];
      batchSize = 0;
    }
  }
  console.log(`\n🎉 Hoàn tất nạp ${filePath} (${totalStatements} dòng lệnh)!`);
}

async function main() {
  const parts = [
    './data_part_1.sql',
    './data_part_2.sql',
    './data_part_3.sql',
    './data_part_4.sql',
    './data_part_5.sql',
    './data_part_6.sql',
  ];

  console.log('🚀 BẮT ĐẦU IMPORT DATA VÀO TURSO...');
  const start = Date.now();

  for (const part of parts) {
    await importFile(part);
  }

  const duration = ((Date.now() - start) / 1000).toFixed(1);
  console.log(`\n🏆 TẤT CẢ FILE ĐÃ ĐƯỢC IMPORT THÀNH CÔNG VÀO TURSO trong ${duration}s!`);

  const countRes = await client.execute('SELECT COUNT(*) as count FROM movies');
  console.log('📊 Tổng số phim trong Turso:', countRes.rows[0].count);

  const catRes = await client.execute('SELECT COUNT(*) as count FROM movie_categories');
  console.log('📊 Tổng số liên kết thể loại trong Turso:', catRes.rows[0].count);
}

main().catch(err => {
  console.error('\n❌ IMPORT THẤT BẠI:', err);
  process.exit(1);
});
