// src/app/api/nguonc/route.ts

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

import { NextRequest, NextResponse } from 'next/server';
import { fetchNguoncDetail } from '@/lib/nguonc';

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const slug = searchParams.get('slug');
  const name = searchParams.get('name');

  if (!slug) {
    return NextResponse.json({ movieInfo: null, servers: [], original_name: "" });
  }

  try {
    const data = await fetchNguoncDetail(slug, name || undefined);

    return NextResponse.json(
      {
        movieInfo: data?.movieInfo || null,
        servers: data?.servers || [],
        original_name: data?.original_name || "",
      },
      {
        headers: {
          'Cache-Control': 'no-store, no-cache, must-revalidate',
          'Content-[#Type]': 'application/json',
        },
      }
    );
  } catch (error) {
    console.error("[API NGUONC EDGE ERROR]:", error);
    return NextResponse.json({ movieInfo: null, servers: [], original_name: "" });
  }
}