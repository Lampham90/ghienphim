"use client";

import { useState, useRef, useEffect } from "react";
import Image from 'next/image';
import { useRouter, usePathname } from "next/navigation";
import Link from "next/link";
import { useAuth } from "@/lib/useAuth";

export default function Header() {
  const pathname = usePathname();
  const router = useRouter();
  const { user, loginWithGoogle, logout, loading } = useAuth();
  const [isSearchOpen, setIsSearchOpen] = useState(false);
  const [keyword, setKeyword] = useState("");
  const [isScrolled, setIsScrolled] = useState(false);
  const [showUserMenu, setShowUserMenu] = useState(false);

  const searchRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    const handleScroll = () => setIsScrolled(window.scrollY > 20);
    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (searchRef.current && !searchRef.current.contains(event.target as Node)) {
        if (!keyword) setIsSearchOpen(false);
      }
    }
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, [keyword]);

  if (pathname.startsWith("/phim/")) return null;

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    if (keyword.trim()) {
      router.push(`/search?keyword=${encodeURIComponent(keyword.trim())}&page=1`);
      setIsSearchOpen(false);
      setKeyword("");
    }
  };

  return (
    <header className={`fixed top-0 left-0 right-0 z-[100] transition-all duration-700 h-16 md:h-20 px-6 md:px-12 flex items-center justify-between ${isScrolled ? "bg-black/90 backdrop-blur-xl border-b border-white/[0.05]" : "bg-transparent"}`}>

      <div className="flex items-center gap-10">
        {/* LOGO */}
        <Link href="/" className="text-[20px] md:text-[24px] font-black tracking-tighter text-white italic group transition-transform hover:scale-105 shrink-0">
          Lâm's<span className="text-red-600 drop-shadow-[0_0_15px_rgba(220,38,38,0.5)]">House</span>
        </Link>
      </div>

      {/* RIGHT SIDE */}
      <div className="flex items-center gap-6 shrink-0">
        <div ref={searchRef} className="flex items-center">
          <form
            onSubmit={handleSearch}
            className={`flex items-center transition-all duration-500 border-b relative h-9
            ${isSearchOpen
              ? "w-40 md:w-60 border-red-600 bg-white/5 px-3 rounded-t-lg"
              : "w-9 border-transparent opacity-70 hover:opacity-100"}`}
          >
            {isSearchOpen && (
              <input
                ref={inputRef}
                type="text"
                value={keyword}
                onChange={(e) => setKeyword(e.target.value)}
                placeholder="Tìm phim , diễn viên..."
                className="bg-transparent outline-none text-xs w-[calc(100%-24px)] text-white placeholder:text-white/30 pr-2 appearance-none"
              />
            )}

            {/* Đưa nút kính lúp thành vị trí tuyệt đối ở góc phải form để không bao giờ bị nhân đôi */}
            <button
              type="button"
              onClick={() => {
                if (!isSearchOpen) {
                  setIsSearchOpen(true);
                  setTimeout(() => inputRef.current?.focus(), 200);
                } else if (keyword.trim()) {
                  router.push(`/search?keyword=${encodeURIComponent(keyword.trim())}&page=1`);
                  setIsSearchOpen(false);
                  setKeyword("");
                } else {
                  setIsSearchOpen(false);
                }
              }}
              className="text-white hover:text-red-500 transition-colors absolute right-2 top-1/2 -translate-y-1/2 w-5 h-5 flex items-center justify-center"
            >
              <svg className="w-5 h-5 shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                <path d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
              </svg>
            </button>
          </form>
        </div>

        <Link href="/favorites" className="text-white/70 hover:text-red-500 transition-colors">
          <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
          </svg>
        </Link>

        {/* AUTH SECTION */}
        <div className="relative flex items-center min-w-[100px] justify-end">
          {loading ? (
            <div className="w-8 h-8 rounded-full bg-white/5 animate-pulse" />
          ) : user ? (
            <div className="relative">
              <button
                onClick={() => setShowUserMenu(!showUserMenu)}
                className="w-8 h-8 rounded-full border border-white/20 overflow-hidden hover:border-red-600 transition-all flex items-center justify-center bg-white/5"
              >
                {user.photoURL ? (
                  <Image src={user.photoURL} alt="avatar" width={32} height={32} className="w-full h-full object-cover" />
                ) : (
                  <div className="w-full h-full bg-red-600 flex items-center justify-center text-[10px] font-black uppercase">{user.displayName?.charAt(0)}</div>
                )}
              </button>

              {showUserMenu && (
                <>
                  <div className="fixed inset-0 z-40" onClick={() => setShowUserMenu(false)} />
                  <div className="absolute top-full right-0 mt-3 w-48 bg-[#0f0f0f] border border-white/10 rounded-xl overflow-hidden shadow-2xl z-50 animate-in fade-in zoom-in-95 duration-200">
                    <div className="px-4 py-3 border-b border-white/5">
                      <p className="text-[10px] font-black text-white/40 uppercase tracking-widest truncate">{user.displayName}</p>
                    </div>
                    <button
                      onClick={() => { logout(); setShowUserMenu(false); }}
                      className="w-full text-left px-4 py-3 text-[10px] font-black uppercase text-white/60 hover:bg-red-600 hover:text-white transition-colors"
                    >
                      Đăng xuất
                    </button>
                  </div>
                </>
              )}
            </div>
          ) : (
            <button
              onClick={loginWithGoogle}
              className="bg-white/10 hover:bg-white/20 px-4 py-1.5 rounded-lg border border-white/10 text-[10px] font-black uppercase transition-all whitespace-nowrap"
            >
              Đăng nhập
            </button>
          )}
        </div>
      </div>

    </header>
  );
}