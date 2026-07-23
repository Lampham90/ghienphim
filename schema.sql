-- ============================================================
-- SCHEMA D1 - ĐÃ SỬA (v3)
-- Cập nhật: Thêm cột api_modified để check cập nhật từ nguồn chính xác hơn
-- ============================================================

-- 1. Bảng Phim chính
DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
  slug TEXT PRIMARY KEY,
  name TEXT,
  origin_name TEXT,
  thumb_url TEXT,
  poster_url TEXT,
  description TEXT,
  episode_current TEXT,
  episode_total INTEGER,
  type TEXT,
  status TEXT,
  view INTEGER,
  year INTEGER,
  lang TEXT,
  quality TEXT,
  country_name TEXT,
  chieurap INTEGER DEFAULT 0,
  actor_json TEXT,
  category_json TEXT,
  alternative_names_json TEXT,
  last_updated INTEGER,
  api_modified TEXT -- Lưu thời gian modified.time từ nguồn để check update
);

CREATE INDEX idx_movies_type ON movies(type);
CREATE INDEX idx_movies_country ON movies(country_name);
CREATE INDEX idx_movies_last_updated ON movies(last_updated);
CREATE INDEX idx_movies_year ON movies(year);
CREATE INDEX idx_movies_chieurap ON movies(chieurap);

-- 2. Bảng mapping Thể loại
DROP TABLE IF EXISTS movie_categories;
CREATE TABLE movie_categories (
  movie_slug TEXT NOT NULL,
  category_slug TEXT NOT NULL
);

CREATE UNIQUE INDEX idx_movie_categories_unique
  ON movie_categories (movie_slug, category_slug);

CREATE INDEX idx_movie_categories_slug ON movie_categories(category_slug);

-- 3. Bảng mapping Diễn viên
DROP TABLE IF EXISTS movie_actors;
CREATE TABLE movie_actors (
  movie_slug TEXT NOT NULL,
  actor_name TEXT NOT NULL
);

CREATE UNIQUE INDEX idx_movie_actors_unique
  ON movie_actors (movie_slug, actor_name);

-- 4. Bảng Tìm kiếm toàn văn (FTS5)
DROP TABLE IF EXISTS movies_fts;
CREATE VIRTUAL TABLE movies_fts USING fts5(
  slug UNINDEXED,
  name,
  origin_name,
  actors,
  alternative_names
);
