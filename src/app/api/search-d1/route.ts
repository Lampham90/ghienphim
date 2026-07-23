export const runtime = 'edge';
export const dynamic = 'force-dynamic';
import { searchPhimInD1 } from '@/lib/kkphim';
import { NextResponse } from 'next/server';

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const keyword = searchParams.get('q') || '';
  if (!keyword) return NextResponse.json([]);
  const results = await searchPhimInD1(keyword);
  return NextResponse.json(results);
}