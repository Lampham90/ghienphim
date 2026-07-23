// GIT_UPDATE_MARKER
// GIT_UPDATE_MARKER
"use client";
import React from 'react';
import MovieCard from './MovieCard';

interface MovieSectionProps {
  title: string;
  movies: any[];
  variant?: 'vertical' | 'horizontal' | 'ranked1' | 'ranked2' | 'ranked3';
}

export default function MovieSection({ title, movies, variant = 'vertical' }: MovieSectionProps) {
  if (!movies || movies.length === 0) return null;

  return (
    <div className="mb-12 last:mb-20">
      <div className="px-6 md:px-20 mb-6 flex items-center justify-between">
        <h2 className="text-xl md:text-2xl font-black uppercase italic tracking-tighter text-white">
          <span className="text-red-600 mr-2">|</span>
          {title}
        </h2>
      </div>
      
      <div className="flex gap-4 md:gap-6 overflow-x-auto pb-8 scrollbar-hide px-6 md:px-20 snap-x">
        {movies.map((movie, index) => (
          <MovieCard 
            key={movie.slug || index} 
            movie={movie} 
            variant={variant} 
            index={index} 
          />
        ))}
      </div>
    </div>
  );
}
