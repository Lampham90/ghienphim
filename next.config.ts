/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    loader: 'custom',
    loaderFile: './src/lib/imageLoader.ts',
    remotePatterns: [
      { protocol: 'https', hostname: 'img.ophim.live' },
      { protocol: 'https', hostname: 'phimimg.com' },
      { protocol: 'https', hostname: 'lh3.googleusercontent.com' }
    ],
    // ❌ XÓA DÒNG unoptimized: true Ở ĐÂY
  },
  typescript: { ignoreBuildErrors: true },
  eslint: { ignoreDuringBuilds: true },
};

export default nextConfig;