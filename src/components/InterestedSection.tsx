"use client";
import { useRef, useState, useCallback, useEffect } from "react";
import Link from "next/link";
// 🌟 THAY ĐỔI DÒNG NÀY ĐỂ LIÊN KẾT ĐẾN DATA ĐỘC LẬP
import { INTERESTED_STRUCTURE } from "@/lib/interestedData"; 

export default function InterestedSection() {
  const ref = useRef<HTMLDivElement>(null);
  const [isDragging, setIsDragging] = useState(false);
  const frameId = useRef<number>(0);
  const state = useRef({ isDown: false, startX: 0, scrollLeft: 0, velX: 0, lastX: 0, hasMoved: false });

  // Quản lý trạng thái: null là tầng chính, nếu có ID là đang hiển thị tầng con của danh mục đó
  const [subLevelId, setSubLevelId] = useState<string | null>(null);

  const currentGroup = subLevelId ? INTERESTED_STRUCTURE.find(g => g.id === subLevelId) : null;
  const displayItems = (currentGroup ? currentGroup.subs : INTERESTED_STRUCTURE) || [];

  const onMouseDown = (e: React.MouseEvent) => {
    const el = ref.current;
    if (!el) return;
    state.current.isDown = true;
    state.current.hasMoved = false;
    state.current.startX = e.pageX - el.offsetLeft;
    state.current.scrollLeft = el.scrollLeft;
    state.current.velX = 0;
    el.style.scrollBehavior = 'auto';
    el.style.scrollSnapType = 'none';
    
    window.addEventListener('mousemove', onMouseMove);
    window.addEventListener('mouseup', onMouseUp);
  };

  const onMouseMove = useCallback((e: MouseEvent) => {
    const el = ref.current;
    if (!el || !state.current.isDown) return;
    const x = e.pageX - el.offsetLeft;
    const walk = (x - state.current.startX) * 1.6;
    
    // Tối ưu: Giới hạn vận tốc tối đa để tránh quán tính quá đà gây lag giật layout
    const currentVel = x - state.current.lastX;
    state.current.velX = Math.max(-30, Math.min(30, currentVel)); 
    state.current.lastX = x;

    cancelAnimationFrame(frameId.current);
    frameId.current = requestAnimationFrame(() => { 
      el.scrollLeft = state.current.scrollLeft - walk; 
    });

    if (Math.abs(walk) > 5 && !state.current.hasMoved) {
      state.current.hasMoved = true;
      setIsDragging(true);
    }
  }, []);

  const onMouseUp = useCallback(() => {
    const el = ref.current;
    if (!el || !state.current.isDown) return;
    state.current.isDown = false;
    
    window.removeEventListener('mousemove', onMouseMove);
    window.removeEventListener('mouseup', onMouseUp);
    
    setTimeout(() => setIsDragging(false), 50);

    const momentum = () => {
      // ✅ FIX MÁY YẾU: Kiểm tra nếu vận tốc quá nhỏ thì dừng hẳn vòng lặp ngay lập tức
      if (Math.abs(state.current.velX) < 0.5) { 
        state.current.velX = 0; // Ép về 0 tuyệt đối
        el.style.scrollSnapType = 'x mandatory'; 
        return; 
      }
      el.scrollLeft -= state.current.velX * 1.5;
      state.current.velX *= 0.88; // Giảm tỉ lệ quán tính một chút để dừng nhanh hơn, mượt hơn
      frameId.current = requestAnimationFrame(momentum);
    };
    frameId.current = requestAnimationFrame(momentum);
  }, [onMouseMove]);

  useEffect(() => {
    return () => {
      window.removeEventListener('mousemove', onMouseMove);
      window.removeEventListener('mouseup', onMouseUp);
      cancelAnimationFrame(frameId.current);
    };
  }, [onMouseMove, onMouseUp]);

  // Tự động cuộn về đầu hàng khi người dùng chuyển tầng danh mục
  useEffect(() => {
    if (ref.current) ref.current.scrollLeft = 0;
  }, [subLevelId]);

  return ( 
    <div className="pl-6 md:pl-20 mb-20 relative z-30">
      <h2 className="text-xl md:text-2xl font-black uppercase italic tracking-tighter text-white mb-8 text-left">
        Bạn đang <span className="text-red-600 underline decoration-red-600/20 underline-offset-8">quan tâm</span> gì?
      </h2>
      
      <div ref={ref} onMouseDown={onMouseDown} className="flex gap-4 md:gap-6 overflow-x-auto pb-6 scrollbar-hide pr-10 cursor-grab active:cursor-grabbing select-none will-change-scroll items-center">
        
        {/* Nút QUAY LẠI: Chỉ hiện khi người dùng đang ở trong danh mục con (tầng 2) */}
        {subLevelId && (
          <button 
            onClick={() => setSubLevelId(null)}
            className="min-w-[80px] md:min-w-[100px] aspect-square rounded-full bg-white/10 flex flex-col items-center justify-center border border-white/10 hover:bg-red-600 transition-all group flex-shrink-0 shadow-xl"
          >
            <svg className="w-6 h-6 text-white group-hover:scale-125 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7" />
            </svg>
            <span className="text-[8px] font-black uppercase mt-1">Quay lại</span>
          </button>
        )}

        {displayItems.map((item: any) => {
          const hasSubs = item.subs && item.subs.length > 0;
          
          const content = (
            <div className="absolute inset-0 p-5 md:p-6 flex flex-col justify-end text-left">
              <h3 className="text-white font-black text-lg md:text-2xl italic drop-shadow-xl leading-none uppercase tracking-tighter">{item.title}</h3>
              <div className="flex items-center gap-2 mt-2 opacity-70 group-hover:opacity-100 transition-opacity">
                <span className="text-[9px] font-black uppercase text-white tracking-widest">
                  {hasSubs ? "Xem danh mục" : "Khám phá ngay"}
                </span>
                <svg className="w-3 h-3 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={4}>
                  <path strokeLinecap="round" strokeLinejoin="round" d={hasSubs ? "M19 9l-7 7-7-7" : "M9 5l7 7-7 7"} />
                </svg>
              </div>
            </div>
          );

          // Nếu danh mục có danh mục con (Hoạt hình, Điện ảnh, Phim bộ)
          if (hasSubs) {
            return (
              <button
                key={item.id}
                onClick={() => !isDragging && setSubLevelId(item.id)}
                className="min-w-[180px] md:min-w-[280px] aspect-[16/9] rounded-[2rem] relative overflow-hidden group transition-all duration-500 hover:scale-105 shadow-2xl flex-shrink-0 border-4 border-white/5"
                style={{ background: item.bg }}
              >
                <div className="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors" />
                {content}
                {/* Một nút nhỏ ẩn hiện để người dùng có thể nhảy thẳng vào trang danh mục tổng nếu muốn */}
                <Link 
                  href={`/danh-sach/${item.slug}`}
                  className="absolute top-4 right-4 z-20 bg-black/40 backdrop-blur-md p-2 rounded-full opacity-0 group-hover:opacity-100 transition-opacity border border-white/10 hover:bg-red-600"
                  onClick={(e) => e.stopPropagation()}
                >
                  <svg className="w-4 h-4 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={3}><path d="M13.5 6H5.25A2.25 2.25 0 0 0 3 8.25v10.5A2.25 2.25 0 0 0 5.25 21h10.5A2.25 2.25 0 0 0 18 18.75V10.5m-10.5 6L21 3m0 0h-5.25M21 3v5.25" /></svg>
                </Link>
              </button>
            );
          }

          // Nếu là danh mục bình thường (Chiếu rạp, Cổ trang...) hoặc là danh mục con ở tầng 2
          return (
            <Link 
              key={item.slug} 
              href={`/danh-sach/${item.slug}`} 
              className={`min-w-[180px] md:min-w-[280px] aspect-[16/9] rounded-[2rem] relative overflow-hidden group transition-all duration-500 hover:scale-105 shadow-2xl flex-shrink-0 border-4 border-white/5 ${isDragging ? 'pointer-events-none' : ''}`} 
              style={{ background: item.bg }} 
              draggable={false}
            >
              <div className="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors" />
              {content}
            </Link>
          );
        })}
      </div>
    </div>
  );
}