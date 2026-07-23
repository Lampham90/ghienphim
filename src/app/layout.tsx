import type { Metadata } from "next";
import "./globals.css";
import Header from "@/components/Header";
import Footer from "@/components/Footer";
import ScrollToTop from "@/components/ScrollToTop";
import { Montserrat } from 'next/font/google';
import Script from 'next/script';

const montserrat = Montserrat({ subsets: ['vietnamese'], weight: ['400', '700', '900'] });

export const metadata: Metadata = {
  title: "Ghiền Phim - Xem phim mọi lúc mọi nơi",
  description: "Trang web học tập về lập trình và trải nghiệm trình phát video m3u8",
  verification: {
    google: "googlefbc84cd2aca112c0",
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="vi" className="scroll-smooth">
      <head>
        {/* Tối ưu kết nối tới Proxy ảnh để hiện ảnh nhanh nhất */}
        <link rel="preconnect" href="https://wsrv.nl" />
        <link rel="dns-prefetch" href="https://wsrv.nl" />
        <link rel="preconnect" href="https://phimimg.com" />
      </head>

      <body className={`${montserrat.className} antialiased selection:bg-red-600 selection:text-white bg-[#050505] text-white`}>
        
        {/* ĐĂNG KÝ SERVICE WORKER */}
        <Script id="register-sw" strategy="afterInteractive">
          {`
            if ('serviceWorker' in navigator) {
              navigator.serviceWorker.register('/sw.js')
                .then(reg => console.log('SW registered'))
                .catch(err => console.log('SW registration failed', err));
            }
          `}
        </Script>

        {/* NỀN TRANG TRÍ */}
        <div className="fixed inset-0 z-[-10] pointer-events-none">
          <div 
            className="absolute inset-0 opacity-[0.02]" 
            style={{ 
              backgroundImage: `url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noiseFilter'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.65' numOctaves='3' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noiseFilter)'/%3E%3C/svg%3E")` 
            }}
          ></div>
          <div className="absolute top-0 left-1/4 w-[500px] h-[500px] bg-red-600/5 blur-[120px] rounded-full"></div>
        </div>

        <Header />
        <main className="relative z-10 min-h-screen">
          {children}
        </main>
        <Footer />
        <ScrollToTop />
      </body>
    </html>
  );
}