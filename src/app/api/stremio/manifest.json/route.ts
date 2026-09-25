export const runtime = 'edge';
export const dynamic = 'force-dynamic';

import { NextResponse } from 'next/server';

export async function GET() {
  const MANIFEST = {
    id: 'community.ghienphim.addon',
    version: '1.0.0',
    name: 'Ghiền Phim (Clean HLS)',
    description: 'Kho phim Vietsub, Thuyết minh từ ghienphim. Lọc sạch 100% quảng cáo.',
    logo: 'https://ghienphim.pages.dev/favicon11.ico',
    resources: ['catalog', 'meta', 'stream'],
    types: ['movie', 'series'],
    catalogs: [
      {
        type: 'movie',
        id: 'ghienphim_movies',
        name: 'Ghiền Phim - Phim Lẻ',
      },
      {
        type: 'series',
        id: 'ghienphim_series',
        name: 'Ghiền Phim - Phim Bộ',
      }
    ],
    idPrefixes: ['tt', 'kk:', 'gp:']
  };

  return NextResponse.json(MANIFEST, {
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, OPTIONS',
      'Access-Control-Allow-Headers': '*',
      'Content-Type': 'application/json',
      'Cache-Control': 'public, max-age=3600'
    }
  });
}