import { getTursoClient } from './src/lib/kkphim.ts';

async function main() {
  const c = getTursoClient();
  const r = await c.execute("SELECT slug, name, tmdb_json FROM movies WHERE tmdb_json IS NOT NULL LIMIT 5");
  console.log(JSON.stringify(r.rows, null, 2));
}

main().catch(console.error);
