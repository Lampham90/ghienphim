"use client";
import { create } from 'zustand';
import { db } from './firebase';
// ✅ Import từ /lite
import { doc, setDoc, deleteDoc, collection, getDocs } from "firebase/firestore/lite";

export interface HistoryItem {
  epIndex: number;
  epNum: string;
  seconds: number;
  duration: number;
  name: string;
  poster: string;
  thumb: string;
  last_updated: number;
  slug?: string;
  sub_type?: string;
}

interface MovieStore {
  history: Record<string, HistoryItem>;
  favorites: any[];
  loadingSync: boolean;
  init: () => void;
  saveProgress: (slug: string, data: any, userId?: string, shouldSync?: boolean) => Promise<void>;
  toggleFavorite: (slug: string, movieData: any, isFavorite: boolean, userId?: string) => Promise<void>;
  syncData: (userId: string) => Promise<void>;
}

export const useMovieStore = create<MovieStore>((set, get) => ({
  history: {},
  favorites: [],
  loadingSync: false,

  init: () => {
    if (typeof window === 'undefined') return;
    const localFavs = JSON.parse(localStorage.getItem("movie_favorites") || "[]");
    const localHistory = JSON.parse(localStorage.getItem("movie_history") || "{}");
    set({ favorites: localFavs, history: localHistory });
  },

  saveProgress: async (slug, data, userId, shouldSync = false) => {
    const now = Date.now();
    const updatedData = { ...data, last_updated: now };
    let history = { ...get().history, [slug]: updatedData };

    // Giới hạn 50 phim
    const entries = Object.entries(history);
    if (entries.length > 50) {
      const sorted = entries.sort((a, b) => (b[1].last_updated || 0) - (a[1].last_updated || 0));
      history = Object.fromEntries(sorted.slice(0, 50));
    }

    set({ history });
    localStorage.setItem("movie_history", JSON.stringify(history));

    if (userId && shouldSync) {
      // ✅ Firestore Lite dùng setDoc bình thường
      await setDoc(doc(db, `users/${userId}/history`, slug), updatedData);
    }
  },

  toggleFavorite: async (slug, movieData, isFavorite, userId) => {
    let favorites = [...get().favorites];
    if (isFavorite) {
      favorites = favorites.filter(item => item.slug !== slug);
    } else {
      favorites.push(movieData);
    }

    set({ favorites });
    localStorage.setItem("movie_favorites", JSON.stringify(favorites));

    if (userId) {
      const favRef = doc(db, `users/${userId}/favorites`, slug);
      if (isFavorite) {
        await deleteDoc(favRef);
      } else {
        await setDoc(favRef, movieData);
      }
    }
  },

  syncData: async (userId) => {
    if (!userId || get().loadingSync) return;
    set({ loadingSync: true });
    try {
      const [favsSnap, historySnap] = await Promise.all([
        getDocs(collection(db, `users/${userId}/favorites`)),
        getDocs(collection(db, `users/${userId}/history`))
      ]);

      const cloudFavs: Record<string, any> = {};
      favsSnap.forEach(d => cloudFavs[d.id] = d.data());

      const cloudHistory: Record<string, any> = {};
      historySnap.forEach(d => cloudHistory[d.id] = d.data());

      // Merge logic (Last updated wins)
      const localHistory = { ...get().history };
      const mergedHistory = { ...cloudHistory, ...localHistory };
      const finalHistory = Object.fromEntries(
        Object.entries(mergedHistory)
          .sort((a: any, b: any) => (b[1].last_updated || 0) - (a[1].last_updated || 0))
          .slice(0, 50)
      );

      const localFavs = get().favorites;
      const localFavsMap = Object.fromEntries(localFavs.map((m: any) => [m.slug, m]));
      const mergedFavs = Object.values({ ...cloudFavs, ...localFavsMap });

      localStorage.setItem("movie_favorites", JSON.stringify(mergedFavs));
      localStorage.setItem("movie_history", JSON.stringify(finalHistory));

      set({ favorites: mergedFavs, history: finalHistory, loadingSync: false });
    } catch (error) {
      console.error("Sync failed:", error);
      set({ loadingSync: false });
    }
  }
}));