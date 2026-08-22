"use client";

import React, { useState, useEffect, useRef, useCallback } from "react";
import Hls from "hls.js";
import { filterSmartByBlock } from "./hls-filter";

interface VideoPlayerProps {
  slug: string;
  movieName: string;
  videoUrl: string;
  initialTime?: number;
  currentEpIndex: number;
  totalEpisodes: number;
  onClose: () => void;
  onEnded: (nextIndex?: number) => void;
  saveProgress: (epIndex: number, seconds: number, duration: number, shouldSync?: boolean) => void;
}

const WORKER_POOL = [
  "https://pro2.phuonglam56973.workers.dev/",
  "https://pro3.pplam5697.workers.dev/",
  "https://pro4.phuonglam56971.workers.dev/",
  "https://pro5.phuonglam56972.workers.dev/"
];

const getWorker = () => WORKER_POOL[Math.floor(Math.random() * WORKER_POOL.length)];

const formatTime = (seconds: number) => {
  const totalSeconds = Math.floor(seconds);
  const hours = Math.floor(totalSeconds / 3600);
  const minutes = Math.floor((totalSeconds % 3600) / 60);
  const remainingSeconds = totalSeconds % 60;

  if (hours > 0) {
    return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
  }
  return `${minutes.toString().padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
};

export default function VideoPlayer({
  slug,
  movieName,
  videoUrl,
  initialTime = 0,
  currentEpIndex,
  totalEpisodes,
  onClose,
  onEnded,
  saveProgress
}: VideoPlayerProps) {
  const videoRef = useRef<HTMLVideoElement>(null);
  const hlsRef = useRef<Hls | null>(null);
  const containerRef = useRef<HTMLDivElement>(null);
  const [currentPos, setCurrentPos] = useState(0);
  const [totalDuration, setTotalDuration] = useState(0);

  const [isResolving, setIsResolving] = useState(false);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);

  const [volume, setVolume] = useState<number>(() => {
    if (typeof window !== 'undefined') {
      const savedVol = localStorage.getItem('video_player_volume');
      return savedVol !== null ? parseFloat(savedVol) : 1;
    }
    return 1;
  });

  const [isMuted, setIsMuted] = useState<boolean>(() => {
    if (typeof window !== 'undefined') {
      const savedMuted = localStorage.getItem('video_player_muted');
      return savedMuted === 'true';
    }
    return false;
  });

  const [showVolumeBar, setShowVolumeBar] = useState(false);
  const [isDraggingVolume, setIsDraggingVolume] = useState(false);
  const [isFullscreen, setIsFullscreen] = useState(false);
  const [videoFit, setVideoFit] = useState<'contain' | 'cover' | 'fill'>('contain');

  const toggleVideoFit = useCallback(() => {
    setVideoFit(prev => {
      if (prev === 'contain') return 'cover';
      if (prev === 'cover') return 'fill';
      return 'contain';
    });
  }, []);

  useEffect(() => {
    if (videoRef.current) {
      videoRef.current.volume = Math.pow(volume, 2);
      videoRef.current.muted = isMuted;
    }
  }, [volume, isMuted]);

  const [showNextNotify, setShowNextNotify] = useState(false);
  const [countdown, setCountdown] = useState(10);
  const [isPaused, setIsPaused] = useState(true);
  const [showControls, setShowControls] = useState(true);
  
  const lastSavedTimeRef = useRef<number>(0);
  const isDraggingRef = useRef(false);
  const isDraggingVolumeRef = useRef(false);
  const [isDragging, setIsDragging] = useState(false);

  const controlsTimerRef = useRef<NodeJS.Timeout | null>(null);

  const toggleFullscreen = useCallback(async (forceEnter?: boolean) => {
    const container = containerRef.current;
    const video = videoRef.current;
    if (!container || !video) return;

    try {
      const isFull = !!(
        document.fullscreenElement ||
        (document as any).webkitFullscreenElement ||
        (video as any).webkitDisplayingFullscreen ||
        (container as any).webkitFullscreenElement
      );

      if (!isFull || forceEnter === true) {
        if (!isFull) {
          if (container.requestFullscreen) {
            await container.requestFullscreen();
          } else if ((container as any).webkitRequestFullscreen) {
            await (container as any).webkitRequestFullscreen();
          } else if ((video as any).webkitEnterFullscreen) {
            (video as any).webkitEnterFullscreen();
          }
        }
        setIsFullscreen(true);
        
        const orientation = (screen as any).orientation || (screen as any).msOrientation;
        if (orientation && orientation.lock) {
          await orientation.lock('landscape').catch(() => {});
        }
      } else if (isFull && !forceEnter) {
        setIsFullscreen(false);
        const orientation = (screen as any).orientation || (screen as any).msOrientation;
        if (orientation && orientation.unlock) {
          orientation.unlock();
        }
        if (document.exitFullscreen) await document.exitFullscreen();
        else if ((document as any).webkitExitFullscreen) await (document as any).webkitExitFullscreen();
        else if ((video as any).webkitExitFullscreen) (video as any).webkitExitFullscreen();
      }
    } catch (e) {
      console.error("Fullscreen error:", e);
    }
  }, []);

  const toggleMute = useCallback(() => {
    setIsMuted(prev => {
      const newVal = !prev;
      localStorage.setItem('video_player_muted', newVal.toString());
      if (videoRef.current) videoRef.current.muted = newVal;
      return newVal;
    });
  }, []);

  const handleVolumeChange = useCallback((newVolume: number) => {
    const video = videoRef.current;
    if (!video) return;

    const vol = Math.max(0, Math.min(1, newVolume));
    setVolume(vol);
    localStorage.setItem('video_player_volume', vol.toString());

    video.volume = Math.pow(vol, 2);

    if (vol > 0) {
      setIsMuted(false);
      localStorage.setItem('video_player_muted', 'false');
      video.muted = false;
    } else {
      setIsMuted(true);
      localStorage.setItem('video_player_muted', 'true');
      video.muted = true;
    }
  }, []);

  const togglePlay = useCallback(async () => {
    if (!videoRef.current) return;
    const video = videoRef.current;

    setShowControls(true);
    setInteractionTime(Date.now());

    if (video.paused) {
      if (window.innerWidth < 1024) {
        await toggleFullscreen(true);
      }
      await video.play();
    } else {
      video.pause();
    }
  }, [toggleFullscreen]);

  const handleSeek = (e: React.PointerEvent | React.MouseEvent, isFinal: boolean = false) => {
    const video = videoRef.current;
    const progressContainer = e.currentTarget as HTMLDivElement;
    if (!video || !totalDuration) return;

    const rect = progressContainer.getBoundingClientRect();
    const offsetX = e.clientX - rect.left;
    const percentage = Math.max(0, Math.min(offsetX / rect.width, 1));
    const newTime = percentage * totalDuration;
    setCurrentPos(newTime);
    if (isFinal) video.currentTime = newTime;
  };

  const handleNextEpisode = useCallback(async (isUserInteraction = false) => {
    const nextIndex = currentEpIndex + 1;
    if (nextIndex < totalEpisodes) {
      if (videoRef.current) {
        saveProgress(currentEpIndex, 0, videoRef.current.duration, true);
      }
      
      // Nếu là người dùng chủ động bấm nút chuyển tập, ta ép lại Fullscreen/Xoay ngang.
      // Nếu là tự động hết tập, giữ nguyên khung Fullscreen hiện tại và không làm gián đoạn.
      if (isUserInteraction && window.innerWidth < 1024) {
        await toggleFullscreen(true);
      }
      
      onEnded(nextIndex);
    }
  }, [currentEpIndex, totalEpisodes, onEnded, saveProgress, toggleFullscreen]);

  const [interactionTime, setInteractionTime] = useState(0);

  const handleMouseMove = useCallback(() => {
    setShowControls(true);
    setInteractionTime(Date.now());
  }, []);

  const toggleControls = useCallback((e: React.MouseEvent | React.TouchEvent) => {
    e.stopPropagation();
    setShowControls(prev => !prev);
    setInteractionTime(Date.now());
  }, []);

  useEffect(() => {
    if (controlsTimerRef.current) {
      clearTimeout(controlsTimerRef.current);
      controlsTimerRef.current = null;
    }

    if (isPaused || isDragging || isDraggingVolume || !showControls) {
      return;
    }

    controlsTimerRef.current = setTimeout(() => {
      setShowControls(false);
    }, 3000);

    return () => {
      if (controlsTimerRef.current) clearTimeout(controlsTimerRef.current);
    };
  }, [showControls, isPaused, isDragging, isDraggingVolume, interactionTime]);

  useEffect(() => {
    const video = videoRef.current;
    const container = containerRef.current;
    if (!video) return;

    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.target instanceof HTMLInputElement || e.target instanceof HTMLTextAreaElement) return;
      switch (e.code) {
        case "Space": e.preventDefault(); togglePlay(); break;
        case "ArrowRight": e.preventDefault(); video.currentTime = Math.min(video.duration, video.currentTime + 10); break;
        case "ArrowLeft": e.preventDefault(); video.currentTime = Math.max(0, video.currentTime - 10); break;
      }
    };

    const handleVideoTouch = (e: TouchEvent) => {
      const target = e.target as HTMLElement;
      if (target.closest('.player-controls')) return;
      if (e.touches.length > 1) return;
      setInteractionTime(Date.now());
    };

    const handleTouchInteraction = () => setInteractionTime(Date.now());
    const handlePlayPauseStatus = () => setIsPaused(video.paused);

    const handleFullscreenChange = () => {
      setIsFullscreen(!!(
        document.fullscreenElement ||
        (document as any).webkitFullscreenElement ||
        (videoRef.current as any)?.webkitDisplayingFullscreen
      ));
    };

    const handleTimeUpdate = (e: Event) => {
      if (isDraggingRef.current) return;
      const v = e.target as HTMLVideoElement;
      setCurrentPos(v.currentTime);
      if (v.duration) setTotalDuration(v.duration);

      const currentSeconds = isFinite(v.currentTime) ? v.currentTime : 0;
      const durationSeconds = isFinite(v.duration) ? v.duration : 0;

      const currentSec = Math.floor(currentSeconds);
      if (currentSec > 0 && (currentSec % 30 === 0 || Math.abs(currentSec - lastSavedTimeRef.current) > 5) && lastSavedTimeRef.current !== currentSec) {
        lastSavedTimeRef.current = currentSec;
        if (currentSeconds < durationSeconds * 0.9) {
          saveProgress(currentEpIndex, currentSeconds, durationSeconds, false);
        }
      }

      const remaining = video.duration - video.currentTime;
      if (remaining <= 30 && remaining > 20 && video.duration > 60) {
        if (!showNextNotify) setShowNextNotify(true);
      } else if (remaining > 30 || remaining <= 0) {
        if (showNextNotify) {
          setShowNextNotify(false);
          setCountdown(10);
        }
      }
    };

    window.addEventListener("keydown", handleKeyDown);
    video.addEventListener("touchstart", handleVideoTouch);
    video.addEventListener("play", handlePlayPauseStatus);
    video.addEventListener("pause", handlePlayPauseStatus);
    video.addEventListener('timeupdate', handleTimeUpdate);

    document.addEventListener("fullscreenchange", handleFullscreenChange);
    document.addEventListener("webkitfullscreenchange", handleFullscreenChange);
    video.addEventListener("webkitbeginfullscreen", handleFullscreenChange);
    video.addEventListener("webkitendfullscreen", handleFullscreenChange);

    if (container) {
      container.addEventListener("mousemove", handleMouseMove);
      container.addEventListener("touchmove", handleTouchInteraction, { passive: true });
    }

    video.onended = () => {
      saveProgress(currentEpIndex, 0, video.duration, true);
      const nextIndex = currentEpIndex + 1;
      onEnded(nextIndex < totalEpisodes ? nextIndex : undefined);
    };

    return () => {
      window.removeEventListener("keydown", handleKeyDown);
      video.removeEventListener("touchstart", handleVideoTouch);
      video.removeEventListener("play", handlePlayPauseStatus);
      video.removeEventListener("pause", handlePlayPauseStatus);
      video.removeEventListener('timeupdate', handleTimeUpdate);

      document.removeEventListener("fullscreenchange", handleFullscreenChange);
      document.removeEventListener("webkitfullscreenchange", handleFullscreenChange);
      video.removeEventListener("webkitbeginfullscreen", handleFullscreenChange);
      video.removeEventListener("webkitendfullscreen", handleFullscreenChange);

      if (container) {
        container.removeEventListener("mousemove", handleMouseMove);
        container.removeEventListener("touchmove", handleTouchInteraction);
      }
      if (video) video.onended = null;
    };
  }, [currentEpIndex, totalEpisodes, onEnded, saveProgress, togglePlay, showNextNotify, handleMouseMove]);

  const handleSaveOnQuit = useCallback((shouldSync = true) => {
    const v = videoRef.current;
    if (!v) return;
    const time = v.currentTime;
    const duration = v.duration;

    if (isFinite(time) && isFinite(duration) && time > 5 && time < duration * 0.9) {
      saveProgress(currentEpIndex, time, duration, shouldSync);
    }
  }, [currentEpIndex, saveProgress]);

  useEffect(() => {
    const currentVideo = videoRef.current;

    const handleVisibilityChange = () => {
      if (document.visibilityState === 'hidden') handleSaveOnQuit(true);
    };
    const handleBeforeUnload = () => handleSaveOnQuit(true);

    document.addEventListener("visibilitychange", handleVisibilityChange);
    window.addEventListener("beforeunload", handleBeforeUnload);

    return () => {
      if (currentVideo) {
        const time = currentVideo.currentTime;
        const duration = currentVideo.duration;
        if (isFinite(time) && isFinite(duration) && time > 5 && (duration - time > 15)) {
          saveProgress(currentEpIndex, time, duration, false);
        }
      }
      document.removeEventListener("visibilitychange", handleVisibilityChange);
      window.removeEventListener("beforeunload", handleBeforeUnload);
    };
  }, [currentEpIndex, saveProgress, handleSaveOnQuit]);

  useEffect(() => {
    let timer: NodeJS.Timeout;
    if (showNextNotify && countdown > 0) {
      timer = setTimeout(() => setCountdown(prev => prev - 1), 1000);
    } else if (showNextNotify && countdown === 0) {
      handleNextEpisode(false); 
    }
    return () => clearTimeout(timer);
  }, [showNextNotify, countdown, handleNextEpisode]);

  const resolveNguoncLink = async (embedUrl: string): Promise<string | null> => {
    try {
      setIsResolving(true);
      setErrorMessage(null);

      const embedRes = await fetch(`${getWorker()}?url=${encodeURIComponent(embedUrl)}`);
      if (!embedRes.ok) return null;
      const htmlText = await embedRes.text();

      const urlObj = new URL(embedUrl);
      const domainHeader = urlObj.origin;

      let match = htmlText.match(/data-obf\s*=\s*(["'])(.*?)\1/i);
      if (!match) {
        match = htmlText.match(/data-obf\s*=\s*([^\s>]+)/i);
      }

      if (match && (match[2] || match[1])) {
        const rawDataObf = match[2] || match[1];
        const decodedRaw = atob(rawDataObf);
        let decodedSub = decodedRaw;

        try {
          const jsonObj = JSON.parse(decodedRaw);
          if (jsonObj && jsonObj.sUb) {
            decodedSub = jsonObj.sUb;
          }
        } catch (e) {}

        decodedSub = decodedSub.replace(/\/hd$/i, '');
        decodedSub = decodedSub.replace(/\.m3u9$/i, '');
        decodedSub = decodedSub.replace(/^\//, '');

        return `${domainHeader}/${decodedSub}.m3u9`;
      }
    } catch (e) {
      console.error("[VideoPlayer] Lỗi giải mã Nguonc:", e);
    } finally {
      setIsResolving(false);
    }
    return null;
  };

  useEffect(() => {
    const video = videoRef.current;
    setErrorMessage(null);

    const startPlayer = async () => {
      let directLink = videoUrl;
      const isNguoncStream = videoUrl.includes('streamc.xyz') || videoUrl.includes('nguonc.com') || videoUrl.includes('/v/') || videoUrl.includes('embed');

      if (isNguoncStream) {
        const resolved = await resolveNguoncLink(videoUrl);
        if (resolved) {
          directLink = resolved;
        } else {
          setErrorMessage("Không thể bóc tách luồng m3u9 từ trang Embed.");
          return;
        }
      }

      if (!video) return;

      const handleVideoReady = async () => {
        if (initialTime > 0) video.currentTime = initialTime;
        
        // Khi đổi tập, player tiếp tục phát tự động bên trong chế độ Fullscreen hiện có
        video.play().catch((e) => {
          console.warn("[VideoPlayer] Autoplay prevented by browser", e);
        });
      };

      if (Hls.isSupported()) {
        if (hlsRef.current) {
          hlsRef.current.destroy();
        }

        class CustomHlsLoader extends Hls.DefaultConfig.loader {
          constructor(config: any) {
            super(config);
            const load = this.load.bind(this);

            this.load = function (context: any, config: any, callbacks: any) {
              let targetUrl = context.url;
              if (isNguoncStream) {
                if (!targetUrl.startsWith('http')) {
                  targetUrl = new URL(targetUrl, directLink).href;
                }
                const originHeader = new URL(directLink).origin;
                if (!WORKER_POOL.some(w => targetUrl.startsWith(w))) {
                  context.url = `${getWorker()}?url=${encodeURIComponent(targetUrl)}&referer=${encodeURIComponent(originHeader + "/")}&origin=${encodeURIComponent(originHeader)}`;
                }
              }
              if (context.type === 'manifest' || context.type === 'level') {
                const originalOnSuccess = callbacks.onSuccess;
                callbacks.onSuccess = (response: any, stats: any, ctx: any, networkDetails: any) => {
                  if (response && typeof response.data === 'string') {
                    try {
                      response.data = filterSmartByBlock(ctx.url, response.data);
                    } catch (e) {}
                  }
                  originalOnSuccess(response, stats, ctx, networkDetails);
                };
              }
              load(context, config, callbacks);
            };
          }
        }

        const hls = new Hls({
          maxBufferSize: 30 * 1000 * 1000,
          loader: CustomHlsLoader
        });

        hlsRef.current = hls;
        hls.loadSource(directLink);
        hls.attachMedia(video);

        hls.on(Hls.Events.MANIFEST_PARSED, handleVideoReady);

        hls.on(Hls.Events.ERROR, (event, data) => {
          if (data.fatal) {
            console.error("[VideoPlayer] Fatal HLS error:", data);
            setErrorMessage("Lỗi tải luồng video HLS.");
          }
        });

      } else if (video.canPlayType('application/vnd.apple.mpegurl')) {
        const originHeader = new URL(directLink).origin;
        const finalSrc = `${getWorker()}?url=${encodeURIComponent(directLink)}&referer=${encodeURIComponent(originHeader + "/")}&origin=${encodeURIComponent(originHeader)}`;
        video.src = finalSrc;
        
        video.addEventListener('loadedmetadata', handleVideoReady);
      }
    };

    startPlayer();

    return () => {
      if (hlsRef.current) {
        hlsRef.current.destroy();
        hlsRef.current = null;
      }
      if (video) {
        video.removeEventListener('loadedmetadata', () => {});
      }
    };
  }, [videoUrl, initialTime]);

  return (
    <div
      ref={containerRef}
      className={`relative w-full h-full bg-black group overflow-hidden flex items-center justify-center ${(!showControls && !isPaused) ? 'cursor-none' : ''}`}
    >
      {isResolving && (
        <div className="absolute inset-0 z-[100] bg-black flex flex-col items-center justify-center text-white">
          <div className="w-12 h-12 border-4 border-red-600 border-t-transparent rounded-full animate-spin mb-4"></div>
          <p className="text-xs font-black uppercase italic tracking-widest">Đang bóc tách luồng m3u9...</p>
        </div>
      )}

      {errorMessage ? (
        <div className="text-red-500 font-semibold p-4 text-center z-[100]">
          <p>{errorMessage}</p>
        </div>
      ) : (
        <>
          <video
            ref={videoRef}
            playsInline
            className={`w-full h-full ${videoFit === 'contain' ? 'object-contain' : videoFit === 'cover' ? 'object-cover' : 'object-fill'}`}
            onClick={handleMouseMove}
          />

          <div
            onClick={toggleControls}
            className={`absolute inset-0 z-20 bg-gradient-to-t from-black/90 via-transparent to-black/40 transition-opacity duration-500 ${showControls || isPaused ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}
          >
            <div
              className="player-controls absolute inset-0 flex flex-col justify-between p-4 md:p-6"
              onClick={(e) => e.stopPropagation()} 
            >
              <div className="flex justify-between items-start">
                <h3 className="text-xs md:text-lg font-black uppercase italic tracking-tighter text-white/90 truncate pr-4 flex-1 mr-4">
                  {movieName}{totalEpisodes > 1 ? ` - Tập ${currentEpIndex + 1}` : ""}
                </h3>
                <button
                  onClick={(e) => {
                    e.stopPropagation();
                    handleSaveOnQuit(true);
                    onClose();
                  }}
                  className="p-2 hover:bg-white/10 rounded-full transition-colors relative z-[160]"
                >
                  <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M6 18L18 6M6 6l12 12" /></svg>
                </button>
              </div>

              <div className="absolute inset-0 flex items-center justify-center gap-10 md:gap-24 pointer-events-none">
                <button
                  onClick={(e) => { e.stopPropagation(); if(videoRef.current) videoRef.current.currentTime = Math.max(0, videoRef.current.currentTime - 10); }}
                  className="w-16 h-16 md:w-20 md:h-20 rounded-full bg-white/5 backdrop-blur-md border border-white/20 hover:bg-white/15 hover:border-white/35 active:scale-90 transition-all pointer-events-auto flex items-center justify-center relative group/btn shadow-[0_8px_32px_0_rgba(0,0,0,0.4),inset_0_2px_4px_rgba(255,255,255,0.15)]"
                >
                  <svg className="absolute w-full h-full text-white/80 group-hover/btn:text-white transition-colors" viewBox="0 0 100 100">
                    <path d="M50 22 A 28 28 0 1 0 78 50" stroke="currentColor" strokeWidth="4" fill="none" strokeLinecap="round"/>
                    <path d="M46 12 L62 22 L46 32" stroke="currentColor" strokeWidth="4.5" fill="none" strokeLinecap="round" strokeLinejoin="round"/>
                  </svg>
                  <span className="text-white text-sm md:text-lg font-black relative z-10 mt-1.5 ml-0.5">10</span>
                </button>

                <button
                  onClick={(e) => { e.stopPropagation(); togglePlay(); }}
                  className="w-20 h-20 rounded-full bg-red-500/20 backdrop-blur-md border-2 border-red-500/50 hover:bg-red-500/35 hover:border-red-500/70 active:scale-95 transition-all pointer-events-auto flex items-center justify-center shadow-[0_0_40px_rgba(239,68,68,0.35),inset_0_2px_4px_rgba(255,255,255,0.4)] relative z-10"
                >
                  {isPaused ? (
                    <svg className="w-10 h-10 text-white fill-current ml-1 filter drop-shadow-[0_2px_4px_rgba(0,0,0,0.5)]" viewBox="0 0 24 24">
                      <path d="M8 5v14l11-7z" />
                    </svg>
                  ) : (
                    <svg className="w-10 h-10 text-white fill-current filter drop-shadow-[0_2px_4px_rgba(0,0,0,0.5)]" viewBox="0 0 24 24">
                      <path d="M6 19h4V5H6v14zm8-14v14h4V5h-4z" />
                    </svg>
                  )}
                </button>

                <button
                  onClick={(e) => { e.stopPropagation(); if(videoRef.current) videoRef.current.currentTime = Math.min(videoRef.current.duration, videoRef.current.currentTime + 10); }}
                  className="w-16 h-16 md:w-20 md:h-20 rounded-full bg-white/5 backdrop-blur-md border border-white/20 hover:bg-white/15 hover:border-white/35 active:scale-90 transition-all pointer-events-auto flex items-center justify-center relative group/btn shadow-[0_8px_32px_0_rgba(0,0,0,0.4),inset_0_2px_4px_rgba(255,255,255,0.15)]"
                >
                  <svg className="absolute w-full h-full text-white/80 group-hover/btn:text-white transition-colors" viewBox="0 0 100 100">
                    <path d="M50 22 A 28 28 0 1 1 22 50" stroke="currentColor" strokeWidth="4" fill="none" strokeLinecap="round"/>
                    <path d="M54 12 L38 22 L54 32" stroke="currentColor" strokeWidth="4.5" fill="none" strokeLinecap="round" strokeLinejoin="round"/>
                  </svg>
                  <span className="text-white text-sm md:text-lg font-black relative z-10 mt-1.5 mr-0.5">10</span>
                </button>
              </div>

              <div
                className="flex flex-col gap-3 relative z-[160]"
                onClick={(e) => e.stopPropagation()}
              >
                <div
                  className="w-full h-10 cursor-pointer group/progress flex items-center touch-none relative z-[170] -my-1"
                  style={{ touchAction: 'none' }}
                  onPointerDown={(e) => {
                    setIsDragging(true);
                    isDraggingRef.current = true;
                    (e.currentTarget as HTMLDivElement).setPointerCapture(e.pointerId);
                    handleSeek(e, false);
                  }}
                  onPointerMove={(e) => { if (isDraggingRef.current) handleSeek(e, false); }}
                  onPointerUp={(e) => {
                    setIsDragging(false);
                    isDraggingRef.current = false;
                    (e.currentTarget as HTMLDivElement).releasePointerCapture(e.pointerId);
                    handleSeek(e, true);
                  }}
                >
                  <div className={`w-full bg-white/20 rounded-full relative ${isDragging ? 'h-[6px]' : 'h-[3px] group-hover/progress:h-[6px]'} transition-all pointer-events-none`}>
                    <div
                      className="absolute top-0 left-0 h-full bg-red-600 rounded-full pointer-events-none"
                      style={{
                        width: `${totalDuration > 0 ? (currentPos / totalDuration) * 100 : 0}%`,
                        transition: isDragging ? 'none' : 'width 0.1s linear'
                      }}
                    >
                      <div className={`absolute right-0 top-1/2 -translate-y-1/2 w-4 h-4 bg-red-600 rounded-full translate-x-1/2 shadow-[0_0_10px_rgba(229,9,20,0.8)] transition-transform ${isDragging ? 'scale-110' : 'scale-0 group-hover/progress:scale-100'}`} />
                    </div>
                  </div>
                </div>

                <div className="flex items-center gap-3 md:gap-4 pb-2">
                  <div className="text-[11px] font-bold font-mono tracking-widest text-white/80">
                    {formatTime(currentPos)} <span className="text-white/20 mx-1">/</span> {formatTime(totalDuration)}
                  </div>

                  <div className="flex-1" />

                  <button
                    onClick={(e) => {
                      e.stopPropagation();
                      if (videoRef.current) {
                        videoRef.current.currentTime = Math.min(
                          videoRef.current.duration || 0,
                          videoRef.current.currentTime + 90
                        );
                      }
                    }}
                    className="px-3 py-1.5 text-xs font-semibold text-white/90 border border-white/30 rounded-lg bg-black/20 hover:bg-white/10 hover:border-white transition-all flex items-center justify-center whitespace-nowrap"
                  >
                    Bỏ qua giới thiệu
                  </button>

                  {currentEpIndex + 1 < totalEpisodes && (
                    <button
                      onClick={(e) => { 
                        e.stopPropagation(); 
                        handleNextEpisode(true); 
                      }}
                      className="px-3 py-1.5 text-xs font-semibold text-white/90 border border-white/30 rounded-lg bg-black/20 hover:bg-white/10 hover:border-white hover:text-red-500 transition-all flex items-center justify-center whitespace-nowrap"
                      title="Chuyển Tập"
                    >
                      Chuyển Tập
                    </button>
                  )}

                  <div
                    className="flex items-center group/volume h-8"
                    onMouseEnter={() => setShowVolumeBar(true)}
                    onMouseLeave={() => {
                      if (!isDraggingVolumeRef.current) setShowVolumeBar(false);
                    }}
                  >
                    <button onClick={toggleMute} className="text-white hover:text-red-600 transition-colors relative z-10">
                      {(isMuted || volume === 0) ? (
                        <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}><path d="M5.586 15H4a1 1 0 01-1-1v-4a1 1 0 011-1h1.586l4.707-4.707C10.923 3.663 12 4.109 12 5v14c0 .891-1.077 1.337-1.707.707L5.586 15z" /><path strokeLinecap="round" strokeLinejoin="round" d="M17 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2" /></svg>
                      ) : volume < 0.5 ? (
                        <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}><path d="M15.536 8.464a5 5 0 010 7.072M12 18.364l-4.707-4.707H4a1 1 0 01-1-1v-4a1 1 0 011-1h3.293L12 2.91V18.36z" /></svg>
                      ) : (
                        <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}><path d="M15.536 8.464a5 5 0 010 7.072M18.364 5.636a9 9 0 010 12.728M12 18.364l-4.707-4.707H4a1 1 0 01-1-1v-4a1 1 0 011-1h3.293L12 2.91V18.36z" /></svg>
                      )}
                    </button>

                    <div className={`overflow-hidden transition-all duration-300 flex items-center ${showVolumeBar || isDraggingVolume ? 'w-44 ml-3 opacity-100' : 'w-0 opacity-0'}`}>
                      <div
                        className="relative w-24 h-8 flex items-center cursor-pointer group/v-slider"
                        style={{ touchAction: 'none' }}
                        onPointerDown={(e) => {
                          setIsDraggingVolume(true);
                          setShowVolumeBar(true); 
                          isDraggingVolumeRef.current = true;
                          const rect = e.currentTarget.getBoundingClientRect();
                          const update = (clientX: number) => {
                            const offsetX = clientX - rect.left;
                            handleVolumeChange(offsetX / rect.width);
                          };
                          update(e.clientX);
                          const onMove = (me: PointerEvent) => update(me.clientX);
                          const onUp = () => {
                            setIsDraggingVolume(false);
                            isDraggingVolumeRef.current = false;
                            window.removeEventListener('pointermove', onMove);
                            window.removeEventListener('pointerup', onUp);
                            window.removeEventListener('pointercancel', onUp);
                          };
                          window.addEventListener('pointermove', onMove);
                          window.addEventListener('pointerup', onUp);
                          window.addEventListener('pointercancel', onUp);
                        }}
                      >
                        <div className="w-full h-1.5 bg-white/20 rounded-full relative pointer-events-none">
                          <div
                            className="absolute top-0 left-0 h-full bg-red-600 rounded-full"
                            style={{ width: `${isMuted ? 0 : volume * 100}%` }}
                          >
                            <div className={`absolute right-0 top-1/2 -translate-y-1/2 w-3.5 h-3.5 bg-white rounded-full shadow-lg transition-transform ${isDraggingVolume ? 'scale-100' : 'scale-0 group-hover/v-slider:scale-100'}`} />
                          </div>
                        </div>
                      </div>
                      <span className={`text-[10px] font-black ml-3 transition-all select-none whitespace-nowrap ${isDraggingVolume ? 'text-red-600 scale-110' : 'text-white/60'}`}>
                        {isMuted ? 0 : Math.round(volume * 100)}%
                      </span>
                    </div>
                  </div>

                  <button onClick={toggleVideoFit} className="text-white hover:text-red-600 transition-colors">
                    <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}><path d="M3.75 3.75v4.5m0-4.5h4.5m-4.5 0L9 9M3.75 20.25v-4.5m0 4.5h4.5m-4.5 0L9 15M20.25 3.75h-4.5m4.5 0v4.5m0-4.5L15 9m5.25 11.25h-4.5m4.5 0v-4.5m0 4.5L15 15" /></svg>
                  </button>

                  <button onClick={() => toggleFullscreen(true)} className="text-white hover:text-red-600 transition-colors">
                    <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}><path d="M4 8V4h4m8 0h4v4m0 8v4h-4m-8 0H4v-4" /></svg>
                  </button>
                </div>
              </div>
            </div>
          </div>

          {showNextNotify && (
            <div className="absolute bottom-28 right-6 md:right-12 z-[200] animate-in slide-in-from-right-10 duration-500">
              <div className="bg-white/[0.07] backdrop-blur-xl border border-white/20 p-5 rounded-2xl shadow-[0_25px_50px_-12px_rgba(0,0,0,0.7),inset_0_1px_1px_rgba(255,255,255,0.2),0_0_20px_rgba(255,255,255,0.05)] min-w-[240px] relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-tr from-transparent via-white/[0.03] to-white/[0.08] pointer-events-none" />

                <div className="flex flex-col gap-3 relative z-10">
                  <div className="flex items-center gap-4">
                    <div className="w-10 h-10 bg-red-600 rounded-full flex items-center justify-center shadow-[0_0_15px_rgba(229,9,20,0.5)] border border-white/20">
                      <svg className="w-5 h-5 fill-current text-white" viewBox="0 0 24 24"><path d="M8 5v14l11-7z" /></svg>
                    </div>
                    <h4 className="text-xs font-black uppercase italic leading-none text-white">
                      {currentEpIndex + 1 < totalEpisodes ? `Tiếp theo tập ${currentEpIndex + 2}` : "Kết thúc phim"}
                    </h4>
                  </div>

                  <div className="w-full h-1 bg-white/10 rounded-full overflow-hidden mt-1">
                    <div className="h-full bg-red-600 shadow-[0_0_8px_#dc2626] transition-all duration-1000 ease-linear"
                      style={{ width: `${(countdown / 10) * 100}%` }} />
                  </div>
                </div>
              </div>
            </div>
          )}
        </>
      )}
    </div>
  );
}