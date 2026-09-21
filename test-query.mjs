import { getTursoClient } from './src/lib/kkphim.ts';

async function main() {
  const c = getTursoClient();
  const res = await c.execute("SELECT slug, name, modified FROM movies WHERE slug IN ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'tong-thong-hoa-ky', 'sieu-nha-bao', 'sieu-com')");
  console.log("Result in Turso:", res.rows);
}

main().catch(console.error);
