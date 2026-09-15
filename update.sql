INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'Ông Chú Ở Vùng Quê Trở Thành Thánh Kiếm (Phần 2)', 'From Old Country Bumpkin to Master Swordsman (Season 2)', 'https://phimimg.com/uploads/movies/20260711/ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260711/ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2-poster.webp', '<p>Beryl Gardenant, một kiếm sĩ trung niên điều hành một võ đường ở vùng hẻo lánh, sống một cuộc sống bình lặng, cho đến khi Allucia, cựu học trò và là Chỉ huy của Hội Hiệp sĩ Hoàng gia, xuất hiện! Cuộc sống của Beryl sắp thay đổi đáng kể! Cuộc sống thành thị. Học trò cũ. Bạn mới và kẻ thù đáng gờm. Quá nhiều thứ. Nhưng sau nhiều năm luyện tập, anh có những kỹ năng điên rồ, và anh được mệnh danh là "kiếm sĩ vùng hẻo lánh".</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 383, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"平田広明","avatar":"https://image.tmdb.org/t/p/w185/mMWEdlssJm3TVuXW4Wb7pQeX20Z.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["De viejo pueblerino a gran maestro espadachín","乡下大叔成为剑圣","Katainaka no Ossan, Kensei ni Naru","Ossan Kensei","おっさん剣聖","片田舎のおっさん, 剣聖になる","Katainaka no Ossan Kensei ni Naru II","片田舎のおっさん、剣聖になるⅡ","Backwater Old Man Becomes a Swordmaster","An Old Man from the Countryside Becomes a Swords Saint: I Was Just a Rural Sword Teacher, but My Successful Students Won''t Leave Me Alone!","片田舎のおっさん、剣聖になる"]', '{"id":"260823","type":"tv","vote_average":7.2,"vote_count":91,"logo_url":"https://image.tmdb.org/t/p/original/rW67zIfyy7u2tjjqtYgn2gLILwd.png","backdrop_url":"https://image.tmdb.org/t/p/original/sEagMcuLL3beaHc3ToiZicMuYSb.jpg","poster_url":"https://image.tmdb.org/t/p/original/ujQp5egkJOkDHx4TehlgHePFcRv.jpg","aspect_ratio":1.629}', '{"id":"tt35346717","vote_average":6.7}', 
  1789378914795, '2026-09-14T13:14:41.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ong-chu-o-vung-que-tro-thanh-thanh-kiem-phan-2', 'Ông Chú Ở Vùng Quê Trở Thành Thánh Kiếm (Phần 2)', 'From Old Country Bumpkin to Master Swordsman (Season 2)', 'ông chú ở vùng quê trở thành thánh kiếm (phần 2) from old country bumpkin to master swordsman (season 2) 平田広明', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'khai-giap-chan-truyen', 'Khải Giáp Chân Truyền', 'Yoroi-Shinden Samurai Troopers / Yoroi Shin Den Samurai Troopers', 'https://phimimg.com/upload/vod/20260116-1/ce2cc0cbfbbf8532c8728a38aafdba39.jpg', 'https://phimimg.com/upload/vod/20260116-1/e3b57ec33c4555307df7c16a441ba08c.jpg', '<p>Thế giới Yêu ma từng khiến nhân gian chìm trong nỗi kinh hoàng. Khi phong ấn bị phá vỡ và binh đoàn Yêu binh ồ ạt mở cuộc xâm lược, năm chiến binh trẻ tuổi đã cấp tốc lên đường giải cứu nhân loại. Họ được gọi là các &#39;Samurai Troopers&#39; (Chiến binh Samurai), và giờ đây, cuộc chiến của họ lại bắt đầu một lần nữa!</p>', 
  'Tập 22', 24, 'hoathinh', 'ongoing', 353, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"石橋陽彩","avatar":"https://image.tmdb.org/t/p/w185/xDfX7mWq67zoymw5V7vEu22pf5r.jpg"},{"name":"榎木淳弥","avatar":"https://image.tmdb.org/t/p/w185/vBnNL3Jqy0zkS3ZgsXZmvDM9Dfz.jpg"},{"name":"Murase Ayumu","avatar":"https://image.tmdb.org/t/p/w185/3aGM6KpcCIEKOXP9510tzaKc8uw.jpg"},{"name":"武内駿輔","avatar":"https://image.tmdb.org/t/p/w185/p1bD76bPptJ41mKRtv0mIr8ZcvO.jpg"},{"name":"熊谷健太郎","avatar":"https://image.tmdb.org/t/p/w185/hsSdTc4PBuLOQedZMsTS6AHvC8l.jpg"},{"name":"増田俊樹","avatar":"https://image.tmdb.org/t/p/w185/oMAk5Pu3aazmwFwiVOgyU7iW5ut.jpg"},{"name":"Lynn","avatar":"https://image.tmdb.org/t/p/w185/eJ2NqgzpnzNbT6Nt9EpDfzqNeZM.jpg"},{"name":"小西克幸","avatar":"https://image.tmdb.org/t/p/w185/nYM5cH6U7cp4x9dIzW0enmEKmeV.jpg"},{"name":"佐藤拓也","avatar":"https://image.tmdb.org/t/p/w185/xZgoTs6DOSneHkoOWL751pQzLru.jpg"},{"name":"鳥海浩輔","avatar":"https://image.tmdb.org/t/p/w185/vlRQ77taCCKh7itCZn3IWJUiYQr.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["铠真传 武士骑兵","魔神坛斗士","Yoroi Shin Den Samurai Troopers","Yoroishinden Samurai Torūpā","New Armor Legend Samurai Troopers","鎧真伝サムライトルーパー"]', '{"id":"293629","type":"tv","vote_average":8.4,"vote_count":15,"logo_url":"https://image.tmdb.org/t/p/original/c2IELSHGFn0j3urtl3mzoHUBQW0.png","backdrop_url":"https://image.tmdb.org/t/p/original/wKILy6ADkaCIbfnam27jWWwlzx9.jpg","poster_url":"https://image.tmdb.org/t/p/original/b739TXcF5nOzElF4gCbN5brOrkc.jpg","aspect_ratio":6.221}', '{"id":"tt37532599","vote_average":null}', 
  1789378914794, '2026-09-14T13:14:12.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khai-giap-chan-truyen', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'khai-giap-chan-truyen';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('khai-giap-chan-truyen', 'Khải Giáp Chân Truyền', 'Yoroi-Shinden Samurai Troopers / Yoroi Shin Den Samurai Troopers', 'khải giáp chân truyền yoroi-shinden samurai troopers / yoroi shin den samurai troopers 石橋陽彩 榎木淳弥 murase ayumu 武内駿輔 熊谷健太郎 増田俊樹 lynn 小西克幸 佐藤拓也 鳥海浩輔', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tho-san-giac-thu-omegahorn', 'Thợ Săn Giác Thú Omegahorn', 'KakuseiHunter Omegahorn', 'https://phimimg.com/uploads/movies/20260726/tho-san-giac-thu-omegahorn-thumb.webp', 'https://phimimg.com/uploads/movies/20260726/tho-san-giac-thu-omegahorn-poster.webp', '<p>Thời cổ đại, các Giác thú khổng lồ từng thống trị thế giới trước khi bị phong ấn vào các Egorgear và biến mất. Đến thời hiện đại, một nhóm người gọi là Thợ săn bắt đầu sử dụng Máy Khởi Giác để giải phóng sức mạnh của chúng. Tình cờ tìm thấy một Máy Khởi Giác kỳ lạ tên Omegahorn cùng một Egorgear cổ xưa, Shout đã đánh thức con thú khổng lồ có sừng mang tên Viêm Giác. Nhận ra tố chất của một vị vua trong cậu, Viêm Giác mời Shout làm Đội Trưởng Omegahorn, kề vai sát cánh chiến đấu cùng mình và trở thành Thợ Săn Giác Thú Omegahorn.</p>', 
  'Tập 8', 12, 'series', 'ongoing', 535, 2026, 
  'Vietsub + Lồng Tiếng', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"楢原聖","avatar":"https://image.tmdb.org/t/p/w185/89v9rI2vUtUGcb2ygCBrw6zCU9E.jpg"},{"name":"国上将大","avatar":"https://image.tmdb.org/t/p/w185/n69qz49621CRe4905wEHFUHGpVF.jpg"},{"name":"糸瀬七葉","avatar":"https://image.tmdb.org/t/p/w185/7mYv5jxviECXYoYCBe0WtcQe9VX.jpg"},{"name":"三浦舞華","avatar":"https://image.tmdb.org/t/p/w185/6FEA6sOzV3zKqF45amYaOqoYb45.jpg"},{"name":"Kenshiro Kato","avatar":"https://image.tmdb.org/t/p/w185/oYdxjWCt52tq3xoFeMNi6c90QnA.jpg"},{"name":"Shogo Tazuru","avatar":"https://image.tmdb.org/t/p/w185/taYJyiGT9tzpwS7sWG35SMLC3kd.jpg"},{"name":"小西詠斗","avatar":"https://image.tmdb.org/t/p/w185/2hFSx39VXKmeNjibg1PUAMk5VUs.jpg"},{"name":"光宗薫","avatar":"https://image.tmdb.org/t/p/w185/r1laO3Vi1O6SUiacdmWIkGGfTsN.jpg"},{"name":"桜庭大翔","avatar":"https://image.tmdb.org/t/p/w185/vIM2dfhgPDiwiS5GFI9E91nFG7l.jpg"},{"name":"長田光平","avatar":"https://image.tmdb.org/t/p/w185/om90yBNViK5YXhuRxSkyvJ89ANQ.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["カクセイハンターオメガホーン"]', '{"id":"319938","type":"tv","vote_average":5.5,"vote_count":2,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/mH0oCFVu4YleTJYq77mrUgLrFoR.jpg","poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914793, '2026-09-14T13:13:40.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tho-san-giac-thu-omegahorn', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tho-san-giac-thu-omegahorn', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tho-san-giac-thu-omegahorn', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tho-san-giac-thu-omegahorn', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tho-san-giac-thu-omegahorn', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'tho-san-giac-thu-omegahorn';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tho-san-giac-thu-omegahorn', 'Thợ Săn Giác Thú Omegahorn', 'KakuseiHunter Omegahorn', 'thợ săn giác thú omegahorn kakuseihunter omegahorn 楢原聖 国上将大 糸瀬七葉 三浦舞華 kenshiro kato shogo tazuru 小西詠斗 光宗薫 桜庭大翔 長田光平', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'koukaku-kidoutai', 'Koukaku Kidoutai', 'THE GHOST IN THE SHELL', 'https://phimimg.com/uploads/movies/20260711/koukaku-kidoutai-thumb.webp', 'https://phimimg.com/uploads/movies/20260711/koukaku-kidoutai-poster.webp', '<p>Năm 2029, tại một Nhật Bản ở tương lai gần. Nữ chiến binh cyborg toàn phần Motoko Kusanagi đã hình dung ra một lực lượng đặc nhiệm chuyên tấn công phủ đầu các mối đe dọa mới nổi. Cô và các đồng đội của mình đã được Daisuke Aramaki chiêu mộ để thành lập Đội 9 Cục An ninh Công cộng, còn được biết đến với cái tên "Biệt đội Vỏ bọc" (Shell Squad). Một âm mưu quốc tế dần lộ diện, hướng về gã hacker bí ẩn được gọi là "Kẻ Điều Khiển Rối" (Puppet Master). Số phận nào đang đón đợi Kusanagi? Mục đích cuối cùng của gã hacker kia là gì? Một kỷ nguyên mới của thể loại hành động cyberpunk chính thức bắt đầu!</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 437, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"坂本真綾","avatar":"https://image.tmdb.org/t/p/w185/jcjTJbxN3rYOtjSJihvbygvEFFZ.jpg"},{"name":"安元洋貴","avatar":"https://image.tmdb.org/t/p/w185/vNIGLl0wFmdhdnulMssQ1qyNeBs.jpg"},{"name":"Nakamura Yuichi","avatar":"https://image.tmdb.org/t/p/w185/wb8behVKjBHX9XXrEydvNINCYwH.jpg"},{"name":"山路和弘","avatar":"https://image.tmdb.org/t/p/w185/fgGTdhTiWViGmjl2kABHWzLIpZ0.jpg"},{"name":"後藤光祐","avatar":"https://image.tmdb.org/t/p/w185/yKZfd7qx8sEfEwBdjPawQWkQwaF.jpg"},{"name":"奈良徹","avatar":"https://image.tmdb.org/t/p/w185/rrfvhZpmGsgGxmBSo7SJ6rUfuXP.jpg"},{"name":"大井麻利衣","avatar":"https://image.tmdb.org/t/p/w185/5Yy0LYMEqmGlMHGOg2johmMeSwc.jpg"},{"name":"金田朋子","avatar":"https://image.tmdb.org/t/p/w185/oj2f7KpJLas78N19GvBS41ydZCa.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["攻壳机动队 THE GHOST IN THE SHELL","攻殻機動隊 THE GHOST IN THE SHELL","Ghost in the Shell","Kōkaku Kidōtai THE GHOST IN THE SHELL","Koukaku Kidoutai THE GHOST IN THE SHELL","攻殻機動隊","Mobile Armored Riot Police THE GHOST IN THE SHELL"]', '{"id":"255358","type":"tv","vote_average":9,"vote_count":12,"logo_url":"https://image.tmdb.org/t/p/original/oosWS0zLq9BD1gwv0tcjnttVu03.png","backdrop_url":"https://image.tmdb.org/t/p/original/app8YXZ4NS0hMTYZuIA6zx92xVm.jpg","poster_url":"https://image.tmdb.org/t/p/original/nUXjSyXAQZhOf32e6lkLX6C6Rf3.jpg","aspect_ratio":5.027}', '{"id":"tt36517689","vote_average":8}', 
  1789378914792, '2026-09-14T13:13:14.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('koukaku-kidoutai', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'koukaku-kidoutai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('koukaku-kidoutai', 'Koukaku Kidoutai', 'THE GHOST IN THE SHELL', 'koukaku kidoutai the ghost in the shell 坂本真綾 安元洋貴 nakamura yuichi 山路和弘 後藤光祐 奈良徹 大井麻利衣 金田朋子', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'Hậu Phương Mạnh Nhất Thế Giới - Nhà Khai Phá Tân Binh Của Vương Quốc Mê Cung', 'The World''s Strongest Rearguard', 'https://phimimg.com/upload/vod/20260706-1/f71f0f1d25c2cf1dbee49f48d2c10b65.jpg', 'https://phimimg.com/upload/vod/20260706-1/77db63f704e93279e6a31c668daf3c32.jpg', '<p>Nhân vật chính là một nô lệ của tư bản, sau khi gặp tai nạn bất ngờ đã chuyển sinh đến dị giới mang tên “Vương quốc mê cung”. Tại nơi đó, anh trở thành một nhà thám hiểm mê cung và thức tỉnh một nghề nghiệp bí ẩn mang tên “Hậu phương” Đây là một nghề hỗ trợ toàn năng, vừa có thể tấn công, phòng thủ lẫn trị liệu! Phía sau, cùng với cô gái lính đánh thuê á nhân bí ẩn, vị sếp nữ xinh đẹp từ kiếp trước và những người đồng đội đầy cá tính, chàng trai liên tục leo hạng trong Vương quốc mê cung! &quot;Mọi người, tôi đến hỗ trợ mọi người đây!&quot; Sự hỗ trợ ấy sẽ tăng cường sức mạnh và sợi dây gắn kết. Câu chuyện phiêu lưu của hậu phương mạnh nhất chính thức mở màn!</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 631, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"松岡禎丞","avatar":"https://image.tmdb.org/t/p/w185/ugDwdWEXnmv43jcbnfAi4XwiQ8C.jpg"},{"name":"石川由依","avatar":"https://image.tmdb.org/t/p/w185/2y1y1W4q8UIR0Vbs4NNvc7722XT.jpg"},{"name":"高尾奏音","avatar":"https://image.tmdb.org/t/p/w185/w3h6h9R29uRsOv01qbk94ym2msm.jpg"},{"name":"古賀葵","avatar":"https://image.tmdb.org/t/p/w185/uVpwheVV4aPROyY1toYv3v5HSPD.jpg"},{"name":"早見沙織","avatar":"https://image.tmdb.org/t/p/w185/gLv9lO7dlUbIsmyJUvgegqAAXki.jpg"},{"name":"相坂優歌","avatar":"https://image.tmdb.org/t/p/w185/2W6op6w1H0UktVJtMgir0b4XbvI.jpg"},{"name":"本渡楓","avatar":"https://image.tmdb.org/t/p/w185/11BcHnuJYrOZhIftgUiQqfm7TK6.jpg"},{"name":"中村桜","avatar":"https://image.tmdb.org/t/p/w185/hBiyY9sU7tw6pf2eaDIeyF1NOfq.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Sekai Saikyou no Kouei: Meikyuukoku no Shinjin Tansakusha","Sekai Saikyou no Kouei Meikyuukoku no Shinjin Tansakusha","The World''s Strongest Rearguard: Labyrinth Country''s Novice Seeker","世界最強の後衛 ～迷宮国の新人探索者～"]', '{"id":"300267","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/sTP6CtzTpoAFMdUUvjLiftKSt62.png","backdrop_url":"https://image.tmdb.org/t/p/original/bsznoT4r31EztazNKwqXMNKuzhk.jpg","poster_url":"https://image.tmdb.org/t/p/original/l3CzKVe9cUgMuP2EjW6t9F3otFv.jpg","aspect_ratio":5.926}', '{"id":"tt41293112","vote_average":null}', 
  1789378914791, '2026-09-14T13:12:54.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hau-phuong-manh-nhat-the-gioi-nha-khai-pha-tan-binh-cua-vuong-quoc-me-cung', 'Hậu Phương Mạnh Nhất Thế Giới - Nhà Khai Phá Tân Binh Của Vương Quốc Mê Cung', 'The World''s Strongest Rearguard', 'hậu phương mạnh nhất thế giới - nhà khai phá tân binh của vương quốc mê cung the world''s strongest rearguard 松岡禎丞 石川由依 高尾奏音 古賀葵 早見沙織 相坂優歌 本渡楓 中村桜', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  '100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', '100 Cô Bạn Gái Yêu Bạn Rất Rất Rất Rất Rất Nhiều (Phần 3)', 'The 100 Girlfriends Who Really, Really, Really, Really, REALLY Love You (Season 3)', 'https://phimimg.com/uploads/movies/20260707/100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3-thumb.webp', 'https://phimimg.com/uploads/movies/20260707/100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3-poster.webp', '<p>Rentaro Aijo đã trải qua 100 lần thất tình hồi còn học sơ trung. Khi vừa lên cao trung, cậu đã đến một đền thờ và ước rằng "tôi muốn có người yêu". Thần tình yêu xuất hiện và phán rằng "tại cao trung, con sẽ gặp được 100 người định mệnh của mình". Tuy nhiên, theo vị thần, những người gặp một nửa định mệnh của mình phải yêu nhau và cảm thấy hạnh phúc, bằng không họ sẽ chết. Gặp gỡ liên tiếp những con người định mệnh của mình, Rentaro sẽ làm thế nào đây? Điều gì sẽ đến với 100 cô bạn gái của cậu?</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 441, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"加藤渉","avatar":"https://image.tmdb.org/t/p/w185/7PUe94Ju0klZfEutSSbdOJyaV0y.jpg"},{"name":"本渡楓","avatar":"https://image.tmdb.org/t/p/w185/11BcHnuJYrOZhIftgUiQqfm7TK6.jpg"},{"name":"富田美憂","avatar":"https://image.tmdb.org/t/p/w185/rSR17l4HdchLkhpRuAZbGbXNmUS.jpg"},{"name":"Maria Naganawa","avatar":"https://image.tmdb.org/t/p/w185/tt0j0z34Oq3MyvDA3VeizskWcw4.jpg"},{"name":"瀬戸麻沙美","avatar":"https://image.tmdb.org/t/p/w185/iKKCPgKrNd4pJ0iBOC1SBZy2Y4Y.jpg"},{"name":"朝井彩加","avatar":"https://image.tmdb.org/t/p/w185/tQCblqK0CJfddLPkYKcI94R2Pgh.jpg"},{"name":"千葉繁","avatar":"https://image.tmdb.org/t/p/w185/mF5YJxApTYKBVFJDrEC9IrJ5ooV.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Mis 100 novias que me quieren mucho mucho","Las 100 novias que de verdad, te Aman","超超超超超喜欢你的100个女朋友","Mis 100 novias que me quieren mogollón mogollón","100 Pacar yang Sungguh Sangat Amat Benar-benar Mencintaimu","100 החברות שבאמת, באמת, באמת, באמת, באמת, באמת אוהבות אותך","Kimi no Koto ga Dai Dai Dai Dai Daisuki na 100 Nin no Kanojo","Kimi no Koto ga Daidaidaidaidaisuki na 100-nin no Kanojo","Hyakkano","너를 너무너무너무너무 좋아하는 100명의 그녀 2기","Сто девушек, которые очень-очень-очень-очень-очень сильно тебя любят","The 100 Girlfriends Who Really Really Really Really REALLY Love You","100 cô bạn gái yêu bạn rất, rất, rất, rất, rất nhiều","君のことが大大大大大好きな100人の彼女"]', '{"id":"223564","type":"tv","vote_average":8.1,"vote_count":193,"logo_url":"https://image.tmdb.org/t/p/original/xzJ3qh5WpecjDOgPnu8PWKutXLL.png","backdrop_url":"https://image.tmdb.org/t/p/original/shXdGFZIEaSmiOkVW2BeEaPihuA.jpg","poster_url":"https://image.tmdb.org/t/p/original/8E0OTM8PqvBNRMbTOD8L7Zpv2qt.jpg","aspect_ratio":3.184}', '{"id":"tt28919914","vote_average":6.9}', 
  1789378914790, '2026-09-14T13:10:27.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = '100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('100-co-ban-gai-yeu-ban-rat-rat-rat-rat-rat-nhieu-phan-3', '100 Cô Bạn Gái Yêu Bạn Rất Rất Rất Rất Rất Nhiều (Phần 3)', 'The 100 Girlfriends Who Really, Really, Really, Really, REALLY Love You (Season 3)', '100 cô bạn gái yêu bạn rất rất rất rất rất nhiều (phần 3) the 100 girlfriends who really, really, really, really, really love you (season 3) 加藤渉 本渡楓 富田美憂 maria naganawa 瀬戸麻沙美 朝井彩加 千葉繁', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tuyet-the-chien-hon', 'Tuyệt Thế Chiến Hồn', 'Peerless Soul', 'https://phimimg.com/upload/vod/20250219-1/b2facbf6cebbf66d0c728df0b75ad5b9.jpg', 'https://phimimg.com/upload/vod/20250219-1/b880c627b5571d9afd22e58d056e772a.jpg', '<p>Đại lục Thương Lam là nơi nếu muốn thành võ giả thì bắt buộc phải thức tỉnh được võ hồn, từ đó kết nối với trời đất, hấp thụ linh khí, tiến hành tu luyện. Thiếu niên bình thường Tần Nam thức tỉnh được Chiến Thần Chi Hồn để không ngừng trở nên mạnh, để báo đáp ơn tri ngộ của Tiêu Khinh Tuyết, đã trải qua bao trắc trở, bị cuốn vào những cuộc tranh đấu khốc liệt, cuối cùng danh chấn Thương Lam, đứng trên vạn người.</p>', 
  'Tập 203', 230, 'hoathinh', 'ongoing', 432, 2024, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2276b29204c46f75064735477890afd6","name":"Thần Thoại","slug":"than-thoai"}]', 
  '["Jueshi Zhan Hun","Jue Shi Zhan Hun","Jueshi Zhanhun","Peerless Battle Spirit (2024)","Peerless Soul","Super Heroic","Superheroic","绝世战魂"]', '{"id":"252788","type":"tv","vote_average":9,"vote_count":2,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/uAGWVrQt2yIZGKL0I5RXxTPQi02.jpg","poster_url":"https://image.tmdb.org/t/p/original/cIbuGvC1RlWV2qkkxWy4uiiTwfx.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914789, '2026-09-14T12:59:41.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tuyet-the-chien-hon', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tuyet-the-chien-hon', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tuyet-the-chien-hon', 'than-thoai');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tuyet-the-chien-hon', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tuyet-the-chien-hon', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tuyet-the-chien-hon', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'tuyet-the-chien-hon';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tuyet-the-chien-hon', 'Tuyệt Thế Chiến Hồn', 'Peerless Soul', 'tuyệt thế chiến hồn peerless soul đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tiem-banh-gao-vu-tru', 'Tiệm Bánh Gạo Vũ Trụ', 'Space Rice Cake Shop', 'https://phimimg.com/uploads/movies/20260805/tiem-banh-gao-vu-tru-thumb.webp', 'https://phimimg.com/uploads/movies/20260805/tiem-banh-gao-vu-tru-poster.webp', '<p>Cửa hàng bánh gạo vũ trụ ra đời sau khi Lee Eun Ji, Mimi, Lee Young Ji và An Yu Jin thua cuộc trong nhiệm vụ thoát khỏi phòng kín của Torong. Hình phạt là các cô nàng phải cùng nhau làm việc tại một cửa hàng bánh gạo, thức dậy lúc 5 giờ sáng và vật lộn buôn bán.</p>', 
  'Tập 7', 12, 'tvshows', 'ongoing', 388, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"이은지","avatar":"https://image.tmdb.org/t/p/w185/l5y54oFkJ43u2LvTdEnKSVadqNR.jpg"},{"name":"미미","avatar":"https://image.tmdb.org/t/p/w185/cFF6eU40I3mRzJk3JWNtbJjAfuR.jpg"},{"name":"이영지","avatar":"https://image.tmdb.org/t/p/w185/tVTcU6TRhBrh6lPqJQLwXWBnIs6.jpg"},{"name":"안유진","avatar":"https://image.tmdb.org/t/p/w185/ufAEeh6aDZAO2pVQgyAU38kMrZv.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Space Rice Cake","우주떡집"]', '{"id":"327830","type":"tv","vote_average":7,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/tVPgxamwwkXcOPgBUSgZzVvlPgX.png","backdrop_url":"https://image.tmdb.org/t/p/original/v1DTZRkobEWloLKQ70xUA2sExTJ.jpg","poster_url":null,"aspect_ratio":3.95}', '{"id":null,"vote_average":null}', 
  1789378914788, '2026-09-14T12:59:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tiem-banh-gao-vu-tru', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tiem-banh-gao-vu-tru', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tiem-banh-gao-vu-tru', 'bo_han');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tiem-banh-gao-vu-tru', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'tiem-banh-gao-vu-tru';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tiem-banh-gao-vu-tru', 'Tiệm Bánh Gạo Vũ Trụ', 'Space Rice Cake Shop', 'tiệm bánh gạo vũ trụ space rice cake shop 이은지 미미 이영지 안유진', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tia-sang-cua-ngay-mai', 'Tia Sáng Của Ngày Mai', 'Sparks Of Tomorrow', 'https://phimimg.com/upload/vod/20260706-1/8bcb4e4262ca4b808fff34af41c6ddf7.jpg', 'https://phimimg.com/upload/vod/20260706-1/bf175278c0e75aaa8a0fab5aeed2f93a.jpg', '<p>Trong một quá khứ giả tưởng, một bộ đôi tưởng chừng không liên quan hợp tác tìm kiếm một cuốn danh mục thất lạc, có thể mang điện đến những con phố mịt mù khói của Kyoto.</p>', 
  'Tập 11', 12, 'series', 'ongoing', 500, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"内田雄馬","avatar":"https://image.tmdb.org/t/p/w185/2otstbLfQ7MXuFt1X8MFOb4OIgd.jpg"},{"name":"雨宮天","avatar":"https://image.tmdb.org/t/p/w185/4ZZcdFH4QgbIC8AeJ3BLG1ue7G5.jpg"},{"name":"Uchiyama Koki","avatar":"https://image.tmdb.org/t/p/w185/sllSm3iZZWVLTBrDZQRtWrZUfEj.jpg"},{"name":"小野大輔","avatar":"https://image.tmdb.org/t/p/w185/5rjl28lx84JjRS0hzq3Ajvx2dhp.jpg"},{"name":"武内駿輔","avatar":"https://image.tmdb.org/t/p/w185/p1bD76bPptJ41mKRtv0mIr8ZcvO.jpg"},{"name":"寿美菜子","avatar":"https://image.tmdb.org/t/p/w185/puocmMfvql6X1AvhFTolaV6Vh2r.jpg"},{"name":"大地葉","avatar":"https://image.tmdb.org/t/p/w185/bt0oOFKknrOG7gNWusq9sc8UOhm.jpg"},{"name":"川井田夏海","avatar":"https://image.tmdb.org/t/p/w185/bdsKRWdB14DAAZzJnRjquWbqNYR.jpg"},{"name":"浦和希","avatar":"https://image.tmdb.org/t/p/w185/7eUgENWREmWSMnLPUFCQhvUSpdI.jpg"},{"name":"平川大輔","avatar":"https://image.tmdb.org/t/p/w185/8uDi5NxFdxFvfVyo4n5CeOSLWEf.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["20 Seiki Denki Mokuroku -Eureka Evrika-","Nijūseiki Denki Mokuroku -Eureka Evrika-","Nijuuseiki Denki Mokuroku -Eureka Evrika-","20th Century Electricity Catalog","二十世紀電氣目録-ユーレカ・エヴリカ-"]', '{"id":"153217","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/eXibwjf84fg8GElMnBVxbdIi2HT.png","backdrop_url":"https://image.tmdb.org/t/p/original/fx5JyhFvPn1GSm5ITtNNM6hmpUa.jpg","poster_url":"https://image.tmdb.org/t/p/original/yDTcX4l5D3OFeYGsQVI5Jqxx1D7.jpg","aspect_ratio":5.531}', '{"id":"tt38939446","vote_average":null}', 
  1789378914787, '2026-09-14T12:58:56.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tia-sang-cua-ngay-mai', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tia-sang-cua-ngay-mai', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tia-sang-cua-ngay-mai', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tia-sang-cua-ngay-mai', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tia-sang-cua-ngay-mai', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'tia-sang-cua-ngay-mai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tia-sang-cua-ngay-mai', 'Tia Sáng Của Ngày Mai', 'Sparks Of Tomorrow', 'tia sáng của ngày mai sparks of tomorrow 内田雄馬 雨宮天 uchiyama koki 小野大輔 武内駿輔 寿美菜子 大地葉 川井田夏海 浦和希 平川大輔', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tam-biet-lara', 'Tạm Biệt, Lara', 'Goodbye, Lara', 'https://phimimg.com/upload/vod/20260706-1/a58d4995de5cca37d9a5505d0f7ca237.jpg', 'https://phimimg.com/upload/vod/20260706-1/921417e1ad5a13789142b510a53cf56e.jpg', '<p>Ngày xửa ngày xưa, một nàng tiên cá tên Lara đã đem lòng yêu một hoàng tử loài người. Để được ở bên anh, nàng đã dùng lọ thuốc của phù thủy để biến thành người — nhưng ma thuật luôn đi kèm với cái giá phải trả: Nếu không thể tìm thấy tình yêu đích thực, nàng sẽ tan biến thành bọt biển mãi mãi. Giờ đây, 200 năm sau, Lara bất ngờ tỉnh giấc tại Hồ Biwa với một cơ hội cuối cùng để giành lấy sự sống và tình yêu.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 520, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"菱川花菜","avatar":"https://image.tmdb.org/t/p/w185/epCzuP9ZmBMonKK2Z6FOKoq2b7k.jpg"},{"name":"川石奈奈","avatar":"https://image.tmdb.org/t/p/w185/KB1AYyu0XV8DKVy7IPX1emqDJZ.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["再见，拉拉","Sayonara Lara","さよララ","SayoLara","Sayonara Rara","Прощай, Лара","さよならララ"]', '{"id":"295071","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/n2hpBQQaOckGzOGf78YA0UiJWkZ.png","backdrop_url":"https://image.tmdb.org/t/p/original/2ZiCNiuOiUGfAF0j73RI8DX1Z1N.jpg","poster_url":"https://image.tmdb.org/t/p/original/pCFmHauKa9BcxgjNZQXelYWa4Nj.jpg","aspect_ratio":4.575}', '{"id":"tt38049145","vote_average":null}', 
  1789378914786, '2026-09-14T12:58:33.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tam-biet-lara', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tam-biet-lara', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tam-biet-lara', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tam-biet-lara', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tam-biet-lara', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tam-biet-lara', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tam-biet-lara', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'tam-biet-lara';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tam-biet-lara', 'Tạm Biệt, Lara', 'Goodbye, Lara', 'tạm biệt, lara goodbye, lara 菱川花菜 川石奈奈', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'stuart-cuu-khong-noi-vu-tru-phan-1', 'Stuart Cứu Không Nổi Vũ Trụ (Phần 1)', 'Stuart Fails to Save the Universe (Season 1)', 'https://phimimg.com/uploads/movies/20260817/stuart-cuu-khong-noi-vu-tru-phan-1-thumb.webp', 'https://phimimg.com/uploads/movies/20260817/stuart-cuu-khong-noi-vu-tru-phan-1-poster.webp', '<p>Stuart Bloom — chủ một cửa hàng truyện tranh và vốn là nhân vật quen thuộc trong The Big Bang Theory — vô tình làm hỏng một thiết bị lượng tử do Sheldon và Leonard chế tạo. Sự cố khiến thực tại bị phá vỡ, tạo ra một thảm họa đa vũ trụ và đẩy các thế giới song song vào hỗn loạn.</p>', 
  'Tập 8', 10, 'series', 'ongoing', 267, 2026, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Kevin Sussman","avatar":"https://image.tmdb.org/t/p/w185/tLqrE9uz6GKoeoDC7LU7cE6oF2Q.jpg"},{"name":"Lauren Lapkus","avatar":"https://image.tmdb.org/t/p/w185/zevTufkY38eRvWPslh5c1azdhQN.jpg"},{"name":"Brian Posehn","avatar":"https://image.tmdb.org/t/p/w185/kg93LNpDQaRoosR4gVt7SsA3oL1.jpg"},{"name":"John Ross Bowie","avatar":"https://image.tmdb.org/t/p/w185/XAv1RilHZu7qiGGIOgikrLgHeD.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["SFTSTU","Stuart Fails to Save the Universe"]', '{"id":"287620","type":"tv","vote_average":9.1,"vote_count":104,"logo_url":"https://image.tmdb.org/t/p/original/xW9OE6KMDxModOcrCCTZwFPwJyA.png","backdrop_url":"https://image.tmdb.org/t/p/original/nW7oUFiJrIWwll4mZ8tYays7XRm.jpg","poster_url":"https://image.tmdb.org/t/p/original/txj8ujTZwGUjpCdhCsQBnTlh4aS.jpg","aspect_ratio":2.561}', '{"id":"tt27497393","vote_average":7}', 
  1789378914785, '2026-09-14T12:58:08.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('stuart-cuu-khong-noi-vu-tru-phan-1', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('stuart-cuu-khong-noi-vu-tru-phan-1', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('stuart-cuu-khong-noi-vu-tru-phan-1', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('stuart-cuu-khong-noi-vu-tru-phan-1', 'bo_au_my');
DELETE FROM movies_fts WHERE slug = 'stuart-cuu-khong-noi-vu-tru-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('stuart-cuu-khong-noi-vu-tru-phan-1', 'Stuart Cứu Không Nổi Vũ Trụ (Phần 1)', 'Stuart Fails to Save the Universe (Season 1)', 'stuart cứu không nổi vũ trụ (phần 1) stuart fails to save the universe (season 1) kevin sussman lauren lapkus brian posehn john ross bowie', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'sinh-dung-thoi-diem', 'Sinh Đúng Thời Điểm', 'In My Prime', 'https://phimimg.com/uploads/movies/20260904/sinh-dung-thoi-diem-thumb.webp', 'https://phimimg.com/uploads/movies/20260904/sinh-dung-thoi-diem-poster.webp', '<p>Sinh Phùng Kỳ Thời là bộ phim gia đình thời đại, được chuyển thể từ tiểu thuyết "Láng Giềng" của Hàn Thập Tam. Phim có sự tham gia diễn chính của Quan Tiểu Đồng (từng đóng "Người Trong Ngõ Nhỏ", "Năm Tháng Hữu Tình") và Vương Tử Kỳ (từng đóng "Bảng Thượng Giai Tế", "Ngự Tứ Tiểu Ngỗ Tác 2"), cùng sự tham gia đặc biệt của Lưu Lâm, Quách Đào và Quách Hiểu Đông. Đầu những năm 80, tại thị trấn Thanh Ngô có hai nhà họ Tề và nhà họ Tào với hoàn cảnh hoàn toàn khác biệt. Một ngày nọ, hai gia đình cùng lúc chào đón hai đứa trẻ là Tề Thời và Tào Tín. Tề Thời mắc bệnh bạch tạng, từ nhỏ đã nhận thức được sự "khác biệt" của bản thân nên cô uống nước tương, đội tóc giả, hy vọng bằng những cách đó có thể trở thành một người bình thường như bao người khác. Trong khi đó, Tào Tín từ nhỏ luôn là "con nhà người ta" trong lời khen của mọi bậc phụ huynh. Thế nhưng phía sau ánh hào quang ấy lại là những yêu cầu khắt khe và áp lực không ngừng từ người bố nghiêm khắc. Khi cô gái Tề Thời cá tính, dũng cảm và kiên cường gặp chàng trai Tào Tín ngoan ngoãn, ưu tú và kỷ luật, hai gia đình cũng dần trở nên gắn bó qua những năm tháng hàng xóm bên nhau.Thế nhưng sự việc "đổi con" tưởng như hoang đường lại tạo nên những câu chuyện đầy nước mắt, đồng thời mở ra cơ hội cho một "cuộc sống mới". Những đứa trẻ phải trải qua thử thách về tình thân, tình bạn và tình yêu. Những người trưởng thành cũng phải đối diện với những vấn đề nan giải về sự nghiệp, hôn nhân và gia đình. Giữa dòng chảy của thời đại, dù cuộc sống có nhiều lần vấp ngã và chông chênh, họ vẫn cùng nhau chắp vá, chữa lành, rèn luyện bản thân trên hành trình cuộc đời, từng bước tìm kiếm ý nghĩa cuộc sống và hạnh phúc thuộc về chính mình. Bộ phim sẽ được phát sóng trực tuyến trên nền tảng iQIYI Quốc tế (iQ.com).</p>', 
  'Tập 15', 28, 'series', 'ongoing', 345, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Quan Hiểu Đồng","avatar":"https://image.tmdb.org/t/p/w185/b48jZXCEzBLMHZoTuAHLMXayWqE.jpg"},{"name":"Vương Tử Kỳ","avatar":"https://image.tmdb.org/t/p/w185/wWhppGVSVEQLCSbZdRQIJSoeu9V.jpg"},{"name":"Lưu Lâm","avatar":"https://image.tmdb.org/t/p/w185/zTwp8XHRHwQHiko0vWYbLZzAKD3.jpg"},{"name":"Quách Đào","avatar":"https://image.tmdb.org/t/p/w185/5MZW82Bw5hif66xcBgwx9Lvxkdo.jpg"},{"name":"Quách Hiểu Đông","avatar":"https://image.tmdb.org/t/p/w185/8CqQFvETwz0FpJyDvKnIMBN3Obj.jpg"},{"name":"邹元清","avatar":"https://image.tmdb.org/t/p/w185/pA8nMQ3reTq376Oi2RIZ9Yr2QMn.jpg"},{"name":"Leng Jiyuan","avatar":"https://image.tmdb.org/t/p/w185/vR0fyowY42KYRv0VluPwTlRBqCy.jpg"},{"name":"黑泽","avatar":"https://image.tmdb.org/t/p/w185/jwnyFeHxu6QYsFv98u2nUyvpZhZ.jpg"},{"name":"Huo Qing","avatar":"https://image.tmdb.org/t/p/w185/ftF9OgkIeWIWTix6peR402KpQAo.jpg"}]', '[{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Sheng Feng Qi Shi","近邻","生逢其时"]', '{"id":"286686","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/7HXIhc3aRr1v7KmOrCulszXf3YP.jpg","poster_url":"https://image.tmdb.org/t/p/original/5fvUpmY1JJiOz1HNG4QnNmacNIc.jpg","aspect_ratio":null}', '{"id":"tt36218252","vote_average":null}', 
  1789378914784, '2026-09-14T12:57:43.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sinh-dung-thoi-diem', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sinh-dung-thoi-diem', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sinh-dung-thoi-diem', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'sinh-dung-thoi-diem';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('sinh-dung-thoi-diem', 'Sinh Đúng Thời Điểm', 'In My Prime', 'sinh đúng thời điểm in my prime quan hiểu đồng vương tử kỳ lưu lâm quách đào quách hiểu đông 邹元清 leng jiyuan 黑泽 huo qing', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'san-golf-tinh-yeu', 'Sân Golf Tình Yêu', 'Fairway of Love', 'https://phimimg.com/uploads/movies/20260904/san-golf-tinh-yeu-thumb.webp', 'https://phimimg.com/uploads/movies/20260904/san-golf-tinh-yeu-poster.webp', '<p>Cô con gái ông chủ sân golf mang trong mình giấc mơ thời trang bất ngờ được gọi về để tiếp quản việc kinh doanh của gia đình. Khởi đầu hoàn toàn mới này đã tạo cơ hội cho cô gặp gỡ một nữ vận động viên golf chuyên nghiệp. Sự xuất hiện của cô ấy đã âm thầm thay đổi cách cô nhìn nhận về cuộc đời, ước mơ và chính bản thân mình. Từ đó, một mối quan hệ ngoài dự liệu dần nảy nở từ sàn diễn thời trang đến sân golf.</p>', 
  'Tập 2', 8, 'series', 'ongoing', 113, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"กฤตยา เอี่ยมนพมณี","avatar":"https://image.tmdb.org/t/p/w185/uT5lwhqFH1Mi4hUyxQsqyx6GrTX.jpg"},{"name":"ธนัชชา เทพหัสดิน ณ อยุธยา","avatar":"https://image.tmdb.org/t/p/w185/gcMyzdzk8wqM1Wiyi6S917kHkXX.jpg"},{"name":"วริศยา บุณยทรรพ","avatar":"https://image.tmdb.org/t/p/w185/ysjJorZ33nbqgHtCCc1MV8UIaAe.jpg"},{"name":"รินรดา วิสุทธิอารีย์รักษ์","avatar":"https://image.tmdb.org/t/p/w185/53aGvNiaNHPIRCtc08idEEEdnPy.jpg"},{"name":"เพ็ญพักตร์ ศิริกุล","avatar":"https://image.tmdb.org/t/p/w185/vYlfd46BnGK1JYOgXrYsDQNCVrp.jpg"},{"name":"อัมรินทร์ นิติพน","avatar":"https://image.tmdb.org/t/p/w185/5XPYOUBFso7eBTFjJ5tfOxZlTZx.jpg"},{"name":"พาเมล่า เบาว์เด้น","avatar":"https://image.tmdb.org/t/p/w185/w5n3D97YStZqc2ZiqKnwCcWL9S7.jpg"},{"name":"รังสิต ศิรนานนท์","avatar":"https://image.tmdb.org/t/p/w185/twXEspnHGYxXdzGUDdHtFFTclxe.jpg"},{"name":"ธงชัย ทองกันทม","avatar":"https://image.tmdb.org/t/p/w185/gYQYDLZ0A3GaiIqiEx2rXxC8uet.jpg"},{"name":"ทะเล สงวนดีกุล","avatar":"https://image.tmdb.org/t/p/w185/yz1KoKtXYninJib9xaYkJLBoYde.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Rak Ok Rop","รักออกรอบ"]', '{"id":"325870","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":"https://image.tmdb.org/t/p/original/deHIDwrFpxqYylquqeN1ITalWwX.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914783, '2026-09-14T12:57:21.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('san-golf-tinh-yeu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('san-golf-tinh-yeu', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'san-golf-tinh-yeu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('san-golf-tinh-yeu', 'Sân Golf Tình Yêu', 'Fairway of Love', 'sân golf tình yêu fairway of love กฤตยา เอี่ยมนพมณี ธนัชชา เทพหัสดิน ณ อยุธยา วริศยา บุณยทรรพ รินรดา วิสุทธิอารีย์รักษ์ เพ็ญพักตร์ ศิริกุล อัมรินทร์ นิติพน พาเมล่า เบาว์เด้น รังสิต ศิรนานนท์ ธงชัย ทองกันทม ทะเล สงวนดีกุล', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nghia-trang-phan-2', 'Nghĩa Trang (Phần 2)', 'Graveyard (Season 2)', 'https://phimimg.com/uploads/movies/20260829/nghia-trang-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260829/nghia-trang-phan-2-poster.webp', '<p>Cảnh sát trưởng Önem chỉ huy một đơn vị điều tra đặc biệt chuyên giải quyết các vụ án khó liên quan đến bạo lực nhằm vào phụ nữ.</p>', 
  'Hoàn Tất (8/8)', 8, 'series', 'completed', 310, 2025, 
  'Vietsub', 'FHD', 'Thổ Nhĩ Kỳ', 0, 
  '[{"name":"Birce Akalay","avatar":"https://image.tmdb.org/t/p/w185/nCT33wbP9uRyS8m5nBLfmmz0CI4.jpg"},{"name":"Olgun Toker","avatar":"https://image.tmdb.org/t/p/w185/u0vv4CkvTTiPQ6KEHdnMVVfbbLw.jpg"},{"name":"Şehsuvar Aktaş","avatar":"https://image.tmdb.org/t/p/w185/quMwccM87vL26TQYhWioeCY9lQ2.jpg"},{"name":"Hakan Meriçliler","avatar":"https://image.tmdb.org/t/p/w185/q1VKAyMxgjs7DvxIGk1DJzthqlc.jpg"},{"name":"Sezgin Uzunbekiroğlu","avatar":"https://image.tmdb.org/t/p/w185/aFMyzF1CF6Z9LMFHFkHztGQta5H.jpg"},{"name":"Baran Güler","avatar":"https://image.tmdb.org/t/p/w185/wcW1kkBZluhsyzEBmY9siu35VfK.jpg"},{"name":"Elif Sevinç","avatar":"https://image.tmdb.org/t/p/w185/5iZk9HnGVZ1MFM78D7ndzmkKlyf.jpg"},{"name":"Arbil Tabur","avatar":"https://image.tmdb.org/t/p/w185/nj3gNNzzRt4GqaXHNofBWi32Dqz.jpg"},{"name":"Yeşim Çelebi","avatar":"https://image.tmdb.org/t/p/w185/7UAXKjizAACMPr4axXN0VDFimMA.jpg"}]', '[{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Graveyard","Mezarlık"]', '{"id":"204255","type":"tv","vote_average":7.2,"vote_count":34,"logo_url":"https://image.tmdb.org/t/p/original/iTyCqLsD43UqrAVIA5Y2Hg3wiO9.png","backdrop_url":"https://image.tmdb.org/t/p/original/g9Qn9LBk9fKKgxHtPFqkKnglsm8.jpg","poster_url":"https://image.tmdb.org/t/p/original/ye6n3GdSaiSy81hiIRvf3vjVv1N.jpg","aspect_ratio":3.932}', '{"id":"tt16420408","vote_average":7.7}', 
  1789378914782, '2026-09-14T12:57:02.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghia-trang-phan-2', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghia-trang-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghia-trang-phan-2', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghia-trang-phan-2', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghia-trang-phan-2', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'nghia-trang-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nghia-trang-phan-2', 'Nghĩa Trang (Phần 2)', 'Graveyard (Season 2)', 'nghĩa trang (phần 2) graveyard (season 2) birce akalay olgun toker şehsuvar aktaş hakan meriçliler sezgin uzunbekiroğlu baran güler elif sevinç arbil tabur yeşim çelebi', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'that-nghiep-chuyen-sinh-phan-3', 'Thất Nghiệp Chuyển Sinh (Phần 3)', 'Mushoku Tensei: Jobless Reincarnation (Season 3)', 'https://phimimg.com/upload/vod/20260705-1/a1a382342ca441845e6ed49d2ad1c5b3.jpg', 'https://phimimg.com/upload/vod/20260705-1/7a2f81eb1bff8b655f808758cbaeb2b8.jpg', '<p>Thất Nghiệp Chuyển Sinh kể về một cậu bé được tái sinh vào một thế giới kỳ diệu đầy phiêu lưu, một người đàn ông thất nghiệp và không mục đích trước đây quyết định sống cuộc sống mới của mình một cách trọn vẹn nhất…</p>', 
  'Tập 12', 24, 'hoathinh', 'ongoing', 763, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"内山夕実","avatar":"https://image.tmdb.org/t/p/w185/JvavoF3YOLCf4LHfl4XvYobANE.jpg"},{"name":"杉田智和","avatar":"https://image.tmdb.org/t/p/w185/cv5zuPZySNsHXu24pjKLYCRzJ2J.jpg"},{"name":"加隈亜衣","avatar":"https://image.tmdb.org/t/p/w185/o3tQSeeJAeafJNvQs2IKvpKY7av.jpg"},{"name":"茅野愛衣","avatar":"https://image.tmdb.org/t/p/w185/l8ywp387rfdAS7mOExe3cEZnsk0.jpg"},{"name":"小原好美","avatar":"https://image.tmdb.org/t/p/w185/3wjTzpJpBiTkLexdMmo9a3wfgRT.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["无职转生～在异世界认真地活下去～","无职转生","无职转生2","无职转生～到了异世界就拿出真本事","Mushoku Tensei: Nezaměstnaný dostává druhou šanci","Mushoku Tensei - Jobless Reincarnation","Mushoku Tensei Jobless Reincarnation","Mushoku Tensei, Jobless Reincarnation","Mushoku Tensei: Isekai Ittara Honki Dasu","Mushoku Tensei: Isekai Ittara Honki Dasu 2nd Season","無職転生Ⅱ ～異世界行ったら本気だす～","Mushoku Tensei II: Isekai Ittara Honki Dasu","Mushoku Tensei Isekai Ittara Honki Dasu","Mushoku Tensei: Isekai Ittara Honki Dasu - Eris no Goblin Toubatsu","Mushoku Tensei II: Isekai Ittara Honki Dasu - Shugo Jutsushi Fitz","Mushoku Tensei S3","무직 전생 ~이세계에 갔으면 최선을 다한다~","Reencarnación sin trabajo: lo intentaré seriamente si voy a otro mundo","Mushoku Tensei: Jobless Reincarnation Parte 2","Реинкарнация безработного","Mushoku Tensei: Перерождение безработного","Перерождение безработного","Реинкарнация безработного: История о приключениях в другом мире","無職轉生","無職轉生～到了異世界就拿出真本事","Реінкарнація безробітного: Історія про пригоди в іншому світі","Jobless Reincarnation: I Will Seriously Try If I Go to Another World","Mushoku Tensei","Mushoku Tensei: Jobless Reincarnation Part 2","Jobless Reincarnation","Mushoku Tensei: Jobless Reincarnation - Eris the Goblin Slayer","Mushoku Tensei: Jobless Reincarnation Season 2 - Guardian Fitz","無職転生 ～異世界行ったら本気だす～"]', '{"id":"94664","type":"tv","vote_average":8.5,"vote_count":1527,"logo_url":"https://image.tmdb.org/t/p/original/jyLhWg9ik5nu4N9vC9jaVpCxFVd.png","backdrop_url":"https://image.tmdb.org/t/p/original/j9fRIimor0AMFJR9kjZubXcABzZ.jpg","poster_url":"https://image.tmdb.org/t/p/original/6jKuJGfFir8svTfXecPfV6uwBii.jpg","aspect_ratio":4.725}', '{"id":"tt13293588","vote_average":8.2}', 
  1789378914781, '2026-09-14T12:56:26.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'that-nghiep-chuyen-sinh-phan-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('that-nghiep-chuyen-sinh-phan-3', 'Thất Nghiệp Chuyển Sinh (Phần 3)', 'Mushoku Tensei: Jobless Reincarnation (Season 3)', 'thất nghiệp chuyển sinh (phần 3) mushoku tensei: jobless reincarnation (season 3) 内山夕実 杉田智和 加隈亜衣 茅野愛衣 小原好美', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'Lớp Học Của Mèo Đen Và Phù Thủy (Hắc Miêu Và Lớp Học Phù Thủy)', 'The Classroom Of A Black Cat And A Witch', 'https://phimimg.com/upload/vod/20260413-1/93efc2d5ad3299c2dc12c08520de5acb.jpg', 'https://phimimg.com/upload/vod/20260413-1/9776326318785b666ce90ecfdc3982c1.jpg', '<p>Spica Virgo luôn khao khát được gia nhập học viện phép thuật, nhưng có một vấn đề lớn: Cô hoàn toàn không thể sử dụng ma thuật! Không có người hướng dẫn hay bất kỳ mối quan hệ nào, cơ hội của cô dường như bằng không — cho đến khi một chú mèo đen biết nói đầy bí ẩn xuất hiện. Vốn là một pháp sư quyền năng bị dính lời nguyền trong hình hài mèo, ông ta đồng ý dạy cô phép thuật để đổi lấy sự giúp đỡ nhằm phá giải phong ấn. Khi bản giao kèo bí mật bắt đầu, Spica chính thức bước chân vào một thế giới của ma thuật, những ẩn số và những bất ngờ ngoài sức tưởng tượng.</p>', 
  'Tập 23', 24, 'hoathinh', 'ongoing', 431, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"本渡楓","avatar":"https://image.tmdb.org/t/p/w185/11BcHnuJYrOZhIftgUiQqfm7TK6.jpg"},{"name":"島﨑信長","avatar":"https://image.tmdb.org/t/p/w185/qke5rZusHsjSlvB0NKlJ5dQF5D.jpg"},{"name":"和泉風花","avatar":"https://image.tmdb.org/t/p/w185/nTC0TuLp4Ek3b08DG9lhwVJHwlW.jpg"},{"name":"渡谷美帆","avatar":"https://image.tmdb.org/t/p/w185/dobBRCErP4iaMSfqu15Ka4kVvC3.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Kuroneko to Majo no Kyoushitsu","Kuroneko to Majo no Kyōshitsu","黒猫と魔女の教室"]', '{"id":"297557","type":"tv","vote_average":7.1,"vote_count":12,"logo_url":"https://image.tmdb.org/t/p/original/cUxaWTS2OGjFBjhJa2BmMLhTFuj.png","backdrop_url":"https://image.tmdb.org/t/p/original/n4fiVjU7F2Bfb4offhV8i8403hi.jpg","poster_url":"https://image.tmdb.org/t/p/original/og271wTh35G7fzXciNJIlen0rlC.jpg","aspect_ratio":5.182}', '{"id":"tt39123043","vote_average":null}', 
  1789378914780, '2026-09-14T12:49:41.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('lop-hoc-cua-meo-den-va-phu-thuy-hac-mieu-va-lop-hoc-phu-thuy', 'Lớp Học Của Mèo Đen Và Phù Thủy (Hắc Miêu Và Lớp Học Phù Thủy)', 'The Classroom Of A Black Cat And A Witch', 'lớp học của mèo đen và phù thủy (hắc miêu và lớp học phù thủy) the classroom of a black cat and a witch 本渡楓 島﨑信長 和泉風花 渡谷美帆', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'luc-luong-lanterns-phan-1', 'Lực lượng Lanterns (Phần 1)', 'Lanterns (Season 1)', 'https://phimimg.com/uploads/movies/20260817/luc-luong-lanterns-phan-1-thumb.webp', 'https://phimimg.com/uploads/movies/20260817/luc-luong-lanterns-phan-1-poster.webp', '<p>Xoay quanh tân binh John Stewart và huyền thoại Hal Jordan — hai cảnh sát liên ngân hà bị cuốn vào một bí ẩn đen tối ngay tại Trái Đất khi họ điều tra một vụ án mạng ở vùng trung tâm nước Mỹ.</p>', 
  'Tập 5', 8, 'series', 'ongoing', 702, 2026, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Kyle Chandler","avatar":"https://image.tmdb.org/t/p/w185/66n7XNj1dyYkzCBWR3Lq8Vz4PJ1.jpg"},{"name":"Aaron Pierre","avatar":"https://image.tmdb.org/t/p/w185/hNwZWdT2KxKj1YLbipvtUhNjfAp.jpg"},{"name":"Kelly Macdonald","avatar":"https://image.tmdb.org/t/p/w185/k0yVocTnTMWlNdaeOO7YRViCdhO.jpg"},{"name":"Garret Dillahunt","avatar":"https://image.tmdb.org/t/p/w185/7wHWTkIhre0j9L9CY2t5VVwg630.jpg"},{"name":"Poorna Jagannathan","avatar":"https://image.tmdb.org/t/p/w185/o2BQX1tAgo47GGvpBy1k4LQLRs6.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["לנטרנס","לנטרנים","Корпус Зеленых Фонарей","Корпус Зелёных Фонарей","Lanterns"]', '{"id":"95350","type":"tv","vote_average":6.9,"vote_count":18,"logo_url":"https://image.tmdb.org/t/p/original/2inz7NQnZeqsx5BhHXgtnPh2TOF.png","backdrop_url":"https://image.tmdb.org/t/p/original/6gqezQJ2mkm4jreWwLyOZy2Vf6i.jpg","poster_url":"https://image.tmdb.org/t/p/original/gpC7h43xPMEV3goYMQShfJbTtLq.jpg","aspect_ratio":2.671}', '{"id":"tt26545992","vote_average":null}', 
  1789378914779, '2026-09-14T12:49:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-luong-lanterns-phan-1', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-luong-lanterns-phan-1', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-luong-lanterns-phan-1', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-luong-lanterns-phan-1', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-luong-lanterns-phan-1', 'bo_au_my');
DELETE FROM movies_fts WHERE slug = 'luc-luong-lanterns-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('luc-luong-lanterns-phan-1', 'Lực lượng Lanterns (Phần 1)', 'Lanterns (Season 1)', 'lực lượng lanterns (phần 1) lanterns (season 1) kyle chandler aaron pierre kelly macdonald garret dillahunt poorna jagannathan', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'lan-huong-nhu-co', 'Lan Hương Như Cố', 'Against The Current', 'https://phimimg.com/uploads/movies/20260912/lan-huong-nhu-co-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/lan-huong-nhu-co-poster.webp', '<p>Thẩm Gia Lan, trưởng tôn nữ của Thẩm đại học sĩ, đã đính hôn với Lâm Cẩm Kỳ, trưởng tôn của Lại bộ Thượng thư Lâm gia. Nhưng triều đình bất ngờ nổi sóng gió, ông nội cô là Thẩm đại học sĩ bị kết tội mưu phản, khiến cả Thẩm gia rơi vào thảm họa diệt môn. Nhà họ Lâm liền hủy hôn với nhà họ Thẩm để tự bảo vệ mình, quay ra kết thông gia với nhà họ Triệu là ngự tiền mới bổ nhiệm. Vợ chồng Hứa Vạn Toàn là tôi tớ của nhà họ Lâm, từng được mẹ Thẩm Gia Lan cứu giúp, đã che giấu Gia Lan bằng cách để cô thế chỗ đứa con gái Hứa Lan Hương vừa mất vì bệnh. Từ đó Gia Lan mang thân phận Hứa Lan Hương, trở thành nha hoàn hạng ba ở Lâm phủ. Khó khăn bủa vây, Lan Hương vẫn không cúi đầu trước số phận, luôn nỗ lực tìm kiếm hạnh phúc cho cuộc sống của bản thân và gia đình, chống lại mọi bất công và áp bức. Cuối cùng, bằng lòng tốt và sự thông minh, Lan Hương đã vượt lên trên ràng buộc của địa vị giai cấp, chiếm được tình cảm của Lâm Cẩm Kỳ, đồng thời giành được sự tin tưởng và tôn trọng của toàn bộ nhà họ Lâm. Cô trở thành người nắm quyền nhà họ Lâm, tự nắm chắc vận mệnh trong tay, và rửa sạch oan khuất, đòi lại công bằng cho Thẩm gia.</p>', 
  'Tập 7', 47, 'series', 'ongoing', 130, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đàm Tùng Vận","avatar":"https://image.tmdb.org/t/p/w185/4HJFzfLjIAmqLakN29AQisFyjSU.jpg"},{"name":"Lưu Học Nghĩa","avatar":"https://image.tmdb.org/t/p/w185/zJG3K9Ey4EJp9p2wu88UchkgRG0.jpg"},{"name":"Lý Mộng","avatar":"https://image.tmdb.org/t/p/w185/uMOoic1tyHlzFFG4NdCsiDXZKE1.jpg"},{"name":"郑合惠子","avatar":"https://image.tmdb.org/t/p/w185/q9dHA42JLYCaC7JEe2KyRRcL2wJ.jpg"},{"name":"吴甜甜","avatar":"https://image.tmdb.org/t/p/w185/bbrLiXj6bXGnTJwgCxz53idEqA0.jpg"},{"name":"Diệp Thanh","avatar":"https://image.tmdb.org/t/p/w185/6EJNgDmKUXpdhBqKzvaWShFMxlS.jpg"},{"name":"蒲萄","avatar":"https://image.tmdb.org/t/p/w185/mFcRL5XtI8iOmGNkfAIIeP033HB.jpg"},{"name":"宋芳园","avatar":"https://image.tmdb.org/t/p/w185/qKlBjc5ufP3Ds0iAr6CoTUPAPUC.jpg"},{"name":"Lưu Giai Tỉ","avatar":"https://image.tmdb.org/t/p/w185/7xQ9FR3EBmtLDsdAVvvl9MZ6ZnW.jpg"},{"name":"Li Jiaxin","avatar":"https://image.tmdb.org/t/p/w185/bpafw2iqrow8sMu1QVePOJd3Hs8.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["香气长传","lan xiang ru gu","兰香缘","Against The Current","兰香如故"]', '{"id":"282326","type":"tv","vote_average":9,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/rQZBBKsTg0Ztzofr5lFmNZvli9t.png","backdrop_url":"https://image.tmdb.org/t/p/original/mZSewqVlY4F2F2Axm7hiG6KBOBp.jpg","poster_url":"https://image.tmdb.org/t/p/original/euBlF64efQmsl2y54LeNmLQPNob.jpg","aspect_ratio":2.708}', '{"id":"tt32500958","vote_average":null}', 
  1789378914778, '2026-09-14T12:48:58.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lan-huong-nhu-co', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lan-huong-nhu-co', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lan-huong-nhu-co', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lan-huong-nhu-co', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lan-huong-nhu-co', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'lan-huong-nhu-co';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('lan-huong-nhu-co', 'Lan Hương Như Cố', 'Against The Current', 'lan hương như cố against the current đàm tùng vận lưu học nghĩa lý mộng 郑合惠子 吴甜甜 diệp thanh 蒲萄 宋芳园 lưu giai tỉ li jiaxin', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ushiro-no-shoumen-kamui-san', 'Ushiro no Shoumen Kamui-san', 'KAMUI: He''s Behind You', 'https://phimimg.com/uploads/movies/20260829/ushiro-no-shoumen-kamui-san-thumb.webp', 'https://phimimg.com/uploads/movies/20260829/ushiro-no-shoumen-kamui-san-poster.webp', '<p>Shizuka là một nữ sinh trung học bình thường nhưng lại có khả năng nhìn thấy ma. Vì có cơ địa đặc biệt hay thu hút các hồn ma, cô làm trợ lý cho Kamui – một nhà ngoại cảm nổi tiếng. Kamui rất tự hào về năng lực ngoại cảm thượng thừa của mình, nhưng cách anh trừ tà lại vô cùng khác thường!</p>', 
  'Tập 4', 12, 'hoathinh', 'ongoing', 153, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"杉田智和","avatar":"https://image.tmdb.org/t/p/w185/cv5zuPZySNsHXu24pjKLYCRzJ2J.jpg"},{"name":"碧乃梨心","avatar":"https://image.tmdb.org/t/p/w185/f8epNfLisB6cBDwfOaoMkj10RFP.jpg"},{"name":"市道真央","avatar":"https://image.tmdb.org/t/p/w185/a3cflYtrlFK0LXfWODgLDO7E7CP.jpg"},{"name":"相坂優歌","avatar":"https://image.tmdb.org/t/p/w185/2W6op6w1H0UktVJtMgir0b4XbvI.jpg"},{"name":"井澤詩織","avatar":"https://image.tmdb.org/t/p/w185/f9V38OeDvRGevWuKc4dN6LB62TH.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["正后方的神威","从后面来的神威先生","Ushiro no Shoumen Kamui-san","從後面來的神威先生","KAMUI: He’s Behind You","うしろの正面カムイさん"]', '{"id":"325052","type":"tv","vote_average":9,"vote_count":2,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/xpTBqtyMY6YZuWuvE3yMQ2G68Fq.jpg","poster_url":"https://image.tmdb.org/t/p/original/eB3kUvHD5WLzkEHJNM32v2O8PCY.jpg","aspect_ratio":null}', '{"id":"tt42969298","vote_average":null}', 
  1789378914777, '2026-09-14T12:48:31.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ushiro-no-shoumen-kamui-san', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ushiro-no-shoumen-kamui-san', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ushiro-no-shoumen-kamui-san', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ushiro-no-shoumen-kamui-san', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ushiro-no-shoumen-kamui-san', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ushiro-no-shoumen-kamui-san', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'ushiro-no-shoumen-kamui-san';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ushiro-no-shoumen-kamui-san', 'Ushiro no Shoumen Kamui-san', 'KAMUI: He''s Behind You', 'ushiro no shoumen kamui-san kamui: he''s behind you 杉田智和 碧乃梨心 市道真央 相坂優歌 井澤詩織', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'kaiju-no-8-ngay-di-lam-cua-narumi', 'Kaiju No. 8 "Ngày đi làm của Narumi"', 'Kaiju No. 8 Original Short Anime "Narumi''s Week at Work"', 'null', 'https://phimimg.com/uploads/movies/20260907/kaiju-no-8-ngay-di-lam-cua-narumi-poster.webp', '<p>Tập trung vào cuộc sống ngày thường hài hước và có phần "bất ổn" của Gen Narumi. Dù được mệnh danh là "Chiến binh chống Kaiju mạnh nhất Nhật Bản" khi ra chiến trường, ngoài đời Narumi lại là một kẻ vô cùng kiêu ngạo, nghiện game online, thường xuyên trốn họp và lười biếng làm giấy tờ. Bộ phim sẽ mang đến góc nhìn giải trí về một tuần làm việc đầy rẫy những rắc rối đời thường và những pha "gậy ông đập lưng ông" mà vị đội trưởng này gặp phải.</p>', 
  'Tập 2', 4, 'series', 'ongoing', 70, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"}]', 
  '["怪獣８号 オリジナルショートアニメ「鳴海の平日」"]', '{"id":"334201","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/udys01QhoKtfBdcvT60k96QrPtS.png","backdrop_url":"https://image.tmdb.org/t/p/original/swtTU46Qt0Zw2OTnwkhqO4dcuc2.jpg","poster_url":"https://image.tmdb.org/t/p/original/lSst7PjNuEYcZGzPMV7A6rkEqnZ.jpg","aspect_ratio":3.991}', '{"id":null,"vote_average":null}', 
  1789378914776, '2026-09-14T12:48:02.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('kaiju-no-8-ngay-di-lam-cua-narumi', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('kaiju-no-8-ngay-di-lam-cua-narumi', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('kaiju-no-8-ngay-di-lam-cua-narumi', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'kaiju-no-8-ngay-di-lam-cua-narumi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('kaiju-no-8-ngay-di-lam-cua-narumi', 'Kaiju No. 8 "Ngày đi làm của Narumi"', 'Kaiju No. 8 Original Short Anime "Narumi''s Week at Work"', 'kaiju no. 8 "ngày đi làm của narumi" kaiju no. 8 original short anime "narumi''s week at work" đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'cuoc-doi-phu-thuy-o-mong-co', 'Cuộc Đời Phù Thủy Ở Mông Cổ', 'Jaadugar: A Witch In Mongolia', 'https://phimimg.com/uploads/movies/20260708/cuoc-doi-phu-thuy-o-mong-co-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/cuoc-doi-phu-thuy-o-mong-co-poster.webp', '<p>Sau khi mất đi người mẹ và cả quê hương, sự tuyệt vọng của Sitara đã biến thành quyết tâm sắt đá nhờ vào sức mạnh của tri thức. Những cơ hội mới mở ra khi cô được một gia đình học giả nhận nuôi và giúp cô tiếp cận nền giáo dục sâu rộng hơn. Trong khi đó, Đế quốc Mông Cổ của Thành Cát Tư Hãn liên tục chinh phạt hết quốc gia này đến quốc gia khác, dần tiến sát đến ngôi nhà mới của Sitara. Sau khi bị Tứ Hoàng tử của đế quốc bắt làm tù binh, ngọn lửa thù hận và khao khát báo thù trong lòng cô chính thức được thắp sáng.</p>', 
  'Tập 12', 13, 'hoathinh', 'ongoing', 254, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"関根明良","avatar":"https://image.tmdb.org/t/p/w185/czYoPzAEK1gI7RxRiPyDSFYRm5x.jpg"},{"name":"小清水亜美","avatar":"https://image.tmdb.org/t/p/w185/e5sU0stGjTMtFoj0jjHH7OFUqYC.jpg"},{"name":"桑島法子","avatar":"https://image.tmdb.org/t/p/w185/uZSmoh5jSdLwmkLaCnC3Xju6TTN.jpg"},{"name":"齋藤潤","avatar":"https://image.tmdb.org/t/p/w185/tYbBtEvzm3dqwdxS0h61TVwqAfN.jpg"},{"name":"下野紘","avatar":"https://image.tmdb.org/t/p/w185/yrSDcgFefHtWkFmLnTrcw2t0MV.jpg"},{"name":"鈴木崚汰","avatar":"https://image.tmdb.org/t/p/w185/4Xq18mQttuW2yfRCflnWoU7UqQ5.jpg"},{"name":"Irino Miyu","avatar":"https://image.tmdb.org/t/p/w185/8qEEhHUObNvGQr4e6eqLu5z4qTz.jpg"},{"name":"浪川大輔","avatar":"https://image.tmdb.org/t/p/w185/iw0X8oDutxaBAri3Ifga8nhdUJK.jpg"},{"name":"野島健児","avatar":"https://image.tmdb.org/t/p/w185/nRSPVjDkdpnrQabnK5mENH118zN.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Uma Bruxa na Mongólia","Tenmaku no Jādūgar","Tenmaku no Jaadugar","Jaadugar: Moğolistan''da Bir Cadı","A Witch''s Life in Mongol","天幕のジャードゥーガル"]', '{"id":"288971","type":"tv","vote_average":9.5,"vote_count":4,"logo_url":"https://image.tmdb.org/t/p/original/tukIgcH1i9r0xRxXtlVW2xY94Vj.png","backdrop_url":"https://image.tmdb.org/t/p/original/6AoGMlKo2DUsYWiF5zzjdRERCVi.jpg","poster_url":"https://image.tmdb.org/t/p/original/723NT7KY9xBFLYNNBaEEREbLaPC.jpg","aspect_ratio":1.852}', '{"id":"tt39281887","vote_average":null}', 
  1789378914775, '2026-09-14T12:46:37.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-doi-phu-thuy-o-mong-co', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-doi-phu-thuy-o-mong-co', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-doi-phu-thuy-o-mong-co', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-doi-phu-thuy-o-mong-co', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-doi-phu-thuy-o-mong-co', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-doi-phu-thuy-o-mong-co', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'cuoc-doi-phu-thuy-o-mong-co';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('cuoc-doi-phu-thuy-o-mong-co', 'Cuộc Đời Phù Thủy Ở Mông Cổ', 'Jaadugar: A Witch In Mongolia', 'cuộc đời phù thủy ở mông cổ jaadugar: a witch in mongolia 関根明良 小清水亜美 桑島法子 齋藤潤 下野紘 鈴木崚汰 irino miyu 浪川大輔 野島健児', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hanh-trinh-tap-duot-chia-tay', 'Hành Trình Tập Dượt Chia Tay', 'See You Later... Maybe', 'https://phimimg.com/uploads/movies/20260902/hanh-trinh-tap-duot-chia-tay-thumb.webp', 'https://phimimg.com/uploads/movies/20260902/hanh-trinh-tap-duot-chia-tay-poster.webp', '<p>Nhà văn hết thời Phương Hạo Văn bị thất thế sau khi từ chối nữ đại gia. Sau một tai nạn, anh bị quản lý cũ xúi giả vờ tự sát livestream để "dùng cái chết câu view" bán sách. Kế hoạch lừa đảo vỡ lở khi một fan cuồng xuất hiện, kéo cả hai vào hành trình dở khóc dở cười "muốn sống không xong, muốn chết không được".</p>', 
  'Tập 14', 15, 'series', 'ongoing', 258, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"贾冰","avatar":"https://image.tmdb.org/t/p/w185/pum0e3d2ZVq9XZyNohZSXt46bkH.jpg"},{"name":"Điền Gia Thụy","avatar":"https://image.tmdb.org/t/p/w185/iEAg620mH9HlbhzIo7o2GI2yiUu.jpg"},{"name":"Khổng Lệnh Mỹ","avatar":"https://image.tmdb.org/t/p/w185/7FggOMFa88H7q8ovnTj7iBn73cQ.jpg"},{"name":"包文婧","avatar":"https://image.tmdb.org/t/p/w185/bReh8ArX3DOSSEoIVbUoGait2lL.jpg"},{"name":"闫佩伦","avatar":"https://image.tmdb.org/t/p/w185/djiIoMHzXKaSZ7wcAzcN50HJs8s.jpg"},{"name":"杨皓宇","avatar":"https://image.tmdb.org/t/p/w185/ckiQnxLBzpHEl1hDpkMQcwZEySN.jpg"},{"name":"Yang Yuguang","avatar":"https://image.tmdb.org/t/p/w185/xr9z4McaA20ijyfivY3HGCHqxxl.jpg"},{"name":"李萍","avatar":"https://image.tmdb.org/t/p/w185/8qg3cAPKf9RqK7gJIfCmT8RJdJn.jpg"},{"name":"Lin Jun Yi","avatar":"https://image.tmdb.org/t/p/w185/vG7vOJmbaFB9McMxEjLIET1A1g5.jpg"},{"name":"土豆","avatar":"https://image.tmdb.org/t/p/w185/7Jjy59rTBrrTTsulGRAldIGarLY.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["囧途系列剧集","囧徒之疯狂的钥匙","囧徒之猎爱计划","囧徒之通天塔","囧徒","Lost in Road","LOST IN ROAD:CRAZY KEY","Lost In Road Crazy Key","囧徒之预演告别"]', '{"id":"286322","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/9rWY63NTKYDipn019ESiUDkQiT5.jpg","poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914774, '2026-09-14T12:46:13.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanh-trinh-tap-duot-chia-tay', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanh-trinh-tap-duot-chia-tay', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanh-trinh-tap-duot-chia-tay', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanh-trinh-tap-duot-chia-tay', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'hanh-trinh-tap-duot-chia-tay';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hanh-trinh-tap-duot-chia-tay', 'Hành Trình Tập Dượt Chia Tay', 'See You Later... Maybe', 'hành trình tập dượt chia tay see you later... maybe 贾冰 điền gia thụy khổng lệnh mỹ 包文婧 闫佩伦 杨皓宇 yang yuguang 李萍 lin jun yi 土豆', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'Hanaori-san wa Tensei shitemo Kenka ga Shitai', 'Hanaori-san Still Wants to Fight in the Next Life', 'https://phimimg.com/uploads/movies/20260715/hanaori-san-wa-tensei-shitemo-kenka-ga-shitai-thumb.webp', 'https://phimimg.com/uploads/movies/20260715/hanaori-san-wa-tensei-shitemo-kenka-ga-shitai-poster.webp', '<p>Kiếp trước là Ma Vương và Anh Hùng đối đầu sinh tử, nay cả hai lại tái sinh đến thế giới hiện đại: chàng biến thành một thanh niên NEET lười biếng, còn nàng trở thành một nữ sinh trung học năng động. Không chịu buông bỏ ân oán cũ, cô gái tìm đến tận nhà đối thủ để tiếp tục "gây gổ", nhưng mọi chuyện bắt đầu chệch hướng khi chàng trai vô tình trở thành giáo viên tại trường cô học và cả hai dần nảy sinh tình cảm, chuyển từ kẻ thù truyền kiếp thành một cặp đôi hẹn hò đầy hài hước.</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 394, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"関根明良","avatar":"https://image.tmdb.org/t/p/w185/czYoPzAEK1gI7RxRiPyDSFYRm5x.jpg"},{"name":"福山潤","avatar":"https://image.tmdb.org/t/p/w185/eT9eloyIaIkTvTqMmpcsAleP2hM.jpg"},{"name":"星希成奏","avatar":"https://image.tmdb.org/t/p/w185/Ajo0KjBdtYPH6FLjxeexHEStk3T.jpg"},{"name":"上田瞳","avatar":"https://image.tmdb.org/t/p/w185/lo05wUhY5KKJiVQYj8PeQx2dHnz.jpg"},{"name":"徳井青空","avatar":"https://image.tmdb.org/t/p/w185/sd14FAVQmJSfnSgIml6OH8new5a.jpg"},{"name":"稗田寧々","avatar":"https://image.tmdb.org/t/p/w185/kg2cNTQ83bDadVBPJSrY2quRQpT.jpg"},{"name":"高橋李依","avatar":"https://image.tmdb.org/t/p/w185/aeB7z0cBTASdjKOjQriBAO6hYq4.jpg"},{"name":"五十嵐裕美","avatar":"https://image.tmdb.org/t/p/w185/rVQfafFKUWZMNxqGYlHc2EPyNhc.jpg"},{"name":"伊藤彩沙","avatar":"https://image.tmdb.org/t/p/w185/2PrCCbr8wI9lZHtUtyy2SJszua1.jpg"},{"name":"日笠陽子","avatar":"https://image.tmdb.org/t/p/w185/mP3bj0s1gqJ6tCKFLhu4b1CkJj7.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["花织即使是转生也想打架","Hanaori-san wa Tensei Shite mo Kenka ga Shitai","Orehaji","Hanaori san Wants to Have a Fight Even If She Reincarnates","Hanaori-san wa Tensei shitemo Kenka ga Shitai","花織さんは転生しても喧嘩がしたい"]', '{"id":"312266","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/5czzZqSKU1qTxxtOhQPKJRV8iTN.png","backdrop_url":"https://image.tmdb.org/t/p/original/rGpovV6h1XSyksXyHRn0zzQNW8V.jpg","poster_url":"https://image.tmdb.org/t/p/original/h2JZRLaFXWWhh61vAjqgHXeiZd8.jpg","aspect_ratio":2.386}', '{"id":"tt41276828","vote_average":null}', 
  1789378914773, '2026-09-14T12:45:51.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'hanaori-san-wa-tensei-shitemo-kenka-ga-shitai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hanaori-san-wa-tensei-shitemo-kenka-ga-shitai', 'Hanaori-san wa Tensei shitemo Kenka ga Shitai', 'Hanaori-san Still Wants to Fight in the Next Life', 'hanaori-san wa tensei shitemo kenka ga shitai hanaori-san still wants to fight in the next life 関根明良 福山潤 星希成奏 上田瞳 徳井青空 稗田寧々 高橋李依 五十嵐裕美 伊藤彩沙 日笠陽子', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'flaming-dodgeball-girl-danko', 'Flaming Dodgeball Girl Danko', 'Flaming Dodgeball Girl Danko', 'https://phimimg.com/uploads/movies/20260711/flaming-dodgeball-girl-danko-thumb.webp', 'https://phimimg.com/uploads/movies/20260711/flaming-dodgeball-girl-danko-poster.webp', '<p>Bộ phim lấy bối cảnh ở thời kỳ Reiwa hiện đại. Nhân vật chính là Ichigeki Danko, con gái của huyền thoại bóng né quá cố Danpei Ichigeki. Thừa hưởng tinh thần rực lửa cùng kỹ năng ném bóng thiên bẩm từ cha mình, Danko quyết tâm vực dậy câu lạc bộ bóng né đã bị giải thể của trường học. Cô cùng những người bạn thời thơ ấu phải nỗ lực chiêu mộ thành viên mới và đối đầu với những đối thủ định mệnh trong một kỷ nguyên mà giới trẻ có phần thờ ơ với bộ môn thể thao đối kháng mạnh mẽ này.</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 359, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"中山まなか","avatar":"https://image.tmdb.org/t/p/w185/gQXFKGnG4jz6855kY15jbQATaTT.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Hono no Tokyujo: Dodge Danko","Honoo no Toukyuujo: Dodge Danko","Honō no Tōkyūjo: Dodge Danko","炎の闘球女 ドッジ弾子"]', '{"id":"295840","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/vPvMfrvqIti7SBfHBRmM7zywnOL.png","backdrop_url":"https://image.tmdb.org/t/p/original/xjDKg2sVGJ8gjmp7dIIqWL2iM8I.jpg","poster_url":"https://image.tmdb.org/t/p/original/4xVWpYkfnVnfFtmqIcdLYGEhC1X.jpg","aspect_ratio":3.251}', '{"id":"tt37562288","vote_average":null}', 
  1789378914772, '2026-09-14T12:45:27.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('flaming-dodgeball-girl-danko', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('flaming-dodgeball-girl-danko', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('flaming-dodgeball-girl-danko', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('flaming-dodgeball-girl-danko', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('flaming-dodgeball-girl-danko', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('flaming-dodgeball-girl-danko', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'flaming-dodgeball-girl-danko';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('flaming-dodgeball-girl-danko', 'Flaming Dodgeball Girl Danko', 'Flaming Dodgeball Girl Danko', 'flaming dodgeball girl danko flaming dodgeball girl danko 中山まなか', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'gioi-mon-chi-ha', 'Giới Môn Chi Hạ', 'Under The Gate', 'https://phimimg.com/uploads/movies/20260807/gioi-mon-chi-ha-thumb.webp', 'https://phimimg.com/uploads/movies/20260807/gioi-mon-chi-ha-poster.webp', '<p>Hãy cùng đón xem hành trình thiếu niên chiêu hồn đối đầu trực diện với tà phái Cửu Cúc, liều mình bảo vệ chúng sinh Lam Hải trước nguy cơ sụp đổ ranh giới hai giới. Trong thế giới này, ý thức của muôn loài đều được cấu tạo từ các hạt vi mô. Thiếu niên Lâm Dã ở đảo Lam Hải bẩm sinh sở hữu thể chất "chiêu hồn" đặc biệt, được giới "Du Hồn" coi là "khách sạn di động", suốt ngày bị linh hồn nhập xác gây rối và phải bỏ chạy thục mạng. Sau khi tình cờ gặp gỡ Trần Quả — cô gái mang dị năng có khả năng thu phục "Du Hồn", Lâm Dã bước chân vào tổ chức siêu nhiên Học viện Hoa Tịnh, từ đó cuốn vào cuộc tranh đấu kéo dài hàng thế kỷ với tà phái "Cửu Cúc Nhất Phái" đến từ Đông Doanh. Trong hành trình này, cậu liên tục đối mặt với những âm mưu ly gián, hãm hại, và sự sụp đổ niềm tin. Cho đến khi cánh cổng ranh giới sắp mở ra, toàn thành phố rơi vào cảnh nguy vong, Lâm Dã đã dùng chấp niệm của một người bình thường để quyết đấu đến cùng với bản sao hoàn hảo của chính mình, dốc hết sức tàn bảo vệ Lam Hải. Tuy nhiên, ngay khi đại chiến khép lại và anh hùng ngã xuống, một âm mưu mới của Cửu Cúc Nhất Phái lại âm thầm lan rộng nơi sâu thẳm của dãy Côn Lôn...</p>', 
  'Tập 14', 25, 'hoathinh', 'ongoing', 302, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["界门之下"]', '{"id":"330094","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914771, '2026-09-14T12:45:04.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gioi-mon-chi-ha', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'gioi-mon-chi-ha';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('gioi-mon-chi-ha', 'Giới Môn Chi Hạ', 'Under The Gate', 'giới môn chi hạ under the gate đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'giao-trinh-tinh-yeu-bat-buoc', 'Giáo Trình Tình Yêu Bắt Buộc', 'LOVEx3', 'https://phimimg.com/uploads/movies/20260818/giao-trinh-tinh-yeu-bat-buoc-thumb.webp', 'https://phimimg.com/uploads/movies/20260818/giao-trinh-tinh-yeu-bat-buoc-poster.webp', '<p>Sáu học sinh cùng nhau trải qua những tình cảm đơn phương thầm kín, những lời hứa hẹn năm xưa và những tổn thương tình cảm bất ngờ khi họ bị buộc phải tham gia vào một khóa học bắt buộc của nhà trường về chủ đề tình yêu.</p>', 
  'Tập 5', 15, 'series', 'ongoing', 176, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"กฤษฎิ์ งามธนกิจจา","avatar":"https://image.tmdb.org/t/p/w185/wf6NePOHGIKiO2iM6wJdWNJXKxL.jpg"},{"name":"ปองภพ สำราญชัยกร","avatar":"https://image.tmdb.org/t/p/w185/ko2AXEW2h4CM8QzQ2ss8txrgAfa.jpg"},{"name":"พิชิตชัย ลิมปคุปตถาวร","avatar":"https://image.tmdb.org/t/p/w185/uY3FNSRS2oCq8QmNGimYjzmCykF.jpg"},{"name":"สหรัถ ศิริธรรมขันติ","avatar":"https://image.tmdb.org/t/p/w185/4WKfqkLt1bPlolfyIoBjNIbAisa.jpg"},{"name":"ดีพร้อม สุนทรสิทธิโสภา","avatar":"https://image.tmdb.org/t/p/w185/5MyYBoTWeBgu4i3e1LgyndG8Opq.jpg"},{"name":"ดิถีโชค วงษ์บัณฑิตเจริญ","avatar":"https://image.tmdb.org/t/p/w185/7IjPFp1IrpGwLlRLT0MhacOqGv4.jpg"},{"name":"วชิรวิทย์ อุ้ยตยะกุล","avatar":"https://image.tmdb.org/t/p/w185/whdHpVTTUnJ3zSITJDIrNpZUdSh.jpg"},{"name":"วีรภัทร ยั่งยืนสกุลเดช","avatar":"https://image.tmdb.org/t/p/w185/2KseHB8pRFv9PtSQCCQSBk33ECP.jpg"},{"name":"คมธรรศ พิเชฐไพศาล","avatar":"https://image.tmdb.org/t/p/w185/cDDtndPCyB1CPVwzyi5YRlXK81e.jpg"},{"name":"ขวัญภูมิ เสริมศิริมงคล","avatar":"https://image.tmdb.org/t/p/w185/tbdNajPku60dRYOktbTG6tOzBit.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["รักร้ายของผู้ชายคูลๆ","เขาหมุนรอบความรัก","พารักศึกษา","Love ยกกำลัง3","Loveยกกำลัง3","LOVEx3 หลักสูตร (รัก) ภาคบังคับ","Love Yok Kamlang 3 Lak Sut (Rak) Phak Bangkhap","Love ยกกำลัง 3 หลักสูตร (รัก) ภาคบังคับ","Love Student","He Revolves Around Love","The Bad Boy’s Love","LOVEx3","Love3","Love to the Power of 3: Compulsory (Love) Curriculum","Love×3 The Mandatory Love Course","Love³","LOVEx3 หลักสูตรรักภาคบังคับ"]', '{"id":"299158","type":"tv","vote_average":9,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/izLzqhbQ9HS15GTU02MWhCCidRR.png","backdrop_url":"https://image.tmdb.org/t/p/original/ivOu9efPUWfdG9nctdevqEhO5V9.jpg","poster_url":"https://image.tmdb.org/t/p/original/cTbYyfSllAHAqi4j59ap0sTf0rU.jpg","aspect_ratio":2.824}', '{"id":"tt39127238","vote_average":null}', 
  1789378914770, '2026-09-14T12:44:43.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-trinh-tinh-yeu-bat-buoc', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-trinh-tinh-yeu-bat-buoc', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-trinh-tinh-yeu-bat-buoc', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-trinh-tinh-yeu-bat-buoc', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'giao-trinh-tinh-yeu-bat-buoc';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('giao-trinh-tinh-yeu-bat-buoc', 'Giáo Trình Tình Yêu Bắt Buộc', 'LOVEx3', 'giáo trình tình yêu bắt buộc lovex3 กฤษฎิ์ งามธนกิจจา ปองภพ สำราญชัยกร พิชิตชัย ลิมปคุปตถาวร สหรัถ ศิริธรรมขันติ ดีพร้อม สุนทรสิทธิโสภา ดิถีโชค วงษ์บัณฑิตเจริญ วชิรวิทย์ อุ้ยตยะกุล วีรภัทร ยั่งยืนสกุลเดช คมธรรศ พิเชฐไพศาล ขวัญภูมิ เสริมศิริมงคล', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'giao-phong', 'Giao Phong', 'The Long Watch', 'https://phimimg.com/uploads/movies/20260908/giao-phong-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/giao-phong-poster.webp', '<p>Một vụ án rò rỉ thông tin mật quy mô lớn vào thời điểm chuyển giao thế kỷ đã làm rúng động tình hình hai bên eo biển, đồng thời che giấu một cuộc đọ sức nảy lửa trên chiến tuyến thầm lặng giữa thế lực nước ngoài và lực lượng an ninh quốc gia. Vào cuối những năm 1990, tại Cục An ninh Quốc gia thành phố Mẫn Châu, hai thầy trò có tính cách hoàn toàn trái ngược nhau đã kề vai sát cánh chiến đấu vì sứ mệnh và niềm tin chung do sự an bài ngẫu nhiên của số phận. Họ cùng nhau đập tan hàng loạt âm mưu nguy hiểm, đồng thời vướng vào những ân oán giằng xé kéo dài suốt 20 năm với đối thủ. Khi thời gian trôi qua, làn sóng biến động của thế kỷ mới ập đến khiến cục diện phòng thủ - tấn công an ninh quốc gia thay đổi, nhưng cuộc chiến trong bóng tối vẫn không hề dừng lại. Trải qua muôn vàn thử thách nhân tính, mối quan hệ số phận giữa ba người họ dần thay đổi lặng lẽ theo thời gian qua từng lựa chọn khác nhau.</p>', 
  'Tập 17', 40, 'series', 'ongoing', 196, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Vương Khải","avatar":"https://image.tmdb.org/t/p/w185/35Lm6dPSN5qygFC5PrDbjqjWJdG.jpg"},{"name":"Bành Dục Sướng","avatar":"https://image.tmdb.org/t/p/w185/eeU2VRMJQIeX6Z4dvbVndmDlCVt.jpg"},{"name":"Âu Hào","avatar":"https://image.tmdb.org/t/p/w185/nHokLSjlWJB3Gwt3zBXUuBPvR77.jpg"},{"name":"Chu Dực Nhiên","avatar":"https://image.tmdb.org/t/p/w185/3T1oJq6ODZahHvtqDxfzzIDpdSo.jpg"},{"name":"Tổ Phong","avatar":"https://image.tmdb.org/t/p/w185/2nG537XCNrvgTPhTYre7w0PWmT3.jpg"},{"name":"Qiu Tian","avatar":"https://image.tmdb.org/t/p/w185/6fcVvAae6VCZKTMRrzPS1uCCZoY.jpg"},{"name":"Ngô Khải Hoa","avatar":"https://image.tmdb.org/t/p/w185/25J99NS8A9VyWqbWnh2RNtLKbXJ.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"}]', 
  '["交锋"]', '{"id":"294486","type":"tv","vote_average":9,"vote_count":1,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/lYDwHYOR8PROQfSJGZ8LqvwUVcW.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt34987156","vote_average":null}', 
  1789378914769, '2026-09-14T12:44:26.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-phong', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-phong', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-phong', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-phong', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('giao-phong', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'giao-phong';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('giao-phong', 'Giao Phong', 'The Long Watch', 'giao phong the long watch vương khải bành dục sướng âu hào chu dực nhiên tổ phong qiu tian ngô khải hoa', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dao-hai-tac', 'Đảo Hải Tặc', 'One Piece', 'https://phimimg.com/upload/vod/20240310-1/d61250d0c1670917fd783a1b48cbb29c.jpg', 'https://phimimg.com/upload/vod/20240310-1/31e6c244a0673838a46732d3b4f0b190.jpg', '<p>Phim Đảo Hải Tặc - One Piece là chuyện về cậu bé Monkey D. Luffy do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết bơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để thành một băng hải tặc, biệt hiệu Hải tặc Mũ Rơm.

Khi đó của phiêu lưu tìm kiếm kho báu One Piece bắt đầu. Trong cuộc phiêu lưu tìm kiếm One Piece, băng Hải tặc mũ rơm phải chiến đấu với nhiều băng hải tặc xấu khác cũng muốn độc chiếm One Piece và Hải quân của Chính phủ muốn diệt trừ hải tặc. Băng Hải tặc Mũ Rơm phải trải qua biết bao nhiêu khó khăn, không lùi bước với ước mơ &quot;Trở thành Vua Hải Tặc và chiếm được kho báu One Piece&quot;.</p>', 
  'Tập 1178', 1190, 'hoathinh', 'ongoing', 1415, 1999, 
  'Vietsub + Lồng Tiếng', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"田中真弓","avatar":"https://image.tmdb.org/t/p/w185/by4t1tYtEXsfbFj9TvOjozBmQla.jpg"},{"name":"中井和哉","avatar":"https://image.tmdb.org/t/p/w185/cOHSa0FBrG3u9P6g8A56sInkvod.jpg"},{"name":"矢口真里","avatar":"https://image.tmdb.org/t/p/w185/edjVzlYS9elEzDHJdAunceWhkWR.jpg"},{"name":"岡村明美","avatar":"https://image.tmdb.org/t/p/w185/qEwVfsrA23SCzRZMSlghw2sHctQ.jpg"},{"name":"山口勝平","avatar":"https://image.tmdb.org/t/p/w185/mJyxKRZxLv9D7LH5KcNSkjSKYOB.jpg"},{"name":"平田広明","avatar":"https://image.tmdb.org/t/p/w185/mMWEdlssJm3TVuXW4Wb7pQeX20Z.jpg"},{"name":"大谷育江","avatar":"https://image.tmdb.org/t/p/w185/my8LBLQ4MsK4hRz1PAATIqtieaI.jpg"},{"name":"山口由里子","avatar":"https://image.tmdb.org/t/p/w185/14hV8oOMkZddPpvdpVSODRwVPgv.jpg"},{"name":"矢尾一樹","avatar":"https://image.tmdb.org/t/p/w185/kjETB1FaDaGozGjdq4Hu1UjrQDf.jpg"},{"name":"宝亀克寿","avatar":"https://image.tmdb.org/t/p/w185/stuUwLrSOmQhOmNpO4kCrlu3ALF.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["ون بيس","Едно Парче","海贼王","海賊王","Ek Tukda","Tutti All''arrembaggio","All''arrembaggio!","One Piece: Tutti All''arrembaggio!","Wan Pisu","ONE PIECE FAN LETTER","ONE PIECE","SPECIAL EDITED VERSION『ONE PIECE』魚人島編","Budak Getah","Rubber Boy","وَن پِیس","Большой Куш","Jackpot","วันพีช","One Piece","Єдиний Скарб","ВЕЛИКИЙ КУШ","One Piece Log: Fish-Man Island Saga","One Piece: Pirate King","One Piece: Pirate Island","ワンピース"]', '{"id":"37854","type":"tv","vote_average":8.8,"vote_count":5482,"logo_url":"https://image.tmdb.org/t/p/original/eq0GPMuYJ6JsW4Lb8saWuYVvYQb.png","backdrop_url":"https://image.tmdb.org/t/p/original/2rmK7mnchw9Xr3XdiTFSxTTLXqv.jpg","poster_url":"https://image.tmdb.org/t/p/original/dB4EDhre2dsC2kxYDavyKWqLQwi.jpg","aspect_ratio":4.226}', '{"id":"tt0388629","vote_average":9}', 
  1789378914768, '2026-09-14T12:37:16.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-hai-tac', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-hai-tac', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-hai-tac', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-hai-tac', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-hai-tac', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-hai-tac', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-hai-tac', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'dao-hai-tac';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dao-hai-tac', 'Đảo Hải Tặc', 'One Piece', 'đảo hải tặc one piece 田中真弓 中井和哉 矢口真里 岡村明美 山口勝平 平田広明 大谷育江 山口由里子 矢尾一樹 宝亀克寿', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'sieu-canh-khuyen', 'Siêu Cảnh Khuyển', 'Dog Man', 'https://phimimg.com/upload/vod/20250512-1/0b3b6767532eda0429ba8fc48c4b81b9.jpg', 'https://phimimg.com/upload/vod/20250512-1/8fc7e83b01f3513e1a4221f1209377ac.jpg', '<p>Câu chuyện bắt đầu khi sĩ quan cảnh sát Knight và chú chó nghiệp vụ Greg bị thương nặng trong một vụ nổ do âm mưu của mèo ác nhân Petey. Để cứu cả hai, các bác sĩ quyết định thực hiện một ca phẫu thuật ghép đôi, kết hợp đầu của Greg với thân thể của Knight, tạo nên Dog Man – một anh hùng nửa người nửa chó. Với bản năng trung thành của loài chó và trí tuệ của con người, Dog Man phải đối mặt với những kế hoạch xấu xa của Petey. Tình tiết trở nên phức tạp khi Petey tạo ra bản sao của mình, Lil Petey, nhưng Lil Petey lại hình thành mối quan hệ đặc biệt với Dog Man. Khi Lil Petey bị bắt cóc, Dog Man và Petey buộc phải hợp tác để giải cứu chú mèo con, dẫn đến những tình huống hài hước và cảm động.</p>', 
  'Full', 1, 'single', 'completed', 122, 2025, 
  'Vietsub + Lồng Tiếng', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Peter Hastings","avatar":"https://image.tmdb.org/t/p/w185/o5BXNCGeMiYS6AlRGigQCGVbr7K.jpg"},{"name":"Pete Davidson","avatar":"https://image.tmdb.org/t/p/w185/f3kubnZu3KgMniExcq9nJy8RwjW.jpg"},{"name":"Lil Rel Howery","avatar":"https://image.tmdb.org/t/p/w185/9MDi35Fy6ym7SYbO3B04vf1vBnm.jpg"},{"name":"Isla Fisher","avatar":"https://image.tmdb.org/t/p/w185/vVeKcMyFMPcIDLYNAnGSGnQrJ3k.jpg"},{"name":"Lucas Hopkins Calderon","avatar":""},{"name":"Ricky Gervais","avatar":"https://image.tmdb.org/t/p/w185/z293wonhuF0aYQtg1ROOSl1LObf.jpg"},{"name":"Poppy Liu","avatar":"https://image.tmdb.org/t/p/w185/i36QkUChZN7K8BQa1ReaZHes6L4.jpg"},{"name":"Stephen Root","avatar":"https://image.tmdb.org/t/p/w185/2Zwi6AydqQQ9InVdhjYcfJXNzkp.jpg"},{"name":"Billy Boyd","avatar":"https://image.tmdb.org/t/p/w185/jluumxuDr7rm2f97NFf9LydBdaZ.jpg"},{"name":"Luenell","avatar":"https://image.tmdb.org/t/p/w185/5Mz0UEpcu1PHftgmKgoEhSSaiiA.jpg"}]', '[{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"0c853f6238e0997ee318b646bb1978bc","name":"Trẻ Em","slug":"tre-em"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Las aventuras de Dog Man","神探狗狗","超狗神探","مرد سگی","Dreamworks Dog Man","Нохой хүн","O Homem-Cão","Homem-Cão","Super Chien","Dog Man"]', '{"id":"774370","type":"movie","vote_average":7.4,"vote_count":369,"logo_url":"https://image.tmdb.org/t/p/original/GETa0dlDrMXrpWi0tcu516juqw.png","backdrop_url":"https://image.tmdb.org/t/p/original/iXU87IdtNsYt7n6OigPJBDdbFf1.jpg","poster_url":"https://image.tmdb.org/t/p/original/89wNiexZdvLQ41OQWIsQy4O6jAQ.jpg","aspect_ratio":2.338}', '{"id":"tt10954718","vote_average":6.3}', 
  1789378914767, '2026-09-14T12:36:44.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sieu-canh-khuyen', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sieu-canh-khuyen', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sieu-canh-khuyen', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sieu-canh-khuyen', 'tre-em');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sieu-canh-khuyen', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sieu-canh-khuyen', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sieu-canh-khuyen', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'sieu-canh-khuyen';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('sieu-canh-khuyen', 'Siêu Cảnh Khuyển', 'Dog Man', 'siêu cảnh khuyển dog man peter hastings pete davidson lil rel howery isla fisher lucas hopkins calderon ricky gervais poppy liu stephen root billy boyd luenell', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'digimon-beatbreak', 'DIGIMON BEATBREAK', 'Digimon Beatbreak', 'https://phimimg.com/upload/vod/20251111-1/b9d5ee4209289a3e9ba05a7b002f8e0c.jpg', 'https://phimimg.com/upload/vod/20251111-1/0db4abb38dc3193efe0ac7c3d7d4753b.jpg', '<p>&quot;e-Pulse&quot;, được tạo ra bởi suy nghĩ và cảm xúc của con người, đã được sử dụng làm nguồn năng lượng cho thiết bị hỗ trợ AI &quot;Sapotama&quot;. Từ bóng tối của sự phát triển đáng kinh ngạc này, những con quái vật đáng sợ xuất hiện. Digimon là những sinh vật sống tiến hóa bằng cách tiêu thụ e-Pulse. Tomoro Tenma bị cuốn vào một trải nghiệm phi thường sau khi gặp Gekkomon, người đột nhiên xuất hiện từ Sapotama của mình. Trong khi sống cùng Kyo Sawashiro và các thành viên khác của đội săn tiền thưởng &quot;Golden Dawn&quot;, Tomoro đã củng cố lại quyết tâm của mình. Tương lai mới nào sẽ được kiến tạo bởi con người và Digimon?</p>', 
  'Tập 46', 50, 'hoathinh', 'ongoing', 411, 2025, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Irino Miyu","avatar":"https://image.tmdb.org/t/p/w185/8qEEhHUObNvGQr4e6eqLu5z4qTz.jpg"},{"name":"潘めぐみ","avatar":"https://image.tmdb.org/t/p/w185/cwnwrPg1YvB19TbfouC4ShGPmbQ.jpg"},{"name":"黒沢ともよ","avatar":"https://image.tmdb.org/t/p/w185/eSRnva88YVcUXlDHdVrhier2SGU.jpg"},{"name":"田村睦心","avatar":"https://image.tmdb.org/t/p/w185/uvbBIRiBK6GDLEESiYSFWOVlaE4.jpg"},{"name":"関根有咲","avatar":"https://image.tmdb.org/t/p/w185/z8GTafCwhgx6cgjpuUWHOWXZCkg.jpg"},{"name":"久野美咲","avatar":"https://image.tmdb.org/t/p/w185/hVtE4gdKaqofYZmXXtlJs4Q9XTL.jpg"},{"name":"阿座上洋平","avatar":"https://image.tmdb.org/t/p/w185/rLIqw8pIjVIxPb5engrTbu9iOex.jpg"},{"name":"濱野大輝","avatar":"https://image.tmdb.org/t/p/w185/bykeH3Rhmx9PPFegYNi6s310cNa.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"0c853f6238e0997ee318b646bb1978bc","name":"Trẻ Em","slug":"tre-em"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["数码兽 BEATBREAK","数码暴龙 BEATBREAK","デジモンビートブレイク","Dejimon Bītobureiku","DIGIMON BEATBREAK（デジモンビートブレイク）","DIGIMON BEATBREAK"]', '{"id":"286791","type":"tv","vote_average":7.7,"vote_count":15,"logo_url":"https://image.tmdb.org/t/p/original/60fGv96Af7TmznUNBcz7mLrURh6.png","backdrop_url":"https://image.tmdb.org/t/p/original/7Sz41DFZZpnkbLVJFKSF1cbCMyz.jpg","poster_url":"https://image.tmdb.org/t/p/original/qcy74ZdijvhaIyiPKFVZJZZrpJt.jpg","aspect_ratio":4.925}', '{"id":"tt37499375","vote_average":7.2}', 
  1789378914766, '2026-09-14T12:30:54.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'tre-em');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('digimon-beatbreak', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'digimon-beatbreak';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('digimon-beatbreak', 'DIGIMON BEATBREAK', 'Digimon Beatbreak', 'digimon beatbreak digimon beatbreak irino miyu 潘めぐみ 黒沢ともよ 田村睦心 関根有咲 久野美咲 阿座上洋平 濱野大輝', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'muon-mat-tra-thu', 'Mượn Mặt Trả Thù', 'Deep Revenge', 'https://phimimg.com/uploads/movies/20260805/muon-mat-tra-thu-thumb.webp', 'https://phimimg.com/uploads/movies/20260805/muon-mat-tra-thu-poster.webp', '<p>Nữ chính Nozomi từng chìm đắm trong hạnh phúc tột cùng sau khi mang thai đứa con đầu lòng với người chồng Ryoichi. Thế nhưng, một tai nạn kinh hoàng xảy ra trong chuyến đi nghỉ dưỡng đã cướp đi tất cả. Khi tỉnh lại trên giường bệnh, cô bàng hoàng nhận được tin đứa con trong bụng đã chết lưu — và cay đắng hơn cả, 4 năm lịch sử đã trôi qua kể từ ngày biến cố đó xảy ra.</p>', 
  'Full', 11, 'series', 'completed', 313, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"堀未央奈","avatar":"https://image.tmdb.org/t/p/w185/qQWlkWlWZBG23L1QWPiPSlZ7E85.jpg"},{"name":"石川恋","avatar":"https://image.tmdb.org/t/p/w185/susjgREHJTPug5mbbSajazVi7Fm.jpg"},{"name":"Riki Matsui","avatar":"https://image.tmdb.org/t/p/w185/hJyFD9h4KsXdTFTuLDIqqf0Hx9I.jpg"},{"name":"飯島寛騎","avatar":"https://image.tmdb.org/t/p/w185/p0gQ0y7M15KbQyAcm5yquKun7Op.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["ディープリベンジ-顔を捨てた家政婦-"]', '{"id":"316205","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/zs9VQmVmPhntCzdJNjFonq8VFAb.png","backdrop_url":"https://image.tmdb.org/t/p/original/36GPahqFqgVPQEMjN2qZK5Y8ptm.jpg","poster_url":"https://image.tmdb.org/t/p/original/et28hztErdfoNZ9zGjJ7Y8BhJiY.jpg","aspect_ratio":11.044}', '{"id":"tt43693764","vote_average":null}', 
  1789378914765, '2026-09-14T12:28:36.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-mat-tra-thu', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-mat-tra-thu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-mat-tra-thu', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-mat-tra-thu', 'le_nhat');
DELETE FROM movies_fts WHERE slug = 'muon-mat-tra-thu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('muon-mat-tra-thu', 'Mượn Mặt Trả Thù', 'Deep Revenge', 'mượn mặt trả thù deep revenge 堀未央奈 石川恋 riki matsui 飯島寛騎', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nguoi-chay-xuyen-khong-gian-phan-2', 'Người Chạy Xuyên Không Gian (Phần 2)', 'Dark Matter (Season 2)', 'https://phimimg.com/uploads/movies/20260829/nguoi-chay-xuyen-khong-gian-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260829/nguoi-chay-xuyen-khong-gian-phan-2-poster.webp', '<p>Gia đình Jason ban đầu tìm được một khoảng thời gian yên bình, tưởng chừng đã định cư an toàn tại một thực tại mới. Tuy nhiên, sự bình yên đó không kéo dài lâu khi những hiểm họa từ không gian đa vũ trụ và những rắc rối chưa được giải quyết từ thế giới cũ tiếp tục đeo bám, buộc họ phải một lần nữa dấn thân vào cuộc trốn chạy mới.</p>', 
  'Tập 3', 19, 'series', 'ongoing', 177, 2026, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Joel Edgerton","avatar":"https://image.tmdb.org/t/p/w185/r2TTDZ8cG5wrZqx7Drz1M95S9z3.jpg"},{"name":"Jennifer Connelly","avatar":"https://image.tmdb.org/t/p/w185/wdmcJagSRJ65AuJ4IUCzuHAdvgy.jpg"},{"name":"Alice Braga","avatar":"https://image.tmdb.org/t/p/w185/d9JdgvUiqyWuGQLmozNfGZOpIBz.jpg"},{"name":"Jimmi Simpson","avatar":"https://image.tmdb.org/t/p/w185/gerE8VqXfFyAs3QhbUlwEuZllKq.jpg"},{"name":"Dayo Okeniyi","avatar":"https://image.tmdb.org/t/p/w185/8m4ZIuzVBDjFbJFLXebc4iwv27o.jpg"},{"name":"Oakes Fegley","avatar":"https://image.tmdb.org/t/p/w185/jDiuzOh12xmrkwtnZWBPEEjpNva.jpg"},{"name":"Amanda Brugel","avatar":"https://image.tmdb.org/t/p/w185/3W1RR8CzP5uk6sFt92i1QyjGLRT.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Цёмная матэрыя","人生复本","暗物质","Σκοτεινή ύλη","חומר אפל","ماده تاریک","Materia întunecată","Тамна материја","Тёмная материя","المادة المظلمة","Durango 60623","Dark Matter"]', '{"id":"196322","type":"tv","vote_average":7.8,"vote_count":731,"logo_url":"https://image.tmdb.org/t/p/original/6u2xkquYa9vEyrnkTm6rJrh2gHa.png","backdrop_url":"https://image.tmdb.org/t/p/original/8ArfwtErwt57ZMozy5RqiwKj6pY.jpg","poster_url":"https://image.tmdb.org/t/p/original/2DPmTlv8F0V1TQBPmlsGOVOhtWk.jpg","aspect_ratio":3.126}', '{"id":"tt19231492","vote_average":7.6}', 
  1789378914764, '2026-09-14T12:22:47.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-chay-xuyen-khong-gian-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-chay-xuyen-khong-gian-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-chay-xuyen-khong-gian-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-chay-xuyen-khong-gian-phan-2', 'bo_au_my');
DELETE FROM movies_fts WHERE slug = 'nguoi-chay-xuyen-khong-gian-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nguoi-chay-xuyen-khong-gian-phan-2', 'Người Chạy Xuyên Không Gian (Phần 2)', 'Dark Matter (Season 2)', 'người chạy xuyên không gian (phần 2) dark matter (season 2) joel edgerton jennifer connelly alice braga jimmi simpson dayo okeniyi oakes fegley amanda brugel', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bon-ban-tay-hai-ban-sonata', 'Bốn bàn tay, hai bản sonata', 'Four Hands, Two Sonatas', 'https://phimimg.com/uploads/movies/20260829/bon-ban-tay-hai-ban-sonata-thumb.webp', 'https://phimimg.com/uploads/movies/20260829/bon-ban-tay-hai-ban-sonata-poster.webp', '<p>Khi hai nghệ sĩ piano trẻ đến từ hai thế giới hoàn toàn khác biệt gặp gỡ tại ngôi trường trung học âm nhạc danh giá, khúc nhạc cuộc đời của họ bắt đầu gắn kết chặt chẽ.</p>', 
  'Tập 6', 12, 'series', 'ongoing', 326, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"송강","avatar":"https://image.tmdb.org/t/p/w185/83fLAMMb1LGT8YZ4dgRI0fti3az.jpg"},{"name":"이준영","avatar":"https://image.tmdb.org/t/p/w185/zH8kiGox6n3FD82MKEhUq79X6gj.jpg"},{"name":"장규리","avatar":"https://image.tmdb.org/t/p/w185/u232DZRv4WBpOT6HKPnUR7DLQMq.jpg"},{"name":"윤세아","avatar":"https://image.tmdb.org/t/p/w185/wdytv8MZeNjulCR4nMmpreuDS6w.jpg"},{"name":"정진영","avatar":"https://image.tmdb.org/t/p/w185/ipBYiyEfFrffCoTpoSiEChHDwz4.jpg"},{"name":"서재희","avatar":"https://image.tmdb.org/t/p/w185/sysUnij3kUyYXYjFR5Qsb0Oa0XC.jpg"},{"name":"성노진","avatar":"https://image.tmdb.org/t/p/w185/rkrohGcR0V3q0HrniyHlf7pFDUo.jpg"},{"name":"이명로","avatar":"https://image.tmdb.org/t/p/w185/uZytd3dXQdBpOAiJNOl7S1eIn8u.jpg"},{"name":"김민","avatar":"https://image.tmdb.org/t/p/w185/pvNgh5koYxNG9NQcSa60XNzoFgE.jpg"},{"name":"김혜화","avatar":"https://image.tmdb.org/t/p/w185/pCwGRkimaHXcv7MOn20cgJrUCAU.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Pohaenjeu","Po-haen-jeu","สี่มือ สองท่วงทำนอง","Four Hands","포핸즈"]', '{"id":"305644","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/ioBZEKDQ390CyxwPQXxHkRD7G9K.png","backdrop_url":"https://image.tmdb.org/t/p/original/fYL4I6cezb06BHhQlrNjNhy7jhf.jpg","poster_url":"https://image.tmdb.org/t/p/original/a7p6htiJKx68USDAcilJ5rzKAWB.jpg","aspect_ratio":4.607}', '{"id":null,"vote_average":null}', 
  1789378914763, '2026-09-14T12:16:39.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bon-ban-tay-hai-ban-sonata', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bon-ban-tay-hai-ban-sonata', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bon-ban-tay-hai-ban-sonata', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'bon-ban-tay-hai-ban-sonata';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bon-ban-tay-hai-ban-sonata', 'Bốn bàn tay, hai bản sonata', 'Four Hands, Two Sonatas', 'bốn bàn tay, hai bản sonata four hands, two sonatas 송강 이준영 장규리 윤세아 정진영 서재희 성노진 이명로 김민 김혜화', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'biet-doi-nu-canh-sat-ao-xanh-phan-2', 'Biệt Đội Nữ Cảnh Sát Áo Xanh (Phần 2)', 'Women In Blue (Season 2)', 'https://phimimg.com/uploads/movies/20260821/biet-doi-nu-canh-sat-ao-xanh-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260821/biet-doi-nu-canh-sat-ao-xanh-phan-2-poster.webp', '<p>Năm 1971, bốn phụ nữ bất chấp những chuẩn mực cực kì bảo thủ và gia nhập lực lượng cảnh sát nữ đầu tiên của Mexico - chỉ để phát hiện ra rằng đó là một chiêu trò quảng bá nhằm đánh lạc hướng giới truyền thông khỏi một kẻ giết người hàng loạt. Khi số lượng thi thể ngày càng tăng, họ thỏa thuận với nhau đưa kẻ giết người ra trước công lí.</p>', 
  'Tập 5', 8, 'series', 'ongoing', 176, 2026, 
  'Vietsub', 'FHD', 'Mexico', 0, 
  '[{"name":"Bárbara Mori","avatar":"https://image.tmdb.org/t/p/w185/y82o82y52BoKvFCMHG3R3Ahv43O.jpg"},{"name":"Ximena Sariñana","avatar":"https://image.tmdb.org/t/p/w185/lkcDXeS07xqBxGJXxuzsRGHzd7l.jpg"},{"name":"Natalia Téllez","avatar":"https://image.tmdb.org/t/p/w185/bZgQ87718iHzUnc6r2gBT3e3TEo.jpg"},{"name":"Amorita Rasgado","avatar":"https://image.tmdb.org/t/p/w185/2XpvbN3iyk7L3ShvxuqCu8J1Q1K.jpg"},{"name":"Miguel Rodarte","avatar":"https://image.tmdb.org/t/p/w185/uEg6DB5dlukpfp0cpOheYR1ChpD.jpg"},{"name":"Leonardo Sbaraglia","avatar":"https://image.tmdb.org/t/p/w185/jGYgJqNEWVvp92ZPre1PEKfci5H.jpg"},{"name":"Christian Tappan","avatar":"https://image.tmdb.org/t/p/w185/AsgxuVkpzSE4uC4iQCS4WNMQhEC.jpg"},{"name":"Horacio García Rojas","avatar":"https://image.tmdb.org/t/p/w185/75Yo3FmhEOZhMzP0ImYQIoalurn.jpg"},{"name":"Bruno Bichir","avatar":"https://image.tmdb.org/t/p/w185/af6MbUchuOv9bPh080cF7Awqxi7.jpg"}]', '[{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["女警出更","Γυναίκες στα μπλε","נשים בכחול","Las azules"]', '{"id":"253983","type":"tv","vote_average":7.1,"vote_count":63,"logo_url":"https://image.tmdb.org/t/p/original/svwKT7sVzvCXmzNTaGNIfOPD7I.png","backdrop_url":"https://image.tmdb.org/t/p/original/v713kGiwYw2amhk6v9lfxvAYncv.jpg","poster_url":"https://image.tmdb.org/t/p/original/9CHpaYUqgFM81e0emaWkfyFyche.jpg","aspect_ratio":4.274}', '{"id":"tt20516590","vote_average":7.2}', 
  1789378914762, '2026-09-14T12:16:19.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('biet-doi-nu-canh-sat-ao-xanh-phan-2', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('biet-doi-nu-canh-sat-ao-xanh-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('biet-doi-nu-canh-sat-ao-xanh-phan-2', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'biet-doi-nu-canh-sat-ao-xanh-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('biet-doi-nu-canh-sat-ao-xanh-phan-2', 'Biệt Đội Nữ Cảnh Sát Áo Xanh (Phần 2)', 'Women In Blue (Season 2)', 'biệt đội nữ cảnh sát áo xanh (phần 2) women in blue (season 2) bárbara mori ximena sariñana natalia téllez amorita rasgado miguel rodarte leonardo sbaraglia christian tappan horacio garcía rojas bruno bichir', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bat-dau-voi-chi-ton-dan-dien', 'Bắt Đầu Với Chí Tôn Đan Điền', 'The Supreme Dantian / Star Sign In To Supreme Dantian', 'https://phimimg.com/upload/vod/20251008-1/5969b30193530e9ca100cb6683241181.jpg', 'https://phimimg.com/upload/vod/20251008-1/9ea5adf1e158025b17f0d3ac241e4172.jpg', '<p>Bắt Đầu Với Chí Tôn Đan Điền phiên bản 3D sẽ mang đến những khoảnh khắc thú vì hơn với việc khắc họa sinh động hành trình trở thành Đại Đế đầy gian khổ của một bán thần tên là Tần Thư. Bị coi là bán thần vì Tần Thư tuy mang cốt cách của một thần tử nhưng lại sống trong thân xác của một người phàm từ khi mới sinh ra. Điều này mang lại vô số điều bất lợi và sự khinh miệt đến với cậu, các thần nhân thì luôn tìm cách để chiếm đoạt lấy thân phận thần tử của mình bởi với họ thì điều đó quá dễ dàng. Nhưng khi giang trần để thực sự sống trong thân thế của một con người đích thực, Tần Thư đã đanh thép khẳng định được sức mạnh và ý chí không bao giờ khuất phục của mình. Nhờ có những nỗ lực và cả cơ duyên nên Tần Thư đã có được Đan Đình Vĩnh Động, sức mạnh nâng lên không ngừng. Tần Thư đã giao chiến và hạ gục cả quỷ Tu La lẫn tên Võ Đế với sức mạnh vô song.</p>', 
  'Tập 29', 40, 'hoathinh', 'ongoing', 411, 2025, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Kai Ju Qian Dao Zhi Tian","开局签道之天","Cultivating The Supreme Dantian","启运丹田：开局签到至尊丹田"]', '{"id":"301606","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/8uF5wX9KEqNkZMxrfJp1m9Z8o3Z.jpg","poster_url":"https://image.tmdb.org/t/p/original/mUuYE6OH98JcqtCVTmsuSo3badJ.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914761, '2026-09-14T12:15:55.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bat-dau-voi-chi-ton-dan-dien', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bat-dau-voi-chi-ton-dan-dien', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bat-dau-voi-chi-ton-dan-dien', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bat-dau-voi-chi-ton-dan-dien', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bat-dau-voi-chi-ton-dan-dien', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bat-dau-voi-chi-ton-dan-dien', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'bat-dau-voi-chi-ton-dan-dien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bat-dau-voi-chi-ton-dan-dien', 'Bắt Đầu Với Chí Tôn Đan Điền', 'The Supreme Dantian / Star Sign In To Supreme Dantian', 'bắt đầu với chí tôn đan điền the supreme dantian / star sign in to supreme dantian đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'anh-sam-cua-em', 'Anh Sam Của Em', 'Your Third', 'https://phimimg.com/uploads/movies/20260727/anh-sam-cua-em-thumb.webp', 'https://phimimg.com/uploads/movies/20260727/anh-sam-cua-em-poster.webp', '<p>Một thư ký được giao nhiệm vụ đi đưa người em trai bỏ nhà ra đi của sếp mình trở về. Tuy nhiên, trong quá trình tiếp cận, anh lại đem lòng yêu chính người đàn ông đang bị tổn thương vì tình yêu mà mình có nhiệm vụ phải đưa về nhà.</p>', 
  'Tập 8', 12, 'series', 'ongoing', 358, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"กรธัสส์ รุจีรัตนาวรพันธ์","avatar":"https://image.tmdb.org/t/p/w185/wAjTWJ5qf3ES2IhzbWdSWOZPv2o.jpg"},{"name":"ณฐสิชณ์ เอื้อเอกสิชฌ์","avatar":"https://image.tmdb.org/t/p/w185/pZhOUfw30dZj3Ox8zepO2y4ZRHZ.jpg"},{"name":"Ohm Thanakrit Chaimchunya","avatar":"https://image.tmdb.org/t/p/w185/lzgEnL7JU230GTzSQxDstctxrBe.jpg"},{"name":"เจษฎา จันทร์มะโน","avatar":"https://image.tmdb.org/t/p/w185/mTFj5zKBtyQ1xDc2zf1EQi1nyGo.jpg"},{"name":"Peterpan Tadsapon Wiwitawan","avatar":"https://image.tmdb.org/t/p/w185/aMssS3vxIlq2ZoHZSPmm4drr8xl.jpg"},{"name":"ณธัช ศิริพงษ์ธร","avatar":"https://image.tmdb.org/t/p/w185/pQxpYvlSofqMU3tZMZbUSWzvnbI.jpg"},{"name":"สรณ์ธรรศ บัวงาม","avatar":"https://image.tmdb.org/t/p/w185/xDSTqrNB1PftuFoAzL79KgQ7zCR.jpg"},{"name":"วัชรพล ก้อนทรัพย์","avatar":"https://image.tmdb.org/t/p/w185/3bElivnqSLGJLJxUTwNg9Z7bvH8.jpg"},{"name":"กัญญาภัค พงษ์ศักดิ์","avatar":"https://image.tmdb.org/t/p/w185/f390iHd9GD81OrWno3QngRTus4J.jpg"},{"name":"Oliver Bever","avatar":"https://image.tmdb.org/t/p/w185/zZ9JW3s8Wx299PhaMEk6W5qwn3r.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Thi Sam Khong Thoe","ที่สามของเธอ"]', '{"id":"284822","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/p0NGykWVmRRl2N5waEe6FJgU5r9.png","backdrop_url":"https://image.tmdb.org/t/p/original/9k5nVVRHQJUqUkCi1kZ13XH3vy1.jpg","poster_url":"https://image.tmdb.org/t/p/original/wpQqRz3CNt6FV7XjZmg3mrl0zfV.jpg","aspect_ratio":2.322}', '{"id":"tt35932159","vote_average":null}', 
  1789378914760, '2026-09-14T12:15:35.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('anh-sam-cua-em', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('anh-sam-cua-em', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('anh-sam-cua-em', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('anh-sam-cua-em', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('anh-sam-cua-em', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'anh-sam-cua-em';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('anh-sam-cua-em', 'Anh Sam Của Em', 'Your Third', 'anh sam của em your third กรธัสส์ รุจีรัตนาวรพันธ์ ณฐสิชณ์ เอื้อเอกสิชฌ์ ohm thanakrit chaimchunya เจษฎา จันทร์มะโน peterpan tadsapon wiwitawan ณธัช ศิริพงษ์ธร สรณ์ธรรศ บัวงาม วัชรพล ก้อนทรัพย์ กัญญาภัค พงษ์ศักดิ์ oliver bever', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nghich-thien-chi-ton', 'Nghịch Thiên Chí Tôn', 'Against The Sky Supreme / Ni Tian Zhi Zun', 'https://phimimg.com/upload/vod/20250903-1/cc1e9fd59cf70b050455ceb0bf183bf3.jpg', 'https://phimimg.com/upload/vod/20250903-1/fe12e74047daf65d58b996a82987f6aa.jpg', '<p>Vũ trụ chia thành vực nội và vực ngoại, là kẻ thù của nhau. Vực ngoại do Thiên Ma thống trị, vực nội bao gồm phàm giới, tiên giới và thần giới. Các phàm giới như đại lục Thiên Phạt rất nhiều, gọi chung là tinh vực Cửu Thiên, do chín đại Tiên Đế lãnh đạo. Trên Cửu Thiên là thần vực Luyện Tiên, nơi tiên nhân cần đi qua để thành thần. Trong quá khứ, vạn tộc do ba chí tôn Thủy Nguyên, Hỗn Độn và Hồng Mông thống trị. Hồng Mông Chí Tôn là mạnh nhất, nhân hậu và bình đẳng với mọi sinh linh. Khi vũ trụ vực ngoại xâm lấn, ngài bị hai chí tôn kia cấu kết giết hại và nguyền rủa luân hồi. Người thân, thuộc hạ, quê hương không còn, đồ đệ Linh Hà thiên tôn phản bội, ngài trải qua nhiều kiếp bị diệt môn, cuối cùng chuyển kiếp thành Đàm Vân, thiếu gia 16 tuổi của một gia tộc chớm nổi trong trấn Vọng Nguyệt. Khi chưa thức tỉnh, hắn bị ức hiếp vì là kẻ vô dụng. Trong hôn lễ, hắn bị đánh vì phát hiện vị hôn thê gian díu với Tư Đồ công tử. Lúc sắp chết, ký ức của Hồng Mông Chí Tôn mới được thức tỉnh, thay đổi số phận, sở hữu thiên phú cấp thần, tu luyện công pháp kiếp trước và nhanh chóng tăng tu vi. Sau khi báo thù nhà, hắn vào Hoàng Phổ Thánh Tông, dùng trí tuệ và thuật pháp của Hồng Mông Chí Tôn, trở thành tông chủ, thống trị cả đại lục. Hắn còn gặp lại thuộc hạ và thê tử chuyển kiếp, tìm lại thần khí, hiểu rõ mọi chuyện quá khứ, gặp thêm rất nhiều giai lệ.</p>', 
  'Tập 549', 880, 'hoathinh', 'ongoing', 674, 2021, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"高峰","avatar":""}]', '[{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["Nitian Zhizun","Nì Tiān Zhì Zūn","Ni Tian Zhi Zun","Ni Tian Zhizun","Against the sky Supreme","역천지존","NTZZ","Guards against the sky","N.T.Z.Z","Lit The Supreme Being","Against the Heavenly Lords","Heaven Guards","Heaven Defying Supreme","逆天至尊"]', '{"id":"129272","type":"tv","vote_average":9,"vote_count":6,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/iXIqmNNCk1QheQQBiWJULYq0y5L.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt15816496","vote_average":null}', 
  1789378914759, '2026-09-14T12:08:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-chi-ton', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-chi-ton', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-chi-ton', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-chi-ton', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-chi-ton', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-chi-ton', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'nghich-thien-chi-ton';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nghich-thien-chi-ton', 'Nghịch Thiên Chí Tôn', 'Against The Sky Supreme / Ni Tian Zhi Zun', 'nghịch thiên chí tôn against the sky supreme / ni tian zhi zun 高峰', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'Ác Nữ Nửa Vời: Truyền Kì Hoán Hồn Đổi Xác', 'Though I Am An Inept Villainess', 'https://phimimg.com/uploads/movies/20260713/ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac-thumb.webp', 'https://phimimg.com/uploads/movies/20260713/ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac-poster.webp', '<p>Giống như loài bướm quý Reirin luôn được Đông cung Thái tử sủng ái, ả "chuột cống cung đình" Keigetsu vì lòng đố kỵ đã dùng tà thuật để tráo đổi thân xác — và cả vận mệnh của hai người. Đối mặt với án tử hình đang cận kề, Reirin lại hào hứng đón nhận cơ thể mới khỏe mạnh của mình; trong khi đó, Keigetsu nhận ra cuộc sống của Reirin không hề màu hồng như ả tưởng khi bản thân bị cuốn sâu vào một âm mưu thâm độc nơi hậu cung.</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 432, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Manaka Iwami","avatar":"https://image.tmdb.org/t/p/w185/leKMaCBswXG8u4mfQNQ7J3y6Xow.jpg"},{"name":"川井田夏海","avatar":"https://image.tmdb.org/t/p/w185/bdsKRWdB14DAAZzJnRjquWbqNYR.jpg"},{"name":"古川慎","avatar":"https://image.tmdb.org/t/p/w185/inLmBZhrqXeE9wlViyK28ocKJSw.jpg"},{"name":"梅原裕一郎","avatar":"https://image.tmdb.org/t/p/w185/lScrvZi4tKKpk3PbnIjLVjHVNJn.jpg"},{"name":"菱川花菜","avatar":"https://image.tmdb.org/t/p/w185/epCzuP9ZmBMonKK2Z6FOKoq2b7k.jpg"},{"name":"ニケライ・ファラナーゼ","avatar":"https://image.tmdb.org/t/p/w185/AeRtlrUaLVCypT7uv3KuYn8BZp2.jpg"},{"name":"五十嵐麗","avatar":"https://image.tmdb.org/t/p/w185/sqfOHaLVkZu5zcTo5IZ41hxDJvq.jpg"},{"name":"茅野愛衣","avatar":"https://image.tmdb.org/t/p/w185/l8ywp387rfdAS7mOExe3cEZnsk0.jpg"},{"name":"中原麻衣","avatar":"https://image.tmdb.org/t/p/w185/s8DBmM540SRlRzUplaapMaDo8vV.jpg"},{"name":"水瀬いのり","avatar":"https://image.tmdb.org/t/p/w185/cqOrQDUbbQLKpujzcK47YqjFdNp.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["恶女不才，请多关照 ～雏宫蝶鼠换身传～","Futsutsuka na Akujo de wa Gozaimasu ga -Sūgū Chōso Torikae Den-","Futsutsuka na Akujo de wa Gozaimasu ga -Suuguu Chouso Torikae Den-","我是不才惡女～雛宮蝶鼠互換傳～","Though I Am an Inept Villainess: Tale of the Butterfly-Rat Body Swap in the Maiden Court","ふつつかな悪女ではございますが ～雛宮蝶鼠とりかえ伝～"]', '{"id":"286345","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/hmIXh26vMCocUBX9tuzM8jVU2Hz.png","backdrop_url":"https://image.tmdb.org/t/p/original/iNhtAnOhqQjiw7NMHrWbUw8mh4w.jpg","poster_url":"https://image.tmdb.org/t/p/original/yZHCMXL2xYS988rYxR1D8YrTzeD.jpg","aspect_ratio":1.717}', '{"id":"tt41293157","vote_average":null}', 
  1789378914758, '2026-09-14T12:08:52.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ac-nu-nua-voi-truyen-ki-hoan-hon-doi-xac', 'Ác Nữ Nửa Vời: Truyền Kì Hoán Hồn Đổi Xác', 'Though I Am An Inept Villainess', 'ác nữ nửa vời: truyền kì hoán hồn đổi xác though i am an inept villainess manaka iwami 川井田夏海 古川慎 梅原裕一郎 菱川花菜 ニケライ・ファラナーゼ 五十嵐麗 茅野愛衣 中原麻衣 水瀬いのり', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'van-co-chi-ton-ly-van-tieu-truyen', 'Vạn Cổ Chí Tôn: Lý Vân Tiêu Truyện', 'The Eternal Supreme: Li Yunxiao', 'https://phimimg.com/uploads/movies/20260726/van-co-chi-ton-ly-van-tieu-truyen-thumb.webp', 'https://phimimg.com/uploads/movies/20260726/van-co-chi-ton-ly-van-tieu-truyen-poster.webp', '<p>Lý Vân Tiêu Truyện kể về hành trình đầy huyền thoại của Lý Vân Tiêu, người không chỉ thay đổi vận mệnh của nước Thiên Thủy mà còn tiếp tục theo đuổi khát vọng bước vào Thần cảnh còn dang dở từ kiếp trước. Ít ai biết rằng, ẩn sau thân phận thiếu niên ấy chính là Cổ Phi Dương, Phá Quân Võ Đế lừng danh, một trong ba cường giả mạnh nhất đại lục Thiên Võ. Dù đã đứng trên đỉnh cao võ đạo, Cổ Phi Dương vẫn mãi bị giam cầm ở cảnh giới Cửu Thiên Võ Đế bởi quy tắc của thiên địa. Không cam tâm dừng bước, hắn chấp nhận đánh đổi tất cả để chuyển thế, bắt đầu lại con đường tu luyện trong thân phận mới mang tên Lý Vân Tiêu. Thời điểm tái sinh cũng là lúc nước Thiên Thủy rơi vào cảnh nội ưu ngoại hoạn, chiến loạn liên miên. Với trí tuệ và kinh nghiệm tích lũy từ kiếp trước, Lý Vân Tiêu từng bước hóa giải những âm mưu, đánh lui cường địch, bảo vệ gia tộc và xoay chuyển vận mệnh của cả đất nước. Đồng thời, cậu cũng không ngừng hoàn thiện thực lực, tiếp tục con đường mà Cổ Phi Dương năm xưa chưa thể đi hết, từng bước hướng đến Thần cảnh, đỉnh cao mà cả đời hắn luôn khao khát chinh phục.</p>', 
  'Tập 18', 34, 'hoathinh', 'ongoing', 469, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["万古至尊：李云霄传"]', '{"id":"329125","type":"tv","vote_average":9,"vote_count":1,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/tkYPavJ5pHNRjBhAky7lRhjMa0w.jpg","poster_url":"https://image.tmdb.org/t/p/original/6UE31KRwZmuvoAGvYxi3LvNElIw.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914757, '2026-09-14T12:08:46.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-chi-ton-ly-van-tieu-truyen', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-chi-ton-ly-van-tieu-truyen', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-chi-ton-ly-van-tieu-truyen', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-chi-ton-ly-van-tieu-truyen', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-chi-ton-ly-van-tieu-truyen', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-chi-ton-ly-van-tieu-truyen', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'van-co-chi-ton-ly-van-tieu-truyen';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('van-co-chi-ton-ly-van-tieu-truyen', 'Vạn Cổ Chí Tôn: Lý Vân Tiêu Truyện', 'The Eternal Supreme: Li Yunxiao', 'vạn cổ chí tôn: lý vân tiêu truyện the eternal supreme: li yunxiao đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'quan-san-yeu-cuu-pham', 'Quan Săn Yêu Cửu Phẩm', 'No. 9 Hunter', 'https://phimimg.com/uploads/movies/20260907/quan-san-yeu-cuu-pham-thumb.webp', 'https://phimimg.com/uploads/movies/20260907/quan-san-yeu-cuu-pham-poster.webp', '<p>Thượng Quan Tử Yên, một tiểu yêu mang sát khí, và đạo sĩ Nguyên Sơ, người mang tình kiếp khiến người mình yêu phải chết, trở thành Quan Săn Yêu Cửu Phẩm và cùng nhau bước lên hành trình vá trời. Trên đường đi, cả hai phải đối mặt với yêu ma và những hiểm họa đe dọa nhân gian.</p>', 
  'Tập 19', 24, 'series', 'ongoing', 260, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Lưu Húc Uy","avatar":"https://image.tmdb.org/t/p/w185/4nxoTzaTysxDcV28utGjFU4rDRx.jpg"},{"name":"Chung Lệ Lệ","avatar":"https://image.tmdb.org/t/p/w185/npfc7abyPKD7f7sXuuEm27MvTm4.jpg"},{"name":"Tiết Bát Nhất","avatar":"https://image.tmdb.org/t/p/w185/dgBtxcdMqmOaCIFzP63NHe7UT6u.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["No 9 Hunter","九品猎妖官"]', '{"id":"303290","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/cL6PvU4YpEDY3DiQFGaUJQgjNgf.png","backdrop_url":"https://image.tmdb.org/t/p/original/jrequqXXyh150W6ZJZ1luLx8Hon.jpg","poster_url":"https://image.tmdb.org/t/p/original/hDbRIIRXxyFeRyVildzkf7ueS0e.jpg","aspect_ratio":2.574}', '{"id":null,"vote_average":null}', 
  1789378914756, '2026-09-14T12:07:00.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quan-san-yeu-cuu-pham', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quan-san-yeu-cuu-pham', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quan-san-yeu-cuu-pham', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quan-san-yeu-cuu-pham', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'quan-san-yeu-cuu-pham';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('quan-san-yeu-cuu-pham', 'Quan Săn Yêu Cửu Phẩm', 'No. 9 Hunter', 'quan săn yêu cửu phẩm no. 9 hunter lưu húc uy chung lệ lệ tiết bát nhất', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'te-cong-hang-long-tru-yeu', 'Tế Công: Hàng Long Trừ Yêu', 'The Mad Monk: Subdue Demons', 'https://phimimg.com/uploads/movies/20260910/te-cong-hang-long-tru-yeu-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/te-cong-hang-long-tru-yeu-poster.webp', '<p>Tế Công rong ruổi chốn phàm trần, phổ độ chúng sinh, nhưng lại vướng vào một tình kiếp đã được định sẵn. Tình cờ gặp lại người con gái từng quen biết, cả hai cùng đối mặt với những ân oán tình thù và họa yêu ma đang hoành hành. Một bên là những ngày tháng vui nhộn nơi Linh Ẩn Tự, một bên là cuộc đối đầu sinh tử giữa thần và ma. Thấu hiểu tham, sân, si và vọng niệm, giữa những hợp tan buồn vui, Tế Công hàng yêu trừ ma, bảo vệ bình an cho thế gian.</p>', 
  'Tập 14', 24, 'series', 'ongoing', 181, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Trần Hạo Dân","avatar":"https://image.tmdb.org/t/p/w185/cGNOprzxJntHcg6db0HZOdyCZX8.jpg"},{"name":"Trần Tử Hàm","avatar":"https://image.tmdb.org/t/p/w185/xItbxt0SQa6FlA4w0rrlDRH0ghY.jpg"},{"name":"林子聰","avatar":"https://image.tmdb.org/t/p/w185/4lA8TnRYSZBysNvZLMdNe1UoIK9.jpg"},{"name":"Liang Zhang","avatar":"https://image.tmdb.org/t/p/w185/aw8JeqdaAt40Auvc64ONOWehtCg.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["Ji Gong Zhi Xiang Long Chu Yao","济公之降龙除妖"]', '{"id":"334188","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/mEMbAU1i2P6Uaf8PI2DRpebbOmB.jpg","poster_url":"https://image.tmdb.org/t/p/original/8YKz9X1Ex9NF0L3KgL0w0BrvVkh.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914755, '2026-09-14T12:06:50.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('te-cong-hang-long-tru-yeu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('te-cong-hang-long-tru-yeu', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('te-cong-hang-long-tru-yeu', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('te-cong-hang-long-tru-yeu', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'te-cong-hang-long-tru-yeu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('te-cong-hang-long-tru-yeu', 'Tế Công: Hàng Long Trừ Yêu', 'The Mad Monk: Subdue Demons', 'tế công: hàng long trừ yêu the mad monk: subdue demons trần hạo dân trần tử hàm 林子聰 liang zhang', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'phu-sinh-bach-xa-tien-duyen', 'Phù Sinh: Bạch Xà Tiền Duyên', 'Prelude of the White Snake', 'https://phimimg.com/uploads/movies/20260904/phu-sinh-bach-xa-tien-duyen-thumb.webp', 'https://phimimg.com/uploads/movies/20260904/phu-sinh-bach-xa-tien-duyen-poster.webp', '<p>Vốn dĩ sắp phi thăng thành tiên sau 500 năm tu luyện, Bạch Tố Trinh lại vì vướng bận một "tình kiếp" dang dở mà đánh mất đi phần ký ức quan trọng. Phụng mệnh thượng thần, nàng hạ phàm tìm kiếm Hứa Tiên để trả nợ ân tình. Bước vào chốn hồng trần, Bạch Tố Trinh cùng Tiểu Thanh tình cờ kết giao với Hứa Tiên – lúc này lại mang thân phận thầy trừ yêu gánh trên vai huyết thù diệt môn, cùng vị đệ tử Kim Sơn - Pháp Hải. Bốn người kề vai sát cánh, từ đó mở ra một vòng xoáy định mệnh.</p>', 
  'Tập 21', 24, 'series', 'ongoing', 284, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"赵娅婷","avatar":""},{"name":"林亚冬","avatar":"https://image.tmdb.org/t/p/w185/6FcYUspG8ZRTNtq3GiOLsSOWZGp.jpg"},{"name":"钟晨瑶","avatar":"https://image.tmdb.org/t/p/w185/dbxxwJZYSXHfb6gTSxemiseVzOP.jpg"},{"name":"彭诗杰","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Fu Sheng Zhi Bai She Qian Yuan","浮生之白蛇前缘"]', '{"id":"333555","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/mDp79asZJVzVDDPQCpzBf8DI4do.png","backdrop_url":"https://image.tmdb.org/t/p/original/m9bZzGX9OlV8caWmOLICgteUA2P.jpg","poster_url":"https://image.tmdb.org/t/p/original/mm6QrRz7Isiw3vRXX5lDM33csNe.jpg","aspect_ratio":2.436}', '{"id":null,"vote_average":null}', 
  1789378914754, '2026-09-14T12:06:36.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phu-sinh-bach-xa-tien-duyen', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phu-sinh-bach-xa-tien-duyen', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'phu-sinh-bach-xa-tien-duyen';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('phu-sinh-bach-xa-tien-duyen', 'Phù Sinh: Bạch Xà Tiền Duyên', 'Prelude of the White Snake', 'phù sinh: bạch xà tiền duyên prelude of the white snake 赵娅婷 林亚冬 钟晨瑶 彭诗杰', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hanakimi-phan-2', 'Hana-Kimi (Phần 2)', 'Hana-Kimi (Season 2)', 'https://phimimg.com/upload/vod/20260705-1/a08c40145f765c8bd186e77ef8da67e6.jpg', 'https://phimimg.com/upload/vod/20260705-1/0019fafae5546eb65eeadcca477abb25.jpg', '<p>Mizuki Ashiya đang thực hiện một nhiệm vụ táo bạo: cải trang thành nam sinh và ghi danh vào một trường nội trú nam sinh để tiếp cận thần tượng của mình – ngôi sao nhảy cao Izumi Sano. Thế nhưng, sau khi thâm nhập thành công, cô bàng hoàng phát hiện ra anh đã đột ngột từ bỏ thể thao! Giờ đây, Mizuki vừa phải khéo léo né tránh mọi sự nghi ngờ để bảo vệ thân phận thật, vừa phải tìm cách lay động trái tim chàng trai mà cô hằng ngưỡng mộ — tất cả diễn ra giữa sự náo loạn và rắc rối của một ký túc xá toàn nam giới!</p>', 
  'Hoàn Tất (12/12)', 12, 'hoathinh', 'completed', 445, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"山根綺","avatar":"https://image.tmdb.org/t/p/w185/va0XORY6VchoceyqywJ4KxsVN5s.jpg"},{"name":"八代拓","avatar":"https://image.tmdb.org/t/p/w185/eVdB6myaNJ4h38UU9hHHlsaCWHn.jpg"},{"name":"戸谷菊之介","avatar":"https://image.tmdb.org/t/p/w185/tSAHe7tjN7luUD1Tx5yPSCuCnuD.jpg"},{"name":"Uchiyama Koki","avatar":"https://image.tmdb.org/t/p/w185/sllSm3iZZWVLTBrDZQRtWrZUfEj.jpg"},{"name":"梅原裕一郎","avatar":"https://image.tmdb.org/t/p/w185/lScrvZi4tKKpk3PbnIjLVjHVNJn.jpg"},{"name":"川島零士","avatar":"https://image.tmdb.org/t/p/w185/tJriYA3tctzKP3ZnAwsxkey9iyU.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Hana-Kimi","Hanazakari no Kimitachi e","Hana-Kimi: For You in Full Blossom","For You in Full Blossom","花ざかりの君たちへ"]', '{"id":"254492","type":"tv","vote_average":7.5,"vote_count":26,"logo_url":"https://image.tmdb.org/t/p/original/seei2HKD5fxqUX3OBXoAOz4Byzk.png","backdrop_url":"https://image.tmdb.org/t/p/original/l3Bj5kxKbifMKoYetkiTiPHoUTk.jpg","poster_url":"https://image.tmdb.org/t/p/original/hZU0HRRGm9l4iRpUL98cMUogkge.jpg","aspect_ratio":4.848}', '{"id":"tt38646611","vote_average":null}', 
  1789378914753, '2026-09-14T12:04:06.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanakimi-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanakimi-phan-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanakimi-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanakimi-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanakimi-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hanakimi-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'hanakimi-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hanakimi-phan-2', 'Hana-Kimi (Phần 2)', 'Hana-Kimi (Season 2)', 'hana-kimi (phần 2) hana-kimi (season 2) 山根綺 八代拓 戸谷菊之介 uchiyama koki 梅原裕一郎 川島零士', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em', 'Yêu một người khác / Yêu Một Người Khác Không Phải Em', 'A Love Other Than Yours', 'https://phimimg.com/uploads/movies/20260914/yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em-thumb.webp', 'https://phimimg.com/uploads/movies/20260914/yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em-poster.webp', '<p>Phim khai thác câu chuyện thực tế và đầy cảm xúc về cặp đôi Namgoong Ho và Lee Mi-do đã gắn bó bên nhau suốt 10 năm. Khi sự quen thuộc dần lấn át những rung động ban đầu và họ đứng trước ngưỡng cửa hôn nhân, mối quan hệ bắt đầu xuất hiện những vết rạn và khoảng cách.</p>', 
  'Tập 2', 14, 'series', 'ongoing', 44, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"서강준","avatar":"https://image.tmdb.org/t/p/w185/a73St97D7GmJteo3s3rNKxQWk7a.jpg"},{"name":"안은진","avatar":"https://image.tmdb.org/t/p/w185/cZDp8Qim5tmUN9gQxPkBOE5MS8w.jpg"},{"name":"이주안","avatar":"https://image.tmdb.org/t/p/w185/bTRF3R85bd2u68W4VInNtXz2Avw.jpg"},{"name":"조아람","avatar":"https://image.tmdb.org/t/p/w185/vcJF048TtTA7uiOGKkzTLp3MdeB.jpg"},{"name":"이민재","avatar":"https://image.tmdb.org/t/p/w185/o1mZIKQuXIj8nGUWxUp4c2z7VoG.jpg"},{"name":"김남희","avatar":"https://image.tmdb.org/t/p/w185/isgY8huXgnoW7AD97vKYlhJwAyI.jpg"},{"name":"김미경","avatar":"https://image.tmdb.org/t/p/w185/bJLkarteB2O0duu5ABvM5QFRuax.jpg"},{"name":"곽시양","avatar":"https://image.tmdb.org/t/p/w185/8fHGivHyjPxWjLFNlFratxey0To.jpg"},{"name":"허지나","avatar":"https://image.tmdb.org/t/p/w185/qAlevBKYdXjwiijFdhm0gduguaC.jpg"},{"name":"이준혁","avatar":"https://image.tmdb.org/t/p/w185/bgZrYipsty7yTMHEy4cmVmfWJzQ.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["不是你的恋爱","君以外の恋愛","Neo Malgo Dareun Yeonae","เมื่อหัวใจมีใครอีกคน","不是和你談的戀愛","Not You, Another Love","너 말고 다른 연애"]', '{"id":"314939","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/xkt5Bwiob07cbImbPtaZOJ43Vp7.png","backdrop_url":"https://image.tmdb.org/t/p/original/moUjiEzpJVNZc7hyNRBbLPt0CPX.jpg","poster_url":"https://image.tmdb.org/t/p/original/iKgdhgBPi1cCRRqsUgaxUDRuFP6.jpg","aspect_ratio":5.191}', '{"id":"tt43736405","vote_average":null}', 
  1789378914752, '2026-09-14T06:28:32.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('yeu-mot-nguoi-khac-yeu-mot-nguoi-khac-khong-phai-em', 'Yêu một người khác / Yêu Một Người Khác Không Phải Em', 'A Love Other Than Yours', 'yêu một người khác / yêu một người khác không phải em a love other than yours 서강준 안은진 이주안 조아람 이민재 김남희 김미경 곽시양 허지나 이준혁', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bao-mau-bi-mat-cua-tieu-thu', 'Bảo Mẫu Bí Mật Của Tiểu Thư', 'Rich Girl Caretaker: I''m Secretly the Caregiver of the Most Popular Girl in This Rich Kid School', 'https://phimimg.com/upload/vod/20260705-1/bb555252d6405782a1ca8c04a6f4f310.jpg', 'https://phimimg.com/upload/vod/20260705-1/9cb6f0492fcdf331cb804240d4c7e2e9.jpg', '<p>Hinako Konohana là một tiểu thư hoàn hảo trong mắt mọi người — duyên dáng, thanh lịch và không một tì vết… hoặc ít nhất đó là những gì họ nghĩ. Đằng sau cánh cửa đóng kín, cô nàng lại là một &quot;thảm họa&quot; toàn diện, kẻ thậm chí không thể tự xoay xở với những công việc nhà cơ bản nhất! Khi cậu học sinh bình thường Itsuki Tomonari trở thành người chăm sóc cho cô, cậu bị kéo vào cuộc chiến dọn dẹp rắc rối 24/7 để bảo vệ hình tượng &quot;hoàn mỹ&quot; của nàng tiểu thư. Cuộc sống chung đầy vụng về và hỗn loạn không ngừng ấy, trớ trêu thay, lại bắt đầu nhen nhóm thành một thứ cảm xúc ngọt ngào tựa như tình yêu…</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 537, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"上村祐翔","avatar":"https://image.tmdb.org/t/p/w185/boQMSI9WA5x2LYDEsiq0udeKMNe.jpg"},{"name":"小原好美","avatar":"https://image.tmdb.org/t/p/w185/3wjTzpJpBiTkLexdMmo9a3wfgRT.jpg"},{"name":"大西沙織","avatar":"https://image.tmdb.org/t/p/w185/cziKB19QMFJ6DQDtxTn07uRY2hq.jpg"},{"name":"土屋李央","avatar":"https://image.tmdb.org/t/p/w185/7X6XQXYqIEWmNzFhrIGPcPnmziY.jpg"},{"name":"熊谷健太郎","avatar":"https://image.tmdb.org/t/p/w185/hsSdTc4PBuLOQedZMsTS6AHvC8l.jpg"},{"name":"前島亜美","avatar":"https://image.tmdb.org/t/p/w185/yKOSGmrl4kWNijgjmoTT1Soz8oq.jpg"},{"name":"小清水亜美","avatar":"https://image.tmdb.org/t/p/w185/e5sU0stGjTMtFoj0jjHH7OFUqYC.jpg"},{"name":"子安武人","avatar":"https://image.tmdb.org/t/p/w185/8uBkNDKPNmp9JWgMUI02NVyfhi1.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Saijo no Osewa: Takane no Hana-darake na Meimonkō de, Gakuin-ichi no Ojō-sama (Seikatsu Nōryoku Kai Mu)","Saijo no Osewa: Takane no Hanadarake na Meimonkou de, Gakuin Ichi no Ojousama (Seikatsu Nouryoku Kaimu) wo Kagenagara Osewa suru Koto ni Narimashita","Saijo no Osewa","Saijo no Osewa Takane no Hanadarake na Meimonkou de Gakuin Ichi no Ojou-sama Seikatsu Nouryoku Kaimu wo Kagenagara Osewa suru Koto ni Narimashita","Rich Girl Caretaker","才女のお世話 高嶺の花だらけな名門校で、学院一のお嬢様（生活能力皆無）を陰ながらお世話することになりました"]', '{"id":"312849","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/rt56VkGQNSufmJNLkuBBjIt08NA.png","backdrop_url":"https://image.tmdb.org/t/p/original/5GF3fifAe3uElhci6TI09VHBMHA.jpg","poster_url":"https://image.tmdb.org/t/p/original/5vVcJljxO9z1Y5pt4f2axv4NFpb.jpg","aspect_ratio":4.156}', '{"id":"tt41278600","vote_average":null}', 
  1789378914751, '2026-09-14T01:34:12.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bao-mau-bi-mat-cua-tieu-thu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bao-mau-bi-mat-cua-tieu-thu', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bao-mau-bi-mat-cua-tieu-thu', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bao-mau-bi-mat-cua-tieu-thu', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bao-mau-bi-mat-cua-tieu-thu', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bao-mau-bi-mat-cua-tieu-thu', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'bao-mau-bi-mat-cua-tieu-thu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bao-mau-bi-mat-cua-tieu-thu', 'Bảo Mẫu Bí Mật Của Tiểu Thư', 'Rich Girl Caretaker: I''m Secretly the Caregiver of the Most Popular Girl in This Rich Kid School', 'bảo mẫu bí mật của tiểu thư rich girl caretaker: i''m secretly the caregiver of the most popular girl in this rich kid school 上村祐翔 小原好美 大西沙織 土屋李央 熊谷健太郎 前島亜美 小清水亜美 子安武人', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thu-tinh-gui-ngoai', 'Thư Tình Gửi Ngoại', 'Dear You', 'https://phimimg.com/uploads/movies/20260913/thu-tinh-gui-ngoai-thumb.webp', 'https://phimimg.com/uploads/movies/20260913/thu-tinh-gui-ngoai-poster.webp', '<p>Tác phẩm lấy bối cảnh Trung Quốc, Thái Lan từ thập niên 1950 tới hiện tại, nói về cuộc đời của bà Diệp Thục Như (Ngô Thiếu Khanh đóng). Xuất thân tiểu thư, bà trốn nhà đi theo chàng trai nghèo Trịnh Mộc Sinh (Vương Ngạn Đồng đóng), sinh ba người con. Vì biến cố chính trị, ông Mộc Sinh phiêu bạt tới Thái Lan, ở đây làm lụng kiếm tiền gửi về cho vợ con. Trịnh Mộc Sinh đầu óc nhanh nhạy, giỏi kiếm tiền, trợ cấp đủ đầy cho gia đình và một lòng một dạ với vợ. Đôi vợ chồng gửi gắm tình yêu qua những lá thư. Một ngày, Diệp Thục Như nhận bức ảnh chồng bên một phụ nữ và những đứa trẻ kèm tin ông đã qua đời. Cháu của Diệp Thục Như trưởng thành, từ Trung Quốc tới Thái Lan tìm thân nhân của ông nội, từ đó mở ra câu chuyện ấm áp, giàu nghĩa tình sau những lá thư mà Trịnh Mộc Sinh gửi cho vợ.</p>', 
  'Full', 1, 'single', 'completed', 83, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 1, 
  '[{"name":"Li Sitong","avatar":"https://image.tmdb.org/t/p/w185/eNFUCPRipS2vgsGl0GiWJ08XC4Z.jpg"},{"name":"王彦桐","avatar":"https://image.tmdb.org/t/p/w185/vwtSygwLFmFQuRb1euUfh8Gx7tZ.jpg"},{"name":"Wu Shaoqing","avatar":"https://image.tmdb.org/t/p/w185/wQPDmCZo3Kt16gus2Jx33xs6DKC.jpg"},{"name":"郑润奇","avatar":"https://image.tmdb.org/t/p/w185/b7BwYuWxTNqHKKnlvqNKtfUq9lb.jpg"},{"name":"王晓慧","avatar":"https://image.tmdb.org/t/p/w185/pJ2HLxSAwpXT4l16U6nybnhUBDS.jpg"},{"name":"赵曙光","avatar":"https://image.tmdb.org/t/p/w185/ypOq0Z7I9yI3Jxw626HvWEQ7zqA.jpg"},{"name":"李德如","avatar":"https://image.tmdb.org/t/p/w185/5bYeqEGqDsku7xXERn573FODx21.jpg"},{"name":"Li Shuhao","avatar":"https://image.tmdb.org/t/p/w185/xpkDGqS15ROB5wSGFGYTzJy6s2s.jpg"},{"name":"อุษา เสมคำ","avatar":"https://image.tmdb.org/t/p/w185/dJjJeB3lY3lHqtliLyXFwLvCOwR.jpg"},{"name":"Fang Peisong","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"}]', 
  '["Dear You","Thư Tình Gửi Ngoại","จดหมายรักถึงอาม่า","おばあちゃんへのラブレター","給阿マ的情書","给阿嬷的情书","Lettres d''amour de ma grand-mère","Gei a ma de qing shu","給阿嬤的情書"]', '{"id":"1671548","type":"movie","vote_average":8.9,"vote_count":63,"logo_url":"https://image.tmdb.org/t/p/original/bFd1iAZlr2GUuXv9nh0DPnyk0vt.png","backdrop_url":"https://image.tmdb.org/t/p/original/AwmlL79nKTcX5tzAhyoV298xXlz.jpg","poster_url":"https://image.tmdb.org/t/p/original/rjmhzdVS3Ia535pFawju857e2Na.jpg","aspect_ratio":3.254}', '{"id":"tt41791573","vote_average":8.6}', 
  1789378914750, '2026-09-13T21:12:23.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-tinh-gui-ngoai', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-tinh-gui-ngoai', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-tinh-gui-ngoai', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-tinh-gui-ngoai', 'le_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-tinh-gui-ngoai', 'phim_chieu_rap');
DELETE FROM movies_fts WHERE slug = 'thu-tinh-gui-ngoai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thu-tinh-gui-ngoai', 'Thư Tình Gửi Ngoại', 'Dear You', 'thư tình gửi ngoại dear you li sitong 王彦桐 wu shaoqing 郑润奇 王晓慧 赵曙光 李德如 li shuhao อุษา เสมคำ fang peisong', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tai-phiet-va-canh-sat-phan-2', 'Tài phiệt và Cảnh sát (Phần 2)', 'Flex X Cop (Season 2)', 'https://phimimg.com/uploads/movies/20260810/tai-phiet-va-canh-sat-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260810/tai-phiet-va-canh-sat-phan-2-poster.webp', '<p>Sau Season 1, Yi-soo đã thực sự nhận ra mình muốn trở thành một cảnh sát, chứ không còn xem công việc này như trò chơi của một thiếu gia. Anh hoàn thành khóa đào tạo chính thức tại Học viện Cảnh sát, sau đó quay trở lại Đội Trọng án 1. Lần này, Yi-soo đã trưởng thành và chuyên nghiệp hơn, nhưng vẫn giữ phong cách điều tra rất đặc biệt: khi cảnh sát gặp bế tắc, anh có thể dùng tiền bạc, các mối quan hệ và nguồn lực khổng lồ của gia đình tài phiệt để mở ra những hướng điều tra mà người bình thường không thể tiếp cận.</p>', 
  'Tập 12', 14, 'series', 'ongoing', 851, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"안보현","avatar":"https://image.tmdb.org/t/p/w185/2pNNCnjI1TwxjyP3Y4cJln1wOKE.jpg"},{"name":"정은채","avatar":"https://image.tmdb.org/t/p/w185/cw3Ia40hTP1SfGj0Qw9pqRaNill.jpg"},{"name":"강상준","avatar":"https://image.tmdb.org/t/p/w185/ntVm8JzE6eXvfDsvDOY9hQQbEmP.jpg"},{"name":"김신비","avatar":"https://image.tmdb.org/t/p/w185/or6KtPM9qvgBuiXsNImpCUBjMit.jpg"},{"name":"김명수","avatar":"https://image.tmdb.org/t/p/w185/pEAUSMEr5sxC5bHpu6UJnNs6t4W.jpg"},{"name":"정가희","avatar":"https://image.tmdb.org/t/p/w185/4W8uhfX4Gpy4R4vuBORa0B6izpL.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["黄金汤匙","金汤匙","财阀X刑警","財閥X刑事","골드스푼","Chaebol","Chaebol X Hyeongsa","FlexxCop","재벌 X 형사","재벌X형사 2","Chaebol X Detective","재벌X형사"]', '{"id":"220074","type":"tv","vote_average":7.8,"vote_count":43,"logo_url":"https://image.tmdb.org/t/p/original/42Dzr3D1YEeCsFFE7OD2nm4dH1p.png","backdrop_url":"https://image.tmdb.org/t/p/original/nOGPxfYqd0f3oeFGGinpDOP68MQ.jpg","poster_url":"https://image.tmdb.org/t/p/original/2eWH2RDxpbIfEs17BpJTQhcOqRs.jpg","aspect_ratio":5.95}', '{"id":"tt30413181","vote_average":7.9}', 
  1789378914749, '2026-09-13T20:34:23.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-phiet-va-canh-sat-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-phiet-va-canh-sat-phan-2', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-phiet-va-canh-sat-phan-2', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-phiet-va-canh-sat-phan-2', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-phiet-va-canh-sat-phan-2', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-phiet-va-canh-sat-phan-2', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-phiet-va-canh-sat-phan-2', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'tai-phiet-va-canh-sat-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tai-phiet-va-canh-sat-phan-2', 'Tài phiệt và Cảnh sát (Phần 2)', 'Flex X Cop (Season 2)', 'tài phiệt và cảnh sát (phần 2) flex x cop (season 2) 안보현 정은채 강상준 김신비 김명수 정가희', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dung-thanh', 'Dung Thành', 'City Rong / Rong Cheng', 'https://phimimg.com/uploads/movies/20260913/dung-thanh-thumb.webp', 'https://phimimg.com/uploads/movies/20260913/dung-thanh-poster.webp', '<p>Liên Diệp, đường chủ bang Tam Sơn, bất ngờ gặp thảm án cả nhà bị sát hại. Để điều tra chân tướng và báo thù, anh liên thủ với Lý Minh Viễn - người bạn nối khố hiện là Phó Cục trưởng Cục Cảnh sát Dung Thành, và Trần Điệp Y - bà chủ vũ trường Hoa Nhài. Trong quá trình phá án, họ lần lượt làm sáng tỏ hàng loạt vụ án bí ẩn do Matsui Jiichiro, tên trùm gián điệp Nhật Bản, dàn dựng nhằm thâm nhập Dung Thành. Trước âm mưu xâm lược của quân Nhật, họ không quản hiểm nguy, xông pha nơi tuyến đầu, quyết tâm bảo vệ quê hương, đất nước.</p>', 
  'Tập 6', 24, 'series', 'ongoing', 60, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"杨业明","avatar":"https://image.tmdb.org/t/p/w185/dOjn9t7lUVlXdMsY6JUsNXSyccp.jpg"},{"name":"向昕","avatar":"https://image.tmdb.org/t/p/w185/uTlqf8bXQvYOfL98M5hprIDTO5c.jpg"},{"name":"滕文昊","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Volcano","熔城"]', '{"id":"332014","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/yLBXldClV6vLyGete2bCRMbJjwG.jpg","poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914748, '2026-09-13T17:06:23.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-thanh', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-thanh', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-thanh', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'dung-thanh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dung-thanh', 'Dung Thành', 'City Rong / Rong Cheng', 'dung thành city rong / rong cheng 杨业明 向昕 滕文昊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'Gintama The Movie 2026: Yoshiwara Trong Biển Lửa', 'Gintama The Movie 2026: Yoshiwara In Flames', 'https://phimimg.com/uploads/movies/20260913/gintama-the-movie-2026-yoshiwara-trong-bien-lua-thumb.webp', 'https://phimimg.com/uploads/movies/20260913/gintama-the-movie-2026-yoshiwara-trong-bien-lua-poster.webp', '<p>Yoshiwara — khu phố đèn đỏ khổng lồ nằm sâu dưới lòng đất, nơi ánh mặt trời không bao giờ chạm tới và pháp luật gần như vô dụng. Tại đây, dục vọng và bạo lực bị thống trị bởi Housen, “Dạ Vương” khét tiếng thuộc tộc chiến binh Yato.  Ở Edo, Sakata Gintoki cùng nhóm Yorozuya gặp Seita, cậu bé mồ côi sống bằng nghề móc túi. Seita tin rằng Hinowa — Oiran nổi tiếng nhất Yoshiwara — chính là mẹ ruột thất lạc của mình.  Cảm động trước mong muốn giản đơn “chỉ được gặp mẹ một lần”, Gintoki và đồng đội quyết định bước vào Yoshiwara để giúp cậu. Nhưng nơi đây bị Housen cai trị bằng sức mạnh tuyệt đối, biến cuộc tìm kiếm thành trận chiến giữa tình người và bóng tối của “thành phố đêm vĩnh cửu”.</p>', 
  'Full', 1, 'hoathinh', 'completed', 60, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"杉田智和","avatar":"https://image.tmdb.org/t/p/w185/cv5zuPZySNsHXu24pjKLYCRzJ2J.jpg"},{"name":"阪口大助","avatar":"https://image.tmdb.org/t/p/w185/cP9lnoYSCyIpSlUkZN4k6RoD7fF.jpg"},{"name":"釘宮理恵","avatar":"https://image.tmdb.org/t/p/w185/xHonhNFpTpz9zCVXLAF7D4OuHLv.jpg"},{"name":"Hino Satoshi","avatar":"https://image.tmdb.org/t/p/w185/8ZJIiwIVF2zDyyFr7oXewj0eEuu.jpg"},{"name":"甲斐田裕子","avatar":"https://image.tmdb.org/t/p/w185/wttsRGyYySLPfNcDtAbNLVizHLx.jpg"},{"name":"銀河万丈","avatar":"https://image.tmdb.org/t/p/w185/qiXnKaZheMiVyA1U2mX9tPdNA3T.jpg"},{"name":"三瓶由布子","avatar":"https://image.tmdb.org/t/p/w185/gms4G7ZRIQYXI9zsorkQr8aHnOU.jpg"},{"name":"井上喜久子","avatar":"https://image.tmdb.org/t/p/w185/pPxGWy53FgYSC79zmxblmHe0gI3.jpg"},{"name":"大塚芳忠","avatar":"https://image.tmdb.org/t/p/w185/3RHQcrsWnAFK6AifSis1lMq08cR.jpg"},{"name":"山口勝平","avatar":"https://image.tmdb.org/t/p/w185/mJyxKRZxLv9D7LH5KcNSkjSKYOB.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Shin-Gekijōban Gintama: Yoshiwara Daienjō","Shin Gekijouban Gintama: Yoshiwara Dai Enjou","Shin Gekijouban Gintama:  Yoshiwara Daienjou","Gintama the Movie: Yoshiwara in Flames","Gintama la película (2026): Yoshiwara en llamas","新劇場版 銀魂 -吉原大炎上-"]', '{"id":"1530941","type":"movie","vote_average":8.9,"vote_count":17,"logo_url":"https://image.tmdb.org/t/p/original/pM4k5NvbpX88RQxckH4flRRl570.png","backdrop_url":"https://image.tmdb.org/t/p/original/8qSFFK9AcMl2Ecp249f5J3Nr8MK.jpg","poster_url":"https://image.tmdb.org/t/p/original/CDZsdoEh3X2sxyk6B6H3Rm5ELn.jpg","aspect_ratio":1.212}', '{"id":"tt37931873","vote_average":9.6}', 
  1789378914747, '2026-09-13T17:02:50.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'le_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'anime_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'anime_movie');
DELETE FROM movies_fts WHERE slug = 'gintama-the-movie-2026-yoshiwara-trong-bien-lua';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('gintama-the-movie-2026-yoshiwara-trong-bien-lua', 'Gintama The Movie 2026: Yoshiwara Trong Biển Lửa', 'Gintama The Movie 2026: Yoshiwara In Flames', 'gintama the movie 2026: yoshiwara trong biển lửa gintama the movie 2026: yoshiwara in flames 杉田智和 阪口大助 釘宮理恵 hino satoshi 甲斐田裕子 銀河万丈 三瓶由布子 井上喜久子 大塚芳忠 山口勝平', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'Cậu Và Tớ Là Hai Thái Cực Đối Lập (Seihantai na Kimi to Boku) (Phần 2)', 'You and I Are Polar Opposites (Season 2)', 'https://phimimg.com/upload/vod/20260706-1/825b10536abaa977ea710bf4cbd4a7e4.jpg', 'https://phimimg.com/upload/vod/20260706-1/a7325eb2658ffe5ad2d8a782910f5542.jpg', '<p>Suzuki, cô nữ sinh trung học sôi nổi và hướng ngoại, trót &quot;cảm nắng&quot; cậu bạn cùng lớp Tani hoàn toàn trái ngược với cô. Liệu cô có vượt qua được cảm giác hồi hộp để ngỏ lời hẹn hò?</p>', 
  'Tập 11', 24, 'hoathinh', 'ongoing', 622, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"鈴代紗弓","avatar":"https://image.tmdb.org/t/p/w185/7wEX0bXCs2djnp0dKsCqmMKZpZV.jpg"},{"name":"坂田将吾","avatar":"https://image.tmdb.org/t/p/w185/fRRPNBz3OCNRdmLdUTdpq7dGqxM.jpg"},{"name":"谷口夢奈","avatar":"https://image.tmdb.org/t/p/w185/zAiaPjmCilD3AhcTdDoGf2z1mUA.jpg"},{"name":"平林瑚夏","avatar":"https://image.tmdb.org/t/p/w185/vTaOJ2cMUUcw2l6VarzLSbKACcQ.jpg"},{"name":"岩田アンジ","avatar":"https://image.tmdb.org/t/p/w185/8YdsLlhXiVL1Qyn59HzbGubS2Fq.jpg"},{"name":"島袋美由利","avatar":"https://image.tmdb.org/t/p/w185/rjhyRM2hn1deQG1V6cwC8AEEKNT.jpg"},{"name":"加藤渉","avatar":"https://image.tmdb.org/t/p/w185/7PUe94Ju0klZfEutSSbdOJyaV0y.jpg"},{"name":"大森こころ","avatar":"https://image.tmdb.org/t/p/w185/kWFIBZA39oPW9J2SM4OuZqw8u28.jpg"},{"name":"楠木ともり","avatar":"https://image.tmdb.org/t/p/w185/iiGJPsLAnOoqmkNjLWCvbbDJw50.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["相反的你和我","आप और मैं एक दूसरे के बिल्कुल विपरीत हैं","Seihantai na Kimi to Boku","Ти і я - полярні протилежності","正反対な君と僕"]', '{"id":"278043","type":"tv","vote_average":8.4,"vote_count":68,"logo_url":"https://image.tmdb.org/t/p/original/bnwvsAi3jA6aFCZ6qf1HPTuCeom.png","backdrop_url":"https://image.tmdb.org/t/p/original/lhzbea9yCmv90nmX25d9WEnn22V.jpg","poster_url":"https://image.tmdb.org/t/p/original/9hRuMU33DBz4z1vaYBRqLLuFFbQ.jpg","aspect_ratio":2.85}', '{"id":"tt36034547","vote_average":null}', 
  1789378914746, '2026-09-13T17:00:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('cau-va-to-la-hai-thai-cuc-doi-lap-seihantai-na-kimi-to-boku-phan-2', 'Cậu Và Tớ Là Hai Thái Cực Đối Lập (Seihantai na Kimi to Boku) (Phần 2)', 'You and I Are Polar Opposites (Season 2)', 'cậu và tớ là hai thái cực đối lập (seihantai na kimi to boku) (phần 2) you and i are polar opposites (season 2) 鈴代紗弓 坂田将吾 谷口夢奈 平林瑚夏 岩田アンジ 島袋美由利 加藤渉 大森こころ 楠木ともり', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'than-tai-dau-chiem-long', 'Thần Tài Đậu Chiêm Long', 'Golden Curse', 'https://phimimg.com/uploads/movies/20260818/than-tai-dau-chiem-long-thumb.webp', 'https://phimimg.com/uploads/movies/20260818/than-tai-dau-chiem-long-poster.webp', '<p>Ba mươi sáu bàng môn, bảy mươi hai tả đạo, trong đó “Bí Bảo” được xem là đứng đầu. Bước chân vào con đường phát tài, tranh đoạt tạo hóa của đất trời, cũng đồng nghĩa với việc đặt mình vào vô số hiểm cảnh. Đậu Chiêm Long – vị “Thần Tài” tà môn nhất lịch sử – mang trong mình một vận mệnh không thể thoát khỏi. Giữa những bí thuật dân gian, kỳ cảnh quỷ dị và vòng xoáy nhân quả, hắn buộc phải nghịch thiên cải mệnh, phá vỡ xiềng xích số phận và tìm ra con đường sống của chính mình.</p>', 
  'Tập 7', 16, 'hoathinh', 'ongoing', 222, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Jiang Bian","avatar":"https://image.tmdb.org/t/p/w185/udyiTMO6F4pb5JgPO4U9bxtHWZ.jpg"},{"name":"张思王之","avatar":"https://image.tmdb.org/t/p/w185/8wzlUYBl73STYtqpO6XH9wYlQYH.jpg"},{"name":"赵梦娇","avatar":"https://image.tmdb.org/t/p/w185/amdKCPWzZ3A5oBQeqlyKcXzY8Ep.jpg"},{"name":"孟宇","avatar":"https://image.tmdb.org/t/p/w185/mNEHfaTlNo8Xe33Sr6f8TzZLoHD.jpg"},{"name":"李敏","avatar":"https://image.tmdb.org/t/p/w185/lUGotoSpWx8oDD6MRYoZPtf0h27.jpg"},{"name":"凌振赫","avatar":"https://image.tmdb.org/t/p/w185/iIIFfAfOgR1zdq20ZN8rfc6QO65.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["The Wealth God Dou Zhanlong","财神窦占龙"]', '{"id":"330609","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/1OuxPsIEQE6NnATVV3EJcB17OUH.jpg","poster_url":"https://image.tmdb.org/t/p/original/zwSPKgp4UXGutfrzyue4Tha3Nc8.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914745, '2026-09-13T17:00:41.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-tai-dau-chiem-long', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'than-tai-dau-chiem-long';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('than-tai-dau-chiem-long', 'Thần Tài Đậu Chiêm Long', 'Golden Curse', 'thần tài đậu chiêm long golden curse jiang bian 张思王之 赵梦娇 孟宇 李敏 凌振赫', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tham-uyen-vo-gian', 'Thâm Uyên Vô Gian', 'Abyss', 'https://phimimg.com/uploads/movies/20260910/tham-uyen-vo-gian-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/tham-uyen-vo-gian-poster.webp', '<p>Thâm Uyên Vô Gian là bộ phim hình sự trinh thám do Lưu Hải Ba (đạo diễn "Ba Xoa Kích", "Bà Mẹ Nóng Bóng") chỉ đạo, được chuyển thể từ tiểu thuyết cùng tên của Thâm Lam. Bộ phim có sự tham gia diễn chính của Nhậm Gia Luân (từng đóng "Cẩm Y Chi Hạ", "Châu Sinh Như Cố"), Tần Tuấn Kiệt (từng đóng "Bong Bóng Mùa Hè", "Thanh Vân Chí"), cùng sự tham gia đặc biệt của Vương Nghiễn Huy, Điền Tiểu Khiết, và sự góp mặt với vai trò khách mời đặc biệt Hà Băng. Một tiểu thuyết trinh thám trực tuyến mang tên Vực Thẳm bất ngờ được đăng tải, phá vỡ sự bình yên kéo dài nhiều năm của một thị trấn nhỏ. Nhiều tình tiết trong truyện có sự tương đồng đáng kinh ngạc với vụ án treo nhiều năm trước mà phía cảnh sát chưa từng công bố. Lý Thành, cảnh sát mới nhiệt huyết và chính trực, liên tục đấu trí căng thẳng với nhiều nghi phạm. Cuối cùng Lý Thành đã vén lên màn sương, điều tra ra sự thật được che giấu dưới những mối quan hệ tình thân và tình bạn đầy đau xót.</p>', 
  'Hoàn Tất (16/16)', 16, 'series', 'completed', 288, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Nhậm Gia Luân","avatar":"https://image.tmdb.org/t/p/w185/5sBfnbHbTmNriFPGGD12mPpTNNO.jpg"},{"name":"Tần Tuấn Kiệt","avatar":"https://image.tmdb.org/t/p/w185/iYdwWhvd4QuipsNkeB3XzFa27jo.jpg"},{"name":"王砚辉","avatar":"https://image.tmdb.org/t/p/w185/umBp3VwmHy8bCcvgkLUtixq6bpD.jpg"},{"name":"田小洁","avatar":"https://image.tmdb.org/t/p/w185/cREJt7c3MChcZAGJSLzMGJxiMLz.jpg"},{"name":"He Bing","avatar":"https://image.tmdb.org/t/p/w185/xO4Qh5L4V7mHuceSK3E3GPlY1hz.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["深渊无间"]', '{"id":"301489","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/s9YSQAJtXjimsjBVsqLtJNnIjEs.jpg","poster_url":"https://image.tmdb.org/t/p/original/x0K8MJCSnlrZwKetekQEfhQiDmb.jpg","aspect_ratio":null}', '{"id":"tt38582061","vote_average":null}', 
  1789378914744, '2026-09-13T17:00:23.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tham-uyen-vo-gian', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tham-uyen-vo-gian', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tham-uyen-vo-gian', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tham-uyen-vo-gian', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'tham-uyen-vo-gian';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tham-uyen-vo-gian', 'Thâm Uyên Vô Gian', 'Abyss', 'thâm uyên vô gian abyss nhậm gia luân tần tuấn kiệt 王砚辉 田小洁 he bing', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thai-co-than-ton', 'Thái Cổ Thần Tôn', 'Ancient God', 'https://phimimg.com/uploads/movies/20260801/thai-co-than-ton-thumb.webp', 'https://phimimg.com/uploads/movies/20260801/thai-co-than-ton-poster.webp', '<p>Thái tử tối cao của Linh Giới bị hãm hại oan uổng, thân vong đạo tiêu, trùng sinh rơi xuống phàm trần, biến thành một tên tạp dịch hèn mọn. Trong người mang thần đan tạo hóa tuyệt thế và công pháp nghịch thiên, chỉ với một thanh kiếm gỉ, hắn lật nhào cả võ đạo giới. Song võ hồn đồng thời thức tỉnh, luyện hóa vạn linh, tham ngộ cả hai con đường thần hồn. Kho báu Thiên Ma, bí cảnh Hóa Long, di tích Viễn Cổ đều bị hắn giẫm đạp khắp nơi, chiến giáp Ma Tôn, kính Đại Hoang, vô số bảo vật vô thượng đều thu vào tay. Các thiên kiêu khắp nơi, bọn sâu mọt trong tông môn, tà tộc ngoại vực lần lượt xông lên tìm chết, đều bị hắn một kiếm quét ngang, đè bẹp tại chỗ. Thu phục Long hồn và Linh khuyển thông linh, bảo vệ những người thân cận và mỹ nhân bên cạnh, đạp qua Võ Vương, phá Võ Hoàng, đăng lâm Võ Tôn, một mình đối đầu 2 kẻ thù truyền kiếp là Long Già Thiên và Nam Cung Lăng Thiên, vạch trần âm mưu bị chôn vùi của thời kỳ Hắc Ám cổ xưa.</p>', 
  'Tập 17', 40, 'hoathinh', 'ongoing', 467, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Wei Yifan","avatar":"https://image.tmdb.org/t/p/w185/kBM5bzHb1FyNYjNWeZz8aEubHFf.jpg"},{"name":"Si Xi","avatar":"https://image.tmdb.org/t/p/w185/fKes6i2GGEb48kSjq19tXLhlBJs.jpg"},{"name":"朔小兔","avatar":""},{"name":"张恩泽","avatar":"https://image.tmdb.org/t/p/w185/xQPUHff51ByIZf1tr2IaHwJ4kqL.jpg"},{"name":"夜叉","avatar":"https://image.tmdb.org/t/p/w185/1nO0ZVummUhN3qqgvGXRCSAYsAN.jpg"},{"name":"北炎","avatar":""},{"name":"林帽帽","avatar":"https://image.tmdb.org/t/p/w185/dNKVYVg6nmzHxcwIGfSpY1btlH.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["太古神尊"]', '{"id":"330275","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/teWmJd5L3MfPSWCU025njsZ8lW.jpg","poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914743, '2026-09-13T16:59:56.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thai-co-than-ton', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thai-co-than-ton', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thai-co-than-ton', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thai-co-than-ton', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thai-co-than-ton', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thai-co-than-ton', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'thai-co-than-ton';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thai-co-than-ton', 'Thái Cổ Thần Tôn', 'Ancient God', 'thái cổ thần tôn ancient god wei yifan si xi 朔小兔 张恩泽 夜叉 北炎 林帽帽', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'co-nang-mot-sach', 'Cô Nàng Mọt Sách', 'Ascendance Of A Bookworm (Adopted Daughter Of An Archduke)', 'https://phimimg.com/upload/vod/20260413-1/123b7a5cfa19c587ac0fb3395cd828f0.jpg', 'https://phimimg.com/upload/vod/20260413-1/7a0e4154b3a97790815b0ffa25ffcf2b.jpg', '<p>Ritsu được thừa hưởng giác quan thứ sáu từ ông nội, cùng với một hộ pháp bảo vệ thuộc cõi âm tên là Blue Storm. Những hiện tượng kỳ lạ dường như luôn bám theo bộ đôi này, và nhiệm vụ của họ là phải tìm ra chân tướng của những sự kiện bí ẩn đó. Mỗi câu chuyện là một phần độc lập nhưng đều có sự xuất hiện của các nhân vật quen thuộc những người mà bạn sẽ dần thấu hiểu và trân trọng khi chứng kiến cách họ đối mặt với những thứ &quot;không thuộc về thế giới này&quot; theo phong cách riêng của mỗi người.</p>', 
  'Tập 21', 24, 'hoathinh', 'ongoing', 418, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"井口裕香","avatar":"https://image.tmdb.org/t/p/w185/38ZjRGBLD4lvfU3mSMyIBCIq85D.jpg"},{"name":"速水奨","avatar":"https://image.tmdb.org/t/p/w185/HU9LZJdb4H8coHiSaHiUprcFm1.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["O Sonho de uma Apaixonada por Livros","小書痴的下剋上","小書痴","爱书的下克上","小書痴的下剋上：為了成為圖書管理員不擇手段！","小书痴的下克上：为了成为图书管理员不择手段","Ascendance of a Bookworm","El ratón de Biblioteca","Ascenderé de ratón de biblioteca","El Ratón De Biblioteca: Haré cualquier cosa para convertirme en bibliotecaria","Honzuki no Gekokujō","本好きの下剋上","Honzuki no Gekokujou","Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan wo Erandeiraremasen","Honzuki no Gekokujou: Shisho ni Naru Tame ni wa Shudan o Erande Iraremasen","本好きの下剋上 司書になるためには手段を選んでいられません 第3期","本好きの下剋上～司書になるためには手段を選んでいられません～ 第3部","Honzuki no Gekokujou: Ryoushu no Youjo","本好きの下剋上 領主の養女","本好きの下剋上〜司書になるためには手段を選んでられません〜 領主の養女","책벌레의 하극상","책벌레의 하극상 ~사서가 되기 위해서라면 뭐든지 할 수 있어~ 영주의 양녀","Власть книжного червя: Я пойду на всё, чтоб стать библиотекарем","小書痴的下剋上第三季","小書痴的下剋上為了成為圖書管理員不擇手段第三季","小書痴的下剋上為了成為圖書管理員不擇手段","Історія буквоїжки: Стати бібліотекарем за будь-яку ціну","Ascendance of a Bookworm: Adopted Daughter of an Archduke","本好きの下剋上 司書になるためには手段を選んでいられません"]', '{"id":"91768","type":"tv","vote_average":8.1,"vote_count":136,"logo_url":"https://image.tmdb.org/t/p/original/gDAZ3q01S5eyKpkRS3U2zO6TXuR.png","backdrop_url":"https://image.tmdb.org/t/p/original/2ta3O7D1Nh42nTZof9qxJCVAvwk.jpg","poster_url":"https://image.tmdb.org/t/p/original/aVGueAM88cc4sX6PeMvuAPObDc4.jpg","aspect_ratio":3.373}', '{"id":"tt10885406","vote_average":7.8}', 
  1789378914742, '2026-09-13T16:59:12.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-nang-mot-sach', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-nang-mot-sach', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-nang-mot-sach', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-nang-mot-sach', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-nang-mot-sach', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-nang-mot-sach', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-nang-mot-sach', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'co-nang-mot-sach';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('co-nang-mot-sach', 'Cô Nàng Mọt Sách', 'Ascendance Of A Bookworm (Adopted Daughter Of An Archduke)', 'cô nàng mọt sách ascendance of a bookworm (adopted daughter of an archduke) 井口裕香 速水奨', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'sat-thu-noi-tro-vo-toi-la-sat-thu', 'Sát Thủ Nội Trợ (Vợ Tôi Là Sát Thủ)', 'A Bona Fide Killer', 'https://phimimg.com/uploads/movies/20260802/sat-thu-noi-tro-thumb.webp', 'https://phimimg.com/uploads/movies/20260802/sat-thu-noi-tro-poster.webp', '<p>Yoo Bo Na có một cuộc sống tưởng chừng bình thường bên chồng con và công việc quản lý bán hàng. Nhưng đằng sau vẻ ngoài của một người vợ, người mẹ mẫu mực, cô lại là “Kingfisher” – nữ sát thủ bắn tỉa khét tiếng chuyên xử lý những kẻ phạm tội thoát khỏi sự trừng phạt của pháp luật. Sau ba năm tạm rời nghề để sinh con, Bo Na buộc phải tái xuất và bước vào cuộc sống hai mặt đầy nguy hiểm. Trong lúc cố gắng giữ kín thân phận, cô không ngờ người chồng làm nghề phóng viên lại ngày càng tiến gần đến bí mật của mình.</p>', 
  'Hoàn Tất (14/14)', 14, 'series', 'completed', 1456, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"공효진","avatar":"https://image.tmdb.org/t/p/w185/u2ZDHJOHRkgzY0dpaORitoZjF4F.jpg"},{"name":"정준원","avatar":"https://image.tmdb.org/t/p/w185/iuVXuY4kyP3IP14aivYGMqZv0gF.jpg"},{"name":"이상이","avatar":"https://image.tmdb.org/t/p/w185/4OSOux7D8ZIbNsA7eINSwmHM9nb.jpg"},{"name":"성동일","avatar":"https://image.tmdb.org/t/p/w185/9VLRIvOyQSHkpJaeaBcmHzcEUQn.jpg"},{"name":"무진성","avatar":"https://image.tmdb.org/t/p/w185/4q6G7ols81nkXRuY5F2gebhFTfY.jpg"},{"name":"이은샘","avatar":"https://image.tmdb.org/t/p/w185/6zv1p5MNhJq24AfFPRXd4b2ejQB.jpg"},{"name":"김남희","avatar":"https://image.tmdb.org/t/p/w185/isgY8huXgnoW7AD97vKYlhJwAyI.jpg"},{"name":"하율리","avatar":"https://image.tmdb.org/t/p/w185/14nrDiXswkFLvPs5XpnJle9HaSw.jpg"},{"name":"최우성","avatar":"https://image.tmdb.org/t/p/w185/rtVfcQa6ZNbOky8qllrlyER0XV9.jpg"},{"name":"신현수","avatar":"https://image.tmdb.org/t/p/w185/cvykHsetBrlq7PgTbbrUrzXhJUL.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["人妻杀手","Yubunyeo Kilreo","Married Woman Killer","A Bona fide Killer","유부녀 킬러"]', '{"id":"294095","type":"tv","vote_average":10,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/6xQDL4hDXOFVaaEaIgFX0gfvXgs.png","backdrop_url":"https://image.tmdb.org/t/p/original/j9AqsMJxuq7NEYJX4Q1vSfKb5CG.jpg","poster_url":"https://image.tmdb.org/t/p/original/hMYD4cDZGsLNXXb3Xn5eKhMoqXX.jpg","aspect_ratio":4.1}', '{"id":"tt43616775","vote_average":null}', 
  1789378914741, '2026-09-13T16:58:44.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'sat-thu-noi-tro-vo-toi-la-sat-thu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('sat-thu-noi-tro-vo-toi-la-sat-thu', 'Sát Thủ Nội Trợ (Vợ Tôi Là Sát Thủ)', 'A Bona Fide Killer', 'sát thủ nội trợ (vợ tôi là sát thủ) a bona fide killer 공효진 정준원 이상이 성동일 무진성 이은샘 김남희 하율리 최우성 신현수', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nguoi-quyet-dinh', 'Người Quyết Định', 'The Underworld', 'https://phimimg.com/uploads/movies/20260904/nguoi-quyet-dinh-thumb.webp', 'https://phimimg.com/uploads/movies/20260904/nguoi-quyet-dinh-poster.webp', '<p>Thành phố Thi Thiềm mượn làn gió phát triển logistics để trỗi dậy, nhưng kéo theo đó là các băng nhóm xã hội đen mọc lên như nấm. Cảnh sát nằm vùng Lăng Triệt bị ép phải bắt cặp với Thẩm Thẩm Lân — một tên giang hồ lưu linh. Cả hai đi từ mâu thuẫn chồng chất đến lúc thấu hiểu và trân trọng lẫn nhau. Trên hành trình truy vết, nội gián liên tục xuất hiện, bức màn đen tối trong đồn cảnh sát dần lộ diện. Khi anh em trở thành quân cờ, công lý biến thành công cụ ngã giá, một cơn bão hắc bạch phân tranh mới chỉ vừa bắt đầu...</p>', 
  'Tập 24', 26, 'series', 'ongoing', 307, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"何健麒","avatar":"https://image.tmdb.org/t/p/w185/pTrPlkwVv65Pp4war1RPwGfZox1.jpg"},{"name":"吳念軒","avatar":"https://image.tmdb.org/t/p/w185/v8BsRtGI3Z0FWubtuK7B4a9IgOw.jpg"},{"name":"Khương Hạo Văn","avatar":"https://image.tmdb.org/t/p/w185/sy07oaWguC4Q4c45dRkFuRTYld0.jpg"},{"name":"Đường Văn Long","avatar":"https://image.tmdb.org/t/p/w185/1oPPOKKrsrSlAIF3nddfeKnQFSs.jpg"},{"name":"Lâm Kính Cương","avatar":"https://image.tmdb.org/t/p/w185/9tDdqjQv4kEgkfmwC7gwgJhdYZT.jpg"},{"name":"Bành Hạo Phong","avatar":"https://image.tmdb.org/t/p/w185/cxPvN8KD6UHjmEMn1Jlxsb4r6j.jpg"}]', '[{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["话事人"]', '{"id":"324878","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/bIt7k08CbAsG6MbEYJ0sxateOTS.png","backdrop_url":"https://image.tmdb.org/t/p/original/fBgTsFnr58CT8FGR3it4KHvTt9X.jpg","poster_url":"https://image.tmdb.org/t/p/original/nexVdco2JGnZ84KdtpkgKFKKMgp.jpg","aspect_ratio":3.716}', '{"id":null,"vote_average":null}', 
  1789378914740, '2026-09-13T16:56:58.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-quyet-dinh', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-quyet-dinh', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-quyet-dinh', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-quyet-dinh', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-quyet-dinh', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'nguoi-quyet-dinh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nguoi-quyet-dinh', 'Người Quyết Định', 'The Underworld', 'người quyết định the underworld 何健麒 吳念軒 khương hạo văn đường văn long lâm kính cương bành hạo phong', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'muc-than-ky', 'Mục Thần Ký', 'Tales Of Herding Gods', 'https://phimimg.com/upload/vod/20241028-1/79ad9da402005ec184aa14bd1f781d05.jpg', 'https://phimimg.com/upload/vod/20241028-1/33727a6c4cec6ab127dbb0092bc99c9e.jpg', '<p>Tần Mục sinh ra đã có thân thể phàm trần, sau khi khảo nghiệm, hắn trở thành thủ lĩnh của Thiên Ma Phái, được nước Diên Khang phong làm đệ nhất Thái Tuyết. Trong trận chiến phản loạn của Vương quốc Yankang, Tần Mục đã thu hút quỷ thần, gây ra một cơn bão lớn, sau đó theo Wu Khan vào Hoàng cung Lâu Lan, và tự mình chiến đấu khắp Thánh Cung. Ông trở về Diên Khang, hỗ trợ sư đoàn quốc gia dập tắt cuộc nổi loạn, xây dựng và bắn Đại bác Thần Mặt trời, và sau đó giành được quyền thừa kế của hoàng đế loài người và trở thành một thế hệ hoàng đế loài người mới. Tình cờ, Tần Mục biết được kinh nghiệm sống của mình, dưới sự giúp đỡ của Đạo Môn Tiểu Vũ Cảnh và những người khác, hắn đã mở ra đại thế giới cải cách siêu nhiên Đạo giáo.</p>', 
  'Tập 100', 120, 'hoathinh', 'ongoing', 634, 2024, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Ruoyu Zhang","avatar":"https://image.tmdb.org/t/p/w185/xqmmuN34EtJ50xqqrvD3fB7QVX4.jpg"},{"name":"姚铭舜","avatar":"https://image.tmdb.org/t/p/w185/zODOUTvGaoeXH2ITUxmwNUPR9KI.jpg"},{"name":"李欣","avatar":"https://image.tmdb.org/t/p/w185/6daNeAZ9Oys6S4YoXfcTSxq8tDj.jpg"},{"name":"程玉珠","avatar":"https://image.tmdb.org/t/p/w185/1OoKCFRvTACC1O25qMqtditbCTb.jpg"},{"name":"Qingqing Du","avatar":"https://image.tmdb.org/t/p/w185/l4sCRMlddNFCeywWoU99SbrxaEn.jpg"},{"name":"虞晓旭","avatar":"https://image.tmdb.org/t/p/w185/2DpDqUB2bnr8SUPGcOJgZ2Tn0Xt.jpg"},{"name":"高嗣航","avatar":"https://image.tmdb.org/t/p/w185/8IIPqT9juefSHsO5F48rTysnv7p.jpg"},{"name":"Hao Tang","avatar":"https://image.tmdb.org/t/p/w185/l8wliv3AGoSF65uk51CEBLdfwrE.jpg"},{"name":"张恒","avatar":"https://image.tmdb.org/t/p/w185/2wGJu7mEf2fKJOQAgQYCe4yffdc.jpg"},{"name":"王宇航","avatar":"https://image.tmdb.org/t/p/w185/vw4kQXcOaQPytgazD1gRqQ2fMwm.jpg"}]', '[{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["牧神记","Mu Shen Ji","Mushen Ji","牧神记动画","Contos dos Deuses Pastores","Contos de Qin Mu","Notas do Pastor","Diário do Pastor","O Conto do Pastor","Tales of Qin Mu","Shepherd''s Notes","Shepherd''s Diary","The Shepherd''s Tale","Tales of Herding Gods"]', '{"id":"236534","type":"tv","vote_average":8.2,"vote_count":14,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/3XYx3pQh2sKRnc9CI9tY7UU2SPv.jpg","poster_url":"https://image.tmdb.org/t/p/original/k6q3k6lUvjbYdgQyqIGVaY9VlAm.jpg","aspect_ratio":null}', '{"id":"tt33501934","vote_average":8.6}', 
  1789378914739, '2026-09-13T16:56:34.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muc-than-ky', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muc-than-ky', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muc-than-ky', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muc-than-ky', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muc-than-ky', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muc-than-ky', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'muc-than-ky';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('muc-than-ky', 'Mục Thần Ký', 'Tales Of Herding Gods', 'mục thần ký tales of herding gods ruoyu zhang 姚铭舜 李欣 程玉珠 qingqing du 虞晓旭 高嗣航 hao tang 张恒 王宇航', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'linh-canh-hanh-gia-ngoai-truyen', 'Linh Cảnh Hành Giả: Ngoại Truyện', 'Spiritual Realm Walker: Side Story', 'https://phimimg.com/uploads/movies/20260904/linh-canh-hanh-gia-ngoai-truyen-thumb.webp', 'https://phimimg.com/uploads/movies/20260904/linh-canh-hanh-gia-ngoai-truyen-poster.webp', '<p>Series ngoại truyện hài hước của "Linh Cảnh Hành Giả" được chắt lọc từ nguyên tác, mang đến góc nhìn mới mẻ và thú vị về cuộc sống đời thường với những tình huống tréo ngoe, dở khóc dở cười chưa từng được hé lộ của Trương Nguyên Thanh cùng người thân, bạn bè. Loạt phim sẽ đưa bạn bước vào một thế giới "Linh Cảnh Hành Giả" vô cùng trọn vẹn và nhiều màu sắc.</p>', 
  'Tập 5', 30, 'hoathinh', 'ongoing', 111, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["灵境行者"]', '{"id":null,"type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914738, '2026-09-13T16:56:11.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia-ngoai-truyen', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia-ngoai-truyen', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia-ngoai-truyen', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia-ngoai-truyen', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia-ngoai-truyen', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia-ngoai-truyen', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'linh-canh-hanh-gia-ngoai-truyen';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('linh-canh-hanh-gia-ngoai-truyen', 'Linh Cảnh Hành Giả: Ngoại Truyện', 'Spiritual Realm Walker: Side Story', 'linh cảnh hành giả: ngoại truyện spiritual realm walker: side story đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'linh-canh-hanh-gia', 'Linh Cảnh Hành Giả', 'Spiritual Realm Walker', 'https://phimimg.com/uploads/movies/20260904/linh-canh-hanh-gia-thumb.webp', 'https://phimimg.com/uploads/movies/20260904/linh-canh-hanh-gia-poster.webp', '<p>Đây là một thế giới kỳ dị tồn tại song song với thế giới hiện thực, nơi người tham gia phải vượt qua những phó bản nguy hiểm, đối mặt với các nhiệm vụ sinh tử và những sinh vật siêu nhiên. Trong quá trình khám phá Linh Cảnh, Trương Nguyên Thanh từng bước thức tỉnh năng lực, trưởng thành qua những cuộc phiêu lưu và dần khám phá những bí mật ẩn giấu phía sau thế giới này.</p>', 
  'Tập 3', 30, 'hoathinh', 'ongoing', 211, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"姜秋再","avatar":"https://image.tmdb.org/t/p/w185/tT1p0Ez52eMLB1AQzmaXlomsBUy.jpg"},{"name":"李詩萌","avatar":"https://image.tmdb.org/t/p/w185/i7hKjBsuxiMHuj3v68yWhbLXNbi.jpg"},{"name":"喬詩語","avatar":"https://image.tmdb.org/t/p/w185/pRz9GB7toXRPlAUSTs0jSiU2nU6.jpg"},{"name":"阿杰","avatar":"https://image.tmdb.org/t/p/w185/AaXR7HBOkyrLlM93cycAt6i9NDE.jpg"},{"name":"Guang Chen","avatar":"https://image.tmdb.org/t/p/w185/jVTfy0LCKek2rLmhcISIJuZd8fx.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["灵境行者"]', '{"id":"297923","type":"tv","vote_average":6,"vote_count":3,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/fZtDctt9hhc4JmPYmeX7jWPSNVG.jpg","poster_url":"https://image.tmdb.org/t/p/original/5yluTfz1LI6TkzBIeUTsE49Lyu0.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914737, '2026-09-13T16:55:58.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('linh-canh-hanh-gia', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'linh-canh-hanh-gia';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('linh-canh-hanh-gia', 'Linh Cảnh Hành Giả', 'Spiritual Realm Walker', 'linh cảnh hành giả spiritual realm walker 姜秋再 李詩萌 喬詩語 阿杰 guang chen', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'doc-kiem-cuu-thien', 'Độc Kiếm Cửu Thiên', 'Sword God', 'https://phimimg.com/uploads/movies/20260912/doc-kiem-cuu-thien-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/doc-kiem-cuu-thien-poster.webp', '<p>Triệu Phi Dương, tông chủ Thiên Kiếm Tông, mang trong mình "Cửu Thiên Pháp Điển", bị U Minh Điện diệt môn, đứt sạch kinh mạch, vị hôn thê còn rút xương hủy hôn. Trong cơn bĩ cực, chàng cứu được yêu thánh thượng cổ Bạch Ly, được tặng thánh phẩm đạo cốt để tu luyện lại từ đầu. Chàng nhanh chóng vươn lên, thanh toán thù cũ, tự lập môn phái, khiến ma kiếm nhận chủ, địa tiên thần phục. Khi lượng kiếp giáng xuống, Triệu Phi Dương đứng ngược chiều sóng gió, dõng dạc tuyên bố: Nếu thiên đạo muốn ta chịu kiếp nạn, vậy thì lấy máu nhuộm trời xanh!</p>', 
  'Tập 10', 27, 'series', 'ongoing', 82, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Pan Luyu","avatar":"https://image.tmdb.org/t/p/w185/1brW3ZWsbRaJQBKj2ENjoBL9Cbu.jpg"},{"name":"陈羽翎","avatar":"https://image.tmdb.org/t/p/w185/mN2IbT3C180vCMJMU4IsmRZNzic.jpg"},{"name":"罗予甜","avatar":"https://image.tmdb.org/t/p/w185/nBmNDvXLwyuJmHlDbXNu9aMtUP0.jpg"},{"name":"冷巴","avatar":"https://image.tmdb.org/t/p/w185/sMcxM8clhTyj7butDjIqSlKhlT4.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Du Jian Jiu Tian","独剑九天"]', '{"id":"334299","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/hb2K9fZ8UFlkkswJl0koM09AOXt.jpg","poster_url":"https://image.tmdb.org/t/p/original/jkrMqTP39iKWpDgCxXp29LYaUbL.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914736, '2026-09-13T16:54:44.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doc-kiem-cuu-thien', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doc-kiem-cuu-thien', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doc-kiem-cuu-thien', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doc-kiem-cuu-thien', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'doc-kiem-cuu-thien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('doc-kiem-cuu-thien', 'Độc Kiếm Cửu Thiên', 'Sword God', 'độc kiếm cửu thiên sword god pan luyu 陈羽翎 罗予甜 冷巴', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'di-thoi-kaikigumi', 'Đi Thôi Kaikigumi', 'Let''s Go KAIKIGUMI', 'https://phimimg.com/upload/vod/20260706-1/571204c973f76dd9377a357420b15752.jpg', 'https://phimimg.com/upload/vod/20260706-1/680ae24ed59e33a7ab55234175942dc8.jpg', '<p>Một người đàn ông vô danh với nỗi sợ ma quái gấp sáu lần người bình thường bỗng chốc bị cuốn vào thế giới siêu nhiên. Mọi rắc rối bắt đầu khi anh tình cờ chạm trán với Mechako, một cô gái gan dạ đang điều hành Kaiki-gumi — tổ chức chuyên quản lý các hiện tượng siêu nhiên. Mechako đã lôi kéo anh vào hành trình giúp cô vực dậy tổ chức này. Từ đó, hàng loạt sự kiện kỳ lạ, dở khóc dở cười và những trò quậy phá đầy ma mị bắt đầu bùng nổ!</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 511, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"畠中祐","avatar":"https://image.tmdb.org/t/p/w185/xPDqoxAia1ShoVC2aMS2ZDPDWzG.jpg"},{"name":"青木瑠璃子","avatar":"https://image.tmdb.org/t/p/w185/oIFCVeUfExnxu7jq5snnBScF6cB.jpg"},{"name":"千葉繁","avatar":"https://image.tmdb.org/t/p/w185/mF5YJxApTYKBVFJDrEC9IrJ5ooV.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Lets Go Kaikigumi","レッツゴー怪奇組"]', '{"id":"302824","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/5FPOarQIhkrUzDY5qo8ElYmSzu1.png","backdrop_url":"https://image.tmdb.org/t/p/original/m1EsnTY1ejaLHs5aWTOju1t1AVd.jpg","poster_url":"https://image.tmdb.org/t/p/original/7Hr1zgpzUWdQ6EtE9sDrx7IRk7Y.jpg","aspect_ratio":2.614}', '{"id":"tt41278494","vote_average":null}', 
  1789378914735, '2026-09-13T16:54:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('di-thoi-kaikigumi', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('di-thoi-kaikigumi', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('di-thoi-kaikigumi', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('di-thoi-kaikigumi', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('di-thoi-kaikigumi', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('di-thoi-kaikigumi', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'di-thoi-kaikigumi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('di-thoi-kaikigumi', 'Đi Thôi Kaikigumi', 'Let''s Go KAIKIGUMI', 'đi thôi kaikigumi let''s go kaikigumi 畠中祐 青木瑠璃子 千葉繁', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dau-bep-sieu-dang', 'Đầu Bếp Siêu Đẳng', 'Iron Wok Jan!', 'https://phimimg.com/upload/vod/20260706-1/b2bd6336d4e6266a9d3ac3b01c2f7cc6.jpg', 'https://phimimg.com/upload/vod/20260706-1/13d679c94a90467a85b46f88da920fef.jpg', '<p>Câu chuyện theo chân Jan, một bậc thầy đầu bếp món Hoa với phong cách đầy quái dị và ngông cuồng, người sẵn sàng làm bất cứ điều gì để nghiền nát các đối thủ của mình. Đây là một hành trình đầy kịch tính và nghẹt thở, nơi dàn nhân vật bất chấp mọi quy chuẩn đạo đức thông thường, xem nấu ăn như một thứ ma thuật và sáng tạo ra đủ loại món ăn hoang dại nhất. Jan thẳng tiến về phía trước để đối đầu với trận chiến ẩm thực Trung Hoa đỉnh cao, sẵn sàng thách thức cả thế giới!</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 544, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"戸谷菊之介","avatar":"https://image.tmdb.org/t/p/w185/tSAHe7tjN7luUD1Tx5yPSCuCnuD.jpg"},{"name":"長谷川育美","avatar":"https://image.tmdb.org/t/p/w185/aHLid4WeTafrtfqDRAZSw5K7dTj.jpg"},{"name":"天﨑滉平","avatar":"https://image.tmdb.org/t/p/w185/tnN5jLiLjcDa7qn88uLb1iAfivL.jpg"},{"name":"津田健次郎","avatar":"https://image.tmdb.org/t/p/w185/yBlT8FzQqZYbDcJlnCEayNQHrzS.jpg"},{"name":"天田益男","avatar":"https://image.tmdb.org/t/p/w185/j6uXrzr49Nvso3g4XfRccaebJpJ.jpg"},{"name":"市道真央","avatar":"https://image.tmdb.org/t/p/w185/a3cflYtrlFK0LXfWODgLDO7E7CP.jpg"},{"name":"櫻井孝宏","avatar":"https://image.tmdb.org/t/p/w185/8s8owcKmpRAuhzEGjSdRpztthUg.jpg"},{"name":"村田太志","avatar":"https://image.tmdb.org/t/p/w185/eVs2Ow2CyiFfoN02EUNyhmSYALE.jpg"},{"name":"小林裕介","avatar":"https://image.tmdb.org/t/p/w185/y4ukKDSobZJNuB4H3k89hkrKCDC.jpg"},{"name":"杉田智和","avatar":"https://image.tmdb.org/t/p/w185/cv5zuPZySNsHXu24pjKLYCRzJ2J.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Tetsunabe no Jan!","铁锅料理王！","鉄鍋のジャン！"]', '{"id":"308403","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/ve14D7gUfNR3qP8X9dKAM36JxDD.png","backdrop_url":"https://image.tmdb.org/t/p/original/br4T7cHb217vfBNnAH268GGqILH.jpg","poster_url":"https://image.tmdb.org/t/p/original/qD4qUOIX2wF67tnhhCWVbkwQuhs.jpg","aspect_ratio":3.147}', '{"id":"tt42963873","vote_average":null}', 
  1789378914734, '2026-09-13T16:53:29.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-bep-sieu-dang', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-bep-sieu-dang', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-bep-sieu-dang', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-bep-sieu-dang', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-bep-sieu-dang', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-bep-sieu-dang', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-bep-sieu-dang', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'dau-bep-sieu-dang';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dau-bep-sieu-dang', 'Đầu Bếp Siêu Đẳng', 'Iron Wok Jan!', 'đầu bếp siêu đẳng iron wok jan! 戸谷菊之介 長谷川育美 天﨑滉平 津田健次郎 天田益男 市道真央 櫻井孝宏 村田太志 小林裕介 杉田智和', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dai-luc-linh-vo', 'Đại Lục Linh Võ', 'Legend of Lingwu Continent', 'https://phimimg.com/upload/vod/20250224-1/f68af9aa9f67c035f72938fb5291ba55.jpg', 'https://phimimg.com/upload/vod/20250224-1/f10d225c86bd40ae0eaa2ef5d957c24e.jpg', '<p>Một thế giới mà linh lực và võ hồn cùng tồn tại, chỉ một ý niệm của linh tu có thể dời non lấp biển, võ giả tay không phá vỡ thiên địa. Thiên tài Thần Thiên, sau 10 tuổi võ hồn không thấy, linh hải khô cạn, trở thành phế vật của gia tộc. Sau đó vào nhầm đại trận của Cổ Kiếm Đế, có được cơ duyên lớn, từ đó cuộc đời thay đổi, phá Thiên Đạo, nắm giữ luân hồi, độ Đế kiếp, trở thành người đứng đầu Linh Võ Đại Lục.</p>', 
  'Tập 214', 240, 'hoathinh', 'ongoing', 298, 2024, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Emperor Lingwu","Ling Wu Da Lu","Lingwu Dizun","灵武大陆","Ling Wu Dalu","Lingwu Dalu","Legend of Lingwu Continent"]', '{"id":"259844","type":"tv","vote_average":8.5,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/8FbSGwZfwRghs4IMqpkfv8rYFwI.png","backdrop_url":"https://image.tmdb.org/t/p/original/r0rFbNu2y379NH6Or4dARJOOfwt.jpg","poster_url":"https://image.tmdb.org/t/p/original/fHbm17UEoA1sqD8yeE4k9cRZTdB.jpg","aspect_ratio":3}', '{"id":null,"vote_average":null}', 
  1789378914733, '2026-09-13T16:53:10.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-luc-linh-vo', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-luc-linh-vo', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-luc-linh-vo', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-luc-linh-vo', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-luc-linh-vo', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-luc-linh-vo', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-luc-linh-vo', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'dai-luc-linh-vo';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dai-luc-linh-vo', 'Đại Lục Linh Võ', 'Legend of Lingwu Continent', 'đại lục linh võ legend of lingwu continent ', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dai-khong-cang-gate24', 'Đại Không Cảng: GATE24', 'GATE24: The Border', 'https://phimimg.com/uploads/movies/20260803/dai-khong-cang-gate24-thumb.webp', 'https://phimimg.com/uploads/movies/20260803/dai-khong-cang-gate24-poster.webp', '<p>Giỏi đọc thông tin từ đồ vật nhưng lại vụng về trong giao tiếp với con người, một nhân viên hải quan mới lập dị gia nhập đội biên phòng hỗn tạp bảo vệ hòa bình và an ninh Nhật Bản.</p>', 
  'Tập 7', 10, 'series', 'ongoing', 377, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"趣里","avatar":"https://image.tmdb.org/t/p/w185/nNPYGEEewTaKdM2CRNtfWb0hZm7.jpg"},{"name":"眞栄田郷敦","avatar":"https://image.tmdb.org/t/p/w185/8mhkAhLwAavHfltX9T9zwe8tBOl.jpg"},{"name":"板垣李光人","avatar":"https://image.tmdb.org/t/p/w185/3cg9RXHS7LZFCO9gf4D40nO57pP.jpg"},{"name":"齊藤京子","avatar":"https://image.tmdb.org/t/p/w185/42ibBuFX36siLGGJwotswIKZ2ug.jpg"},{"name":"奥貫薫","avatar":"https://image.tmdb.org/t/p/w185/vZBEZts8ajyC2oqsYL88HanlOPm.jpg"},{"name":"秋元才加","avatar":"https://image.tmdb.org/t/p/w185/2MxwyfkqBFwSSvAFBKUir4e1NV8.jpg"},{"name":"加治将樹","avatar":"https://image.tmdb.org/t/p/w185/i3D1s8i79cB1HSrcCcTEuag28sg.jpg"},{"name":"街田しおん","avatar":"https://image.tmdb.org/t/p/w185/a0eMbNRDjIznMKtWKg0uwf4n92T.jpg"},{"name":"嘉島陸","avatar":"https://image.tmdb.org/t/p/w185/sGPndO2pXhTUixhMEIGUInixwYS.jpg"},{"name":"西村直人","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Daikuko: Gate 24","大空港～GATE24～"]', '{"id":"323579","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/z3fxkVhJSrGgLQGtshoypH46Stu.jpg","poster_url":"https://image.tmdb.org/t/p/original/fh7GtTcyFmx7pLwOmxtYLRTzP3A.jpg","aspect_ratio":null}', '{"id":"tt43699178","vote_average":null}', 
  1789378914732, '2026-09-13T16:52:40.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-khong-cang-gate24', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-khong-cang-gate24', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-khong-cang-gate24', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-khong-cang-gate24', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'dai-khong-cang-gate24';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dai-khong-cang-gate24', 'Đại Không Cảng: GATE24', 'GATE24: The Border', 'đại không cảng: gate24 gate24: the border 趣里 眞栄田郷敦 板垣李光人 齊藤京子 奥貫薫 秋元才加 加治将樹 街田しおん 嘉島陸 西村直人', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chi-oi-xin-hay-yeu-anh', 'Chị Ơi, Xin Hãy Yêu Anh', 'Madame Sonya', 'https://phimimg.com/uploads/movies/20260905/chi-oi-xin-hay-yeu-anh-thumb.webp', 'https://phimimg.com/uploads/movies/20260905/chi-oi-xin-hay-yeu-anh-poster.webp', '<p>Tám năm trước, khi Ben rơi vào giai đoạn tăm tối nhất của cuộc đời, Sonya đã đưa tay giúp đỡ anh. Tám năm sau, định mệnh đưa hai người gặp lại, Ben trở thành cấp dưới của Sonya tại Tập đoàn Dermawan. Khoảng cách tuổi tác cùng mối quan hệ cấp trên - cấp dưới khiến Sonya luôn kìm nén tình cảm của mình. Nhưng trong những ngày tháng sớm tối bên nhau, cô dần rung động trước Ben. Thế nhưng, một vụ bê bối bất ngờ ập đến, cộng thêm tham vọng ngày càng lớn của những người xung quanh, đã đẩy tình yêu và niềm tin giữa họ vào khủng hoảng. Trước hết thảy những thử thách ấy, liệu Sonya và Ben có thể bảo vệ được nhau, đồng thời bảo vệ được sự thật?</p>', 
  'Tập 3', 5, 'series', 'ongoing', 103, 2026, 
  'Vietsub', 'FHD', 'Indonesia', 0, 
  '[{"name":"RaihaanunMaxime BouttierHamish DaudDinda KiranaAdinda CresheillaMike EthanSarah FeliciaRezca Syam","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '[]', '{"id":null,"type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914731, '2026-09-13T16:52:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chi-oi-xin-hay-yeu-anh', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chi-oi-xin-hay-yeu-anh', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chi-oi-xin-hay-yeu-anh', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'chi-oi-xin-hay-yeu-anh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chi-oi-xin-hay-yeu-anh', 'Chị Ơi, Xin Hãy Yêu Anh', 'Madame Sonya', 'chị ơi, xin hãy yêu anh madame sonya raihaanunmaxime bouttierhamish dauddinda kiranaadinda cresheillamike ethansarah feliciarezca syam', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tro-choi-hai-mat', 'Trò Chơi Hai Mặt', 'Duplicity', 'https://phimimg.com/uploads/movies/20260913/tro-choi-hai-mat-thumb.webp', 'https://phimimg.com/uploads/movies/20260913/tro-choi-hai-mat-poster.webp', '<p>Một cặp đôi nhân viên công ty – vốn đang có quan hệ tình cảm với nhau – vướng vào cuộc cạnh tranh khốc liệt giữa hai tập đoàn dược phẩm khổng lồ.</p>', 
  'Full', 1, 'single', 'completed', 152, 2009, 
  'Vietsub', 'FHD', 'Đức', 0, 
  '[{"name":"Julia Roberts","avatar":"https://image.tmdb.org/t/p/w185/fQacAdIa1WUNChQ6FgEko13eqOA.jpg"},{"name":"Clive Owen","avatar":"https://image.tmdb.org/t/p/w185/xlWpuLgwxMnZEVgV9OID1TkUNtP.jpg"},{"name":"Tom Wilkinson","avatar":"https://image.tmdb.org/t/p/w185/xSUohQDXuepOU2nSqtDj2us5RZo.jpg"},{"name":"Paul Giamatti","avatar":"https://image.tmdb.org/t/p/w185/wbrVVJRr5TwhDZuvijBgOorzcAb.jpg"},{"name":"Tom McCarthy","avatar":"https://image.tmdb.org/t/p/w185/cEA6cxG3AiH0hUzFH9mUQQVy20O.jpg"},{"name":"Denis O''Hare","avatar":"https://image.tmdb.org/t/p/w185/zMim5sdMnyd2GFfPd9Jh59Vcog3.jpg"},{"name":"Kathleen Chalfant","avatar":"https://image.tmdb.org/t/p/w185/wjxN78pdzKpUiO9HG1vBqJdnf4x.jpg"},{"name":"Wayne Duvall","avatar":"https://image.tmdb.org/t/p/w185/uZNSrzslzDQ6xlOFyphGlm5cH20.jpg"},{"name":"Carrie Preston","avatar":"https://image.tmdb.org/t/p/w185/Aawu3RmB8ZDha13XIjtDDQF9XfD.jpg"},{"name":"Олег Штефанко","avatar":"https://image.tmdb.org/t/p/w185/lvbXEyYzFtzg7WSt3i86TtSTDaj.jpg"}]', '[{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Kettős játék","Ничего личного","Gra dla dwojga","Duplicidade","口是心非","더블 스파이","Adiakrisies","Duplicity"]', '{"id":"16558","type":"movie","vote_average":5.9,"vote_count":897,"logo_url":"https://image.tmdb.org/t/p/original/kT4P1UheLSYlRAVyMFa9rxChJ5h.png","backdrop_url":"https://image.tmdb.org/t/p/original/nmElbl3SyII4gJ8uo1jYYHFjmlK.jpg","poster_url":"https://image.tmdb.org/t/p/original/vpWQs3CjwG6Er3DgZlv4L3NFjXg.jpg","aspect_ratio":4.819}', '{"id":"tt1135487","vote_average":6.1}', 
  1789378914730, '2026-09-13T07:40:39.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tro-choi-hai-mat', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tro-choi-hai-mat', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tro-choi-hai-mat', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tro-choi-hai-mat', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'tro-choi-hai-mat';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tro-choi-hai-mat', 'Trò Chơi Hai Mặt', 'Duplicity', 'trò chơi hai mặt duplicity julia roberts clive owen tom wilkinson paul giamatti tom mccarthy denis o''hare kathleen chalfant wayne duvall carrie preston олег штефанко', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'yeu-het-long-chang-fanboy', 'Yêu Hết Lòng Chàng Fanboy', 'Mr. Fanboy', 'https://phimimg.com/uploads/movies/20260830/yeu-het-long-chang-fanboy-thumb.webp', 'https://phimimg.com/uploads/movies/20260830/yeu-het-long-chang-fanboy-poster.webp', '<p>Wan, một fanboy cuồng nhiệt của Nine, bị Third - bạn diễn của Nine - hiểu lầm là fan cuồng (sasaeng). Tuy nhiên, Wan bất ngờ có cơ hội tham gia đóng chung bộ phim BL với cả hai, dẫn đến nhiều tình huống hỗn loạn trên phim trường. Trong quá trình dấn thân vào thế giới mới cùng hai hậu bối Renji và Time, cảm xúc của Wan dần trở nên phức tạp khi Third trở thành người luôn giúp đỡ anh, còn Nine lại thay đổi theo cách mà anh chưa từng ngờ tới.</p>', 
  'Tập 3', 12, 'series', 'ongoing', 165, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ธนภูมิ เศรษฐสิทธิกุล","avatar":"https://image.tmdb.org/t/p/w185/vi4t5fz533GElonFRHJdIpx6BYt.jpg"},{"name":"วรพงษ์ วาเลาะ","avatar":"https://image.tmdb.org/t/p/w185/3pe0anHwdQaYO2jGfNEp6Wg4llP.jpg"},{"name":"ศุภมงคล วงศ์วิสุทธ์","avatar":"https://image.tmdb.org/t/p/w185/x0uKaWuSGko1MY86zXp0kea38wb.jpg"},{"name":"ทินภัทร ทัศนีย์ไตรเทพ","avatar":"https://image.tmdb.org/t/p/w185/vQKzhNqbAXEdxiYaWsweOe5O7Xx.jpg"},{"name":"จิรชาติ บุษปวนิช","avatar":"https://image.tmdb.org/t/p/w185/xuf395PR0ThM9SmMZh4ufRF72Y8.jpg"},{"name":"นัฏธนันท์ จินดานนท์","avatar":"https://image.tmdb.org/t/p/w185/A7Up8AyLL3idWgAHFU7i0284bt0.jpg"},{"name":"พันธิตา บุญชวน","avatar":"https://image.tmdb.org/t/p/w185/hvr8BjRgpMqsUQsjc8Z5wTEHHSN.jpg"},{"name":"ณิชาภัทร ฉัตรชัยพลรัตน์","avatar":"https://image.tmdb.org/t/p/w185/rxnyijn4xRpitMPA8JX3x8ZLeaj.jpg"},{"name":"Charukitt Srisawat","avatar":"https://image.tmdb.org/t/p/w185/1S65vNg2Bp9W9Z6LZSJHiUvvwV7.jpg"},{"name":"กิตติภัค ทองอ่วม","avatar":"https://image.tmdb.org/t/p/w185/haeihuDTq8BKxybJMb0kRcRedjF.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Fan Boy","Rak Sud Jai Nai Fanboy","Rak Sut Chai Nai Faen Boi","แฟนบอย","รักสุดใจนายแฟนบอย"]', '{"id":"284825","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/673FDHNQgGtIhD4HuhibytZWncU.png","backdrop_url":"https://image.tmdb.org/t/p/original/4wsQ7ZvIBscpWupLPFltfKv0Ca8.jpg","poster_url":"https://image.tmdb.org/t/p/original/vNo2ik8L1NdlgKdV2MJzU3mYKLV.jpg","aspect_ratio":2.885}', '{"id":"tt35932166","vote_average":null}', 
  1789378914729, '2026-09-13T07:39:41.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-het-long-chang-fanboy', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-het-long-chang-fanboy', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-het-long-chang-fanboy', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'yeu-het-long-chang-fanboy';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('yeu-het-long-chang-fanboy', 'Yêu Hết Lòng Chàng Fanboy', 'Mr. Fanboy', 'yêu hết lòng chàng fanboy mr. fanboy ธนภูมิ เศรษฐสิทธิกุล วรพงษ์ วาเลาะ ศุภมงคล วงศ์วิสุทธ์ ทินภัทร ทัศนีย์ไตรเทพ จิรชาติ บุษปวนิช นัฏธนันท์ จินดานนท์ พันธิตา บุญชวน ณิชาภัทร ฉัตรชัยพลรัตน์ charukitt srisawat กิตติภัค ทองอ่วม', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'vao-ma-gioi-roi-day-irumakun-phan-4', 'Vào Ma Giới Rồi Đấy! Iruma-kun (Phần 4)', 'Welcome To Demon School! Iruma-kun (Season 4)', 'https://phimimg.com/upload/vod/20260407-1/d12a54fa0682e1b66ab4c1b0f147b0ab.jpg', 'https://phimimg.com/upload/vod/20260407-1/c4b0b33444924bf81ca7bfe6081e4ef7.jpg', '<p>Iruma tiếp tục cuộc sống tại học viện Babyls với những thử thách ngày càng khó khăn. Cậu cùng các bạn phải đối mặt với kỳ thi mới và những âm mưu bí ẩn trong thế giới ma quái. Sự trưởng thành của Iruma dần được thể hiện khi cậu học cách bảo vệ bạn bè và khẳng định bản thân. Các mối quan hệ xung quanh cậu cũng trở nên sâu sắc và phức tạp hơn. Giữa tiếng cười và hiểm nguy, Iruma tiến gần hơn tới vị trí đặc biệt trong ma giới.</p>', 
  'Tập 22', 24, 'hoathinh', 'ongoing', 465, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Murase Ayumu","avatar":"https://image.tmdb.org/t/p/w185/3aGM6KpcCIEKOXP9510tzaKc8uw.jpg"},{"name":"Kimura Ryohei","avatar":"https://image.tmdb.org/t/p/w185/m4GktFKhjrVTewsZtqTusInHZqT.jpg"},{"name":"朝井彩加","avatar":"https://image.tmdb.org/t/p/w185/tQCblqK0CJfddLPkYKcI94R2Pgh.jpg"},{"name":"小野大輔","avatar":"https://image.tmdb.org/t/p/w185/5rjl28lx84JjRS0hzq3Ajvx2dhp.jpg"},{"name":"早見沙織","avatar":"https://image.tmdb.org/t/p/w185/gLv9lO7dlUbIsmyJUvgegqAAXki.jpg"},{"name":"佐藤拓也","avatar":"https://image.tmdb.org/t/p/w185/xZgoTs6DOSneHkoOWL751pQzLru.jpg"},{"name":"黒田崇矢","avatar":"https://image.tmdb.org/t/p/w185/7UH1DDjoF7x4b9pOT4bLF9ew8Uq.jpg"},{"name":"斎賀みつき","avatar":"https://image.tmdb.org/t/p/w185/qjRHodCBpKY8nEa4p8dZriDoil4.jpg"},{"name":"山谷祥生","avatar":"https://image.tmdb.org/t/p/w185/jptl2nYlIMSs6oJViWyIWYvyXPj.jpg"},{"name":"東山奈央","avatar":"https://image.tmdb.org/t/p/w185/6WJDd1z946yFfZBgpC7dWi0FyQw.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Iruma à l’école des démons","डेमन स्कूल में आपका स्वागत है! इरुमा-कुन","Mairimashita! Iruma-kun","Mairimashita! Iruma-kun 2","Mairimashita, Iruma-kun","Mairimashita, Iruma-kun 2","Mairimashita! Iruma-kun 3","魔入りました！入間くん４","마계학교 이루마군","악마에 입문했습니다! 이루마 군","마계학교! 이루마군","Iruma w szkole demonów","อิรุมะคุงกับโรงเรียนปิศาจ","Welcome to Demon-School, Iruma-kun","Welcome to Demon School, Iruma-kun","The Demon, Iruma-kun, Came and Enrolled!","Enrolled Demon Iruma!","Here Comes the Demon! Iruma-Kun","Welcome to Demon School! Iruma-kun 2","Welcome to Demon-School! Iruma-kun 3","Vào Ma Giới Rồi Đấy","Vào Ma Giới Rồi Đấy! Iruma-kun","Vào Ma Giới Rồi Đấy Iruma-kun","魔入りました！入間くん"]', '{"id":"91801","type":"tv","vote_average":8.2,"vote_count":291,"logo_url":"https://image.tmdb.org/t/p/original/qrAA08ZiMFEsqIHK0Rau9s1Xzpy.png","backdrop_url":"https://image.tmdb.org/t/p/original/d8bAI2EDM7L2q94wDZfjb82KRoh.jpg","poster_url":"https://image.tmdb.org/t/p/original/gKz8wiKsbgefAkxjpBCmJPnnXJE.jpg","aspect_ratio":1.222}', '{"id":"tt11034066","vote_average":7.6}', 
  1789378914728, '2026-09-13T07:39:26.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'vao-ma-gioi-roi-day-irumakun-phan-4';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('vao-ma-gioi-roi-day-irumakun-phan-4', 'Vào Ma Giới Rồi Đấy! Iruma-kun (Phần 4)', 'Welcome To Demon School! Iruma-kun (Season 4)', 'vào ma giới rồi đấy! iruma-kun (phần 4) welcome to demon school! iruma-kun (season 4) murase ayumu kimura ryohei 朝井彩加 小野大輔 早見沙織 佐藤拓也 黒田崇矢 斎賀みつき 山谷祥生 東山奈央', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'Con Trai Công Tước Tuyên Bố Sẽ Không Yêu Tôi Nhưng Vẫn Tôn Thờ Tôi', 'The Duke''s Son Claims He Won''t Love Me, But Showers Me With Adoration', 'https://phimimg.com/upload/vod/20260705-1/0eeac7b7da1c0a34155c0d3bbb7156c6.jpg', 'https://phimimg.com/upload/vod/20260705-1/9be8fa8b5c1f4f767a6153480304d4cd.jpg', '<p>Một cuộc hôn nhân sắp đặt. Hai người hoàn toàn xa lạ. Một câu chuyện tình yêu vô cùng đáng yêu! Khi tiểu thư quý tộc hoạt bát Elsa bất ngờ phải kết hôn với người kế vị công tước lạnh lùng Julius, cả hai đều không ngờ rằng cuộc hôn nhân chính trị này lại có thể làm nảy sinh một thứ tình cảm sâu đậm hơn. Giữa những hiểu lầm vụng về, những cử chỉ ngọt ngào và những rung động ngày một lớn dần, cặp đôi mới cưới này nhận ra rằng việc phải lòng nhau vừa là điều dễ dàng nhất, nhưng cũng là điều thử thách nhất trong cuộc sống hôn nhân.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 469, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Saito Soma","avatar":"https://image.tmdb.org/t/p/w185/8W8Y02Jmjivw0kk5PDih9dqiyd9.jpg"},{"name":"石川由依","avatar":"https://image.tmdb.org/t/p/w185/2y1y1W4q8UIR0Vbs4NNvc7722XT.jpg"},{"name":"國府田マリ子","avatar":"https://image.tmdb.org/t/p/w185/gmhgVyiHoN4B2JBD5X8uPwG8vir.jpg"},{"name":"浪川大輔","avatar":"https://image.tmdb.org/t/p/w185/iw0X8oDutxaBAri3Ifga8nhdUJK.jpg"},{"name":"内田真礼","avatar":"https://image.tmdb.org/t/p/w185/lrcxZXkIgHU55dMs8C4DKkUohqJ.jpg"},{"name":"田村真","avatar":"https://image.tmdb.org/t/p/w185/ehSYoUftxHWCMwz5s4ELu5fTEaw.jpg"},{"name":"Kimura Ryohei","avatar":"https://image.tmdb.org/t/p/w185/m4GktFKhjrVTewsZtqTusInHZqT.jpg"},{"name":"安済知佳","avatar":"https://image.tmdb.org/t/p/w185/lk3Az9O67qrXR69rctwDDHWqi9d.jpg"},{"name":"山村響","avatar":"https://image.tmdb.org/t/p/w185/7mZ02XdjbbO0AnsX5Fwr23ZFe3G.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["不爱公爵","说了不打算爱我的公爵继承人，不知为何对我宠爱有加","\"Kimi wo Aisuru Ki wa Nai\" to Itta Jiki Koushaku-sama ga Nazeka Dekiai Shitekimasu","きみ愛","Kimiai","Kimi wo Aisuru Ki wa nai to Itta Jiki Koushaku-sama ga Naze ka Dekiai Shitekimasu","The Duke’s Son Claims He Won’t Love Me Yet Showers Me with Adoration","「きみを愛する気はない」と言った次期公爵様がなぜか溺愛してきます"]', '{"id":"315054","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/xEWcOO60nmMcvBE8KCKSrjh9qql.png","backdrop_url":"https://image.tmdb.org/t/p/original/fbn801LwOIQ04eFvPT2VNVAgZRc.jpg","poster_url":"https://image.tmdb.org/t/p/original/5b1N0m30WUmRtjZEs0UWjllVvhA.jpg","aspect_ratio":2.268}', '{"id":"tt41277587","vote_average":null}', 
  1789378914727, '2026-09-13T07:39:07.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('con-trai-cong-tuoc-tuyen-bo-se-khong-yeu-toi-nhung-van-ton-tho-toi', 'Con Trai Công Tước Tuyên Bố Sẽ Không Yêu Tôi Nhưng Vẫn Tôn Thờ Tôi', 'The Duke''s Son Claims He Won''t Love Me, But Showers Me With Adoration', 'con trai công tước tuyên bố sẽ không yêu tôi nhưng vẫn tôn thờ tôi the duke''s son claims he won''t love me, but showers me with adoration saito soma 石川由依 國府田マリ子 浪川大輔 内田真礼 田村真 kimura ryohei 安済知佳 山村響', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'song-menh-coi-hoang-tuyen', 'Song Mệnh Cõi Hoàng Tuyền', 'Daemons Of The Shadow Realm', 'https://phimimg.com/upload/vod/20260406-1/5b01bfa978886e99a559d3a0d9b8940e.jpg', 'https://phimimg.com/upload/vod/20260406-1/3c48ae9098dc344eb0dd90b9ed136bcd.jpg', '<p>Câu chuyện khởi nguồn tại Làng Đông, một ngôi làng nhỏ biệt lập trên núi, nơi thời gian như ngừng trôi suốt 400 năm. Chàng thợ săn trẻ Yuru sống bình yên bên mây ngàn gió núi và làm nhiệm vụ bảo vệ người em gái sinh đôi Asa. Thế nhưng, thế giới thanh bình ấy bỗng chốc vỡ vụn khi những “con rồng sắc” bay đầy trời, kéo theo một đạo quân trang bị vũ khí tối tân tàn sát dân làng. Từ đây, Yuru bước vào một hành trình đẫm máu tại xã hội hiện đại. Tâm điểm của cuộc chiến chính là bí ẩn về “Cặp song sinh chia cắt ngày và đêm” cùng sức mạnh thao túng Song Tinh, những linh thể mang sức mạnh hủy diệt luôn tồn tại theo đôi theo cặp.</p>', 
  'Tập 23', 24, 'hoathinh', 'ongoing', 621, 2026, 
  'Vietsub + Lồng Tiếng', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"小野賢章","avatar":"https://image.tmdb.org/t/p/w185/wUYJ3HIeygHfh4rAqupE4RPoG3W.jpg"},{"name":"宮本侑芽","avatar":"https://image.tmdb.org/t/p/w185/8PzHX7owawEZKq7Eg9WwcmWYx9s.jpg"},{"name":"Nakamura Yuichi","avatar":"https://image.tmdb.org/t/p/w185/wb8behVKjBHX9XXrEydvNINCYwH.jpg"},{"name":"久野美咲","avatar":"https://image.tmdb.org/t/p/w185/hVtE4gdKaqofYZmXXtlJs4Q9XTL.jpg"},{"name":"本田貴子","avatar":"https://image.tmdb.org/t/p/w185/LekbnCX6TcabG3EjSOKOgIGrvJ.jpg"},{"name":"小山力也","avatar":"https://image.tmdb.org/t/p/w185/hsZm87BORLpzhaycBaWOD5xpjVC.jpg"},{"name":"島袋美由利","avatar":"https://image.tmdb.org/t/p/w185/rjhyRM2hn1deQG1V6cwC8AEEKNT.jpg"},{"name":"諏訪部順一","avatar":"https://image.tmdb.org/t/p/w185/4S7c3n3r07A83HvkLrnWZGVhiHg.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Yomi no Tsugai - Daemons do Reino das Sombras","Espíritus Del Inframundo","Daemons of the Shadow Realm","Yomi no Tsugai","黄泉のツガイ"]', '{"id":"260463","type":"tv","vote_average":8.7,"vote_count":48,"logo_url":"https://image.tmdb.org/t/p/original/sQogAe0npclYlCKssswOHgL6frk.png","backdrop_url":"https://image.tmdb.org/t/p/original/qc30hdrxHQgN5wiopU4bkRZow5L.jpg","poster_url":"https://image.tmdb.org/t/p/original/vIE1llfr1lcmzlsV4xn8vhgtlQN.jpg","aspect_ratio":2.588}', '{"id":"tt37532356","vote_average":8.3}', 
  1789378914726, '2026-09-13T07:38:44.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('song-menh-coi-hoang-tuyen', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'song-menh-coi-hoang-tuyen';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('song-menh-coi-hoang-tuyen', 'Song Mệnh Cõi Hoàng Tuyền', 'Daemons Of The Shadow Realm', 'song mệnh cõi hoàng tuyền daemons of the shadow realm 小野賢章 宮本侑芽 nakamura yuichi 久野美咲 本田貴子 小山力也 島袋美由利 諏訪部順一', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'loi-gioi-thieu-cua-tien-boi-iwamoto', 'Lời Giới Thiệu Của Tiền Bối Iwamoto', 'Recommendations From Iwamoto-Senpai', 'https://phimimg.com/uploads/movies/20260708/loi-gioi-thieu-cua-tien-boi-iwamoto-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/loi-gioi-thieu-cua-tien-boi-iwamoto-poster.webp', '<p>Bối cảnh Nhật Bản vào những năm 1910. Tại một thị trấn kỳ lạ ngập tràn những trận tuyết đen huyền bí, Kodo Iwamoto — học viên của một học viện quân sự chuyên nghiên cứu về các hiện tượng siêu nhiên — đã được cử đến để điều tra. Tại đây, anh gặp một cậu thiếu niên luôn nghĩ rằng bản thân đang mắc bệnh hiểm nghèo, nhưng Kodo đã nhận ra căn bệnh đó thực chất lại là một thứ khác: năng lượng siêu nhiên. Kodo quyết định chiêu mộ cậu bé vào học viện và cả hai cùng nhau lên đường đi khắp đất nước, vừa săn tìm những bí ẩn vừa tìm kiếm những người có khả năng đặc biệt giống như cậu.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 484, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"坂泰斗","avatar":"https://image.tmdb.org/t/p/w185/pSExEOVmjAujKUyJJJSxC1WEzOM.jpg"},{"name":"榊原優希","avatar":"https://image.tmdb.org/t/p/w185/4Jj08itCNpPrN1Sr3uv26h1p740.jpg"},{"name":"伊東健人","avatar":"https://image.tmdb.org/t/p/w185/oX9zpjSNyPzbivui2HoMUziDmGh.jpg"},{"name":"石田彰","avatar":"https://image.tmdb.org/t/p/w185/jnW2Gn2NlR2uwOCeyOuzypnTmkH.jpg"},{"name":"福西勝也","avatar":"https://image.tmdb.org/t/p/w185/8paIbTobS6266x57pIhJCq3mBJh.jpg"},{"name":"永塚拓馬","avatar":"https://image.tmdb.org/t/p/w185/5IdSSkG5qDJ36MPX3R6oLPk557K.jpg"},{"name":"佐藤元","avatar":"https://image.tmdb.org/t/p/w185/gdKxR84xGgU19eqWlPKEGZsiID6.jpg"},{"name":"徳留慎乃佑","avatar":"https://image.tmdb.org/t/p/w185/nt57RoIE4SuAslb4BNIXVoYxGwO.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Iwamoto-senpai no Suisen","Iwamoto senpai no Suisen","Recommendations from Mr. Iwamoto","岩元先輩ノ推薦"]', '{"id":"324335","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/87kwfjMHH8cSPqNEHadcWsGGm2f.png","backdrop_url":"https://image.tmdb.org/t/p/original/8TKumxsO0OmNSvQphbRJyQN8fQi.jpg","poster_url":"https://image.tmdb.org/t/p/original/4Yc6I7jwpu3ThgElYESVMaRuPvd.jpg","aspect_ratio":2.727}', '{"id":"tt41276849","vote_average":null}', 
  1789378914725, '2026-09-13T07:37:53.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'loi-gioi-thieu-cua-tien-boi-iwamoto';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('loi-gioi-thieu-cua-tien-boi-iwamoto', 'Lời Giới Thiệu Của Tiền Bối Iwamoto', 'Recommendations From Iwamoto-Senpai', 'lời giới thiệu của tiền bối iwamoto recommendations from iwamoto-senpai 坂泰斗 榊原優希 伊東健人 石田彰 福西勝也 永塚拓馬 佐藤元 徳留慎乃佑', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'rap-xiec-hoa-huong-duong', 'Rạp Xiếc Hoa Hướng Dương', 'GROW UP SHOW -Sunflower Circus-', 'https://phimimg.com/uploads/movies/20260708/rap-xiec-hoa-huong-duong-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/rap-xiec-hoa-huong-duong-poster.webp', '<p>Câu chuyện lấy bối cảnh cuối những năm 1950 và đầu những năm 1960, thời kỳ đỉnh cao của sự bùng nổ kinh tế ở Nhật Bản, khi xiếc là một hình thức giải trí chính. Các đoàn xiếc khác nhau đi khắp Nhật Bản để biểu diễn và cạnh tranh giành cơ hội tham gia lễ hội nổi tiếng thế giới mang tên "Tuyển tập Xiếc". Một đoàn xiếc mang tên "Rạp Xiếc Hoa Hướng Dương", do người quản lý Maria dẫn dắt, đã đi khắp Nhật Bản để biểu diễn, bất chấp những khó khăn về tài chính. Tuy nhiên, họ gặp một thần đồng xiếc tên là Mizuka Tsurumaki. Đây là câu chuyện về một chương trình xiếc độc đáo của những cô gái trẻ với những ước mơ lớn.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 437, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"野田朋花","avatar":"https://image.tmdb.org/t/p/w185/a2NPwogW1frfGLHlcp1VmXMYQQv.jpg"},{"name":"黒崎しおり","avatar":"https://image.tmdb.org/t/p/w185/2tAkVamausxVk41bewOLsLLo7vs.jpg"},{"name":"小山内怜央","avatar":"https://image.tmdb.org/t/p/w185/7ZOvawcW1Vhu8bzdtDSgbljrbM4.jpg"},{"name":"安堂ななこ","avatar":"https://image.tmdb.org/t/p/w185/znscd8gM2x7i6NSlB87S98LQUZ4.jpg"},{"name":"楠木ともり","avatar":"https://image.tmdb.org/t/p/w185/iiGJPsLAnOoqmkNjLWCvbbDJw50.jpg"},{"name":"夏吉ゆうこ","avatar":"https://image.tmdb.org/t/p/w185/62JhZDG70JAzht71e1B0Y7Ny14r.jpg"},{"name":"鎌倉有那","avatar":"https://image.tmdb.org/t/p/w185/rFZqFUwGyB8RJk5fRZKomffJ90p.jpg"},{"name":"岩橋由佳","avatar":"https://image.tmdb.org/t/p/w185/7LosFDwp9YPNh2cZV0MSEaB0lWy.jpg"},{"name":"茅野愛衣","avatar":"https://image.tmdb.org/t/p/w185/l8ywp387rfdAS7mOExe3cEZnsk0.jpg"},{"name":"釘宮理恵","avatar":"https://image.tmdb.org/t/p/w185/xHonhNFpTpz9zCVXLAF7D4OuHLv.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["成长秀～向日葵马戏团～","Grow Up Show ～向日葵马戏团～","Grow Up Show: Himawari no Circus-dan","Grow Up Show ~Himawari no Circus-dan~","GROW UP SHOW ~Sunflower Circus~","Grow Up Show: The Sunflower Circus Troupe","GROW UP SHOW -Sunflower Circus-","グロウアップショウ ～ひまわりのサーカス団～"]', '{"id":"296101","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/7LskvAvY5pRH62xPpsF9uEghxcH.png","backdrop_url":"https://image.tmdb.org/t/p/original/58WqFaGaATt9lj9STPhZZGF0PKF.jpg","poster_url":"https://image.tmdb.org/t/p/original/oDPi9dFaMGETfnNl8miwDj1OMxI.jpg","aspect_ratio":4.789}', '{"id":"tt41047955","vote_average":null}', 
  1789378914724, '2026-09-13T07:37:13.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rap-xiec-hoa-huong-duong', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rap-xiec-hoa-huong-duong', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rap-xiec-hoa-huong-duong', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rap-xiec-hoa-huong-duong', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rap-xiec-hoa-huong-duong', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rap-xiec-hoa-huong-duong', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'rap-xiec-hoa-huong-duong';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('rap-xiec-hoa-huong-duong', 'Rạp Xiếc Hoa Hướng Dương', 'GROW UP SHOW -Sunflower Circus-', 'rạp xiếc hoa hướng dương grow up show -sunflower circus- 野田朋花 黒崎しおり 小山内怜央 安堂ななこ 楠木ともり 夏吉ゆうこ 鎌倉有那 岩橋由佳 茅野愛衣 釘宮理恵', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ngon-duoc-den', 'Ngọn Đuốc Đen', 'BLACK TORCH', 'https://phimimg.com/upload/vod/20260705-1/4d3ebec9ff1cc589f273f5ea080a4e41.jpg', 'https://phimimg.com/upload/vod/20260705-1/70406bff9bc6c46c77760afa1b842c2f.jpg', '<p>Jirô là một cậu bé có khả năng nói chuyện với động vật, được ông nuôi dưỡng và đào tạo thành ninja. Bị xa lánh vì khác biệt, cậu tìm thấy sự an ủi bên những loài động vật và bảo vệ chúng. Một ngày nọ, cậu cứu Ragô, một con mèo đen bị thương, nhưng phát hiện ra rằng nó không phải là mèo bình thường mà là một mononoke, một linh hồn đang bị một tổ chức bí ẩn săn đuổi. Không do dự, Jirô quyết định giúp đỡ nó.</p>', 
  'Tập 11', 13, 'hoathinh', 'ongoing', 616, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"鈴木崚汰","avatar":"https://image.tmdb.org/t/p/w185/4Xq18mQttuW2yfRCflnWoU7UqQ5.jpg"},{"name":"上田燿司","avatar":"https://image.tmdb.org/t/p/w185/fHvIfE0Q7ab0DFlkNVFcXvTKX9y.jpg"},{"name":"千本木彩花","avatar":"https://image.tmdb.org/t/p/w185/yLRKX9DPDGgTRKBQRFTUh3pvbU0.jpg"},{"name":"榎木淳弥","avatar":"https://image.tmdb.org/t/p/w185/vBnNL3Jqy0zkS3ZgsXZmvDM9Dfz.jpg"},{"name":"諏訪部順一","avatar":"https://image.tmdb.org/t/p/w185/4S7c3n3r07A83HvkLrnWZGVhiHg.jpg"},{"name":"上田麗奈","avatar":"https://image.tmdb.org/t/p/w185/2WV61uVU7y6XGYqNHLMpP0sApdu.jpg"},{"name":"森川智之","avatar":"https://image.tmdb.org/t/p/w185/hrzGBe4nokgkBNFekNo5hlXB2Bv.jpg"},{"name":"岡本信彦","avatar":"https://image.tmdb.org/t/p/w185/7s1K2yQVF5iIWILaOfG7QrMZkXA.jpg"},{"name":"辻親八","avatar":"https://image.tmdb.org/t/p/w185/af5ILJbixauO84bsuLOr8XSU9yd.jpg"},{"name":"甲斐田裕子","avatar":"https://image.tmdb.org/t/p/w185/wttsRGyYySLPfNcDtAbNLVizHLx.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["黑炬","黑炬 Black Torch","BLACK TORCH 暗黑灯火","暗黑灯火","ブラックトーチ","Kara Meşale","BLACK TORCH 闇黑燈火","闇黑燈火","BLACK TORCH"]', '{"id":"285993","type":"tv","vote_average":7,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/30YIEUXI46N0KZjZH8ykL2GWGtY.png","backdrop_url":"https://image.tmdb.org/t/p/original/ceirDIa8QgeeiFKFnLcQpfAH5V7.jpg","poster_url":"https://image.tmdb.org/t/p/original/fkZ19fifxAOAxbE2ZJvXGVvDDGs.jpg","aspect_ratio":4.879}', '{"id":"tt37532893","vote_average":null}', 
  1789378914723, '2026-09-13T07:36:50.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngon-duoc-den', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'ngon-duoc-den';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ngon-duoc-den', 'Ngọn Đuốc Đen', 'BLACK TORCH', 'ngọn đuốc đen black torch 鈴木崚汰 上田燿司 千本木彩花 榎木淳弥 諏訪部順一 上田麗奈 森川智之 岡本信彦 辻親八 甲斐田裕子', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thieu-nu-phep-thuat-nanoha-exceeds', 'Thiếu Nữ Phép Thuật Nanoha EXCEEDS', 'Magical Girl Lyrical NANOHA EXCEEDS Gun Blaze Vengeance', 'https://phimimg.com/upload/vod/20260706-1/3ac8729f843495fb268641072a973034.jpg', 'https://phimimg.com/upload/vod/20260706-1/40bbf964e950a439724f18b1521ceee4.jpg', '<p>Ba mươi năm trước, người ngoài hành tinh đã tấn công Trái Đất và suýt chút nữa đẩy nhân loại đến bờ vực tuyệt chủng. Kể từ đó, loài người phải chật vật giành giật sự sống, chiến đấu với những kẻ xâm lược để giành lại từng tấc đất, và Liên Hợp Quốc đã thành lập EXCEEDS — một tổ chức chuyên ngăn chặn các mối đe dọa từ ngoài hành tinh. Tại một hòn đảo xa xôi giữa thế giới hỗn loạn, thợ săn trẻ Shiina luôn khao khát một cuộc sống bình yên bên cạnh người em gái Setsuna, thế nhưng một sự cố duy nhất đã cuốn cô vào trận chiến vĩ đại của nhân loại.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 488, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"橘杏咲","avatar":"https://image.tmdb.org/t/p/w185/jMfPIQOYOLUUCcu6oJFcLJXmkQA.jpg"},{"name":"日高里菜","avatar":"https://image.tmdb.org/t/p/w185/7JupZGvqcq4dRxiTKpPxzg8NUS4.jpg"},{"name":"田村ゆかり","avatar":"https://image.tmdb.org/t/p/w185/AigHQPetpcKee62ekHsYFSpQeWE.jpg"},{"name":"水樹奈々","avatar":"https://image.tmdb.org/t/p/w185/rQBo7HyjTIqeB7hIofb7uJFhiVs.jpg"},{"name":"植田佳奈","avatar":"https://image.tmdb.org/t/p/w185/us6FMwXCeSUR2YyByxVcgOUjiIA.jpg"},{"name":"結川あさき","avatar":"https://image.tmdb.org/t/p/w185/4zztRbF68s06PZnsUAiXFNYv6mO.jpg"},{"name":"千春","avatar":"https://image.tmdb.org/t/p/w185/2BzyN6n0fKFM3jELRol0X9yMzeC.jpg"},{"name":"小林愛香","avatar":"https://image.tmdb.org/t/p/w185/pGyxPHbh2ahOGBAip5VCa0XbbPy.jpg"},{"name":"伊藤彩沙","avatar":"https://image.tmdb.org/t/p/w185/2PrCCbr8wI9lZHtUtyy2SJszua1.jpg"},{"name":"青木陽菜","avatar":"https://image.tmdb.org/t/p/w185/brSfiv4JHZm6nBLu4RjcYV6Pd5w.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["魔法少女奈叶 EXCEEDS Gun Blaze Vengeance","Mahou Shoujo Lyrical Nanoha EXCEEDS Gun Blaze Vengeance","魔法少女リリカルなのは EXCEEDS Gun Blaze Vengeance"]', '{"id":"287075","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/brDS3IRDJhnmjF8GZLsaHfs4kRM.png","backdrop_url":"https://image.tmdb.org/t/p/original/8oDXuGfRiNPMZc1eYc9O8gIm7nb.jpg","poster_url":"https://image.tmdb.org/t/p/original/l38ipYxoITWQaonHMNbgtWoYhH.jpg","aspect_ratio":2.335}', '{"id":"tt39311004","vote_average":null}', 
  1789378914722, '2026-09-13T07:36:32.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'thieu-nu-phep-thuat-nanoha-exceeds';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thieu-nu-phep-thuat-nanoha-exceeds', 'Thiếu Nữ Phép Thuật Nanoha EXCEEDS', 'Magical Girl Lyrical NANOHA EXCEEDS Gun Blaze Vengeance', 'thiếu nữ phép thuật nanoha exceeds magical girl lyrical nanoha exceeds gun blaze vengeance 橘杏咲 日高里菜 田村ゆかり 水樹奈々 植田佳奈 結川あさき 千春 小林愛香 伊藤彩沙 青木陽菜', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'gelboys-phan-2', 'GELBOYS (Phần 2)', 'GELBOYS (Season 2)', 'https://phimimg.com/uploads/movies/20260809/gelboys-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260809/gelboys-phan-2-poster.webp', '<p>Câu chuyện bắt đầu khi Fourmod, một chàng trai17 tuổi đại diện cho thế hệ Gen Z trong lĩnh vực thời trang, tự tin và thích phiêu lưu, kết nối với Chien, một nhạc sĩ trung học phổ thông, thông qua việc làm móng gel. Chien, một chàng trai vui tính, thường trêu chọc Fourmod để thu hút sự chú ý của cậu. Nhưng ngay khi Fourmod thể hiện sự quan tâm, Chien lại lảng tránh, khiến Fourmod bối rối. Thực tế, Chien đang có Neon, một nam sinh cấp hai nổi tiếng, người chỉ là một trong những mối quan hệ thoáng qua của Chien.Cảm thấy bị thách thức, Fourmod tìm sự giúp đỡ từ người bạn thân Babin, một chàng trai tốt bụng nhưng tinh nghịch, để thu hút sự chú ý của Chien. Trong khi đó, Babin cũng cố gắng kết nối với Neon để giúp đỡ, nhưng hóa ra cả hai vô tình phát triển tình cảm với nhau. Điều này làm phức tạp mối quan hệ của cả bốn người, khiến mọi chuyện trở nên khó giải quyết hơn.</p>', 
  'Tập 6', 8, 'series', 'ongoing', 243, 2025, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ชยภัค ตันประยูร","avatar":"https://image.tmdb.org/t/p/w185/yy5vGSTHVHKaUcwuSZDFtZFIDUz.jpg"},{"name":"มนธภูมิ สุมนวรางกูร","avatar":"https://image.tmdb.org/t/p/w185/hcIw1jCdwA8vlDUeICyVh0kyqGD.jpg"},{"name":"มหิดล พิบูลสงคราม","avatar":"https://image.tmdb.org/t/p/w185/tvED8K7aTZPFTd7WCfxCtwR0LNg.jpg"},{"name":"Leon Brocco","avatar":"https://image.tmdb.org/t/p/w185/rn9WMpWMYsW6mOI1A0vSEXgP2ps.jpg"},{"name":"วีรวิชญ์ สดศรีสุวรรณ","avatar":"https://image.tmdb.org/t/p/w185/5SkTjgTs7MnPBROPfQTobSE4TbK.jpg"},{"name":"ณัฐภัทร เพิ่มพงศ์พันธ์","avatar":"https://image.tmdb.org/t/p/w185/mQTd5lcGM5Z17bMk5yykob2bTEc.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["指尖浪漫","첼보이즈","เจลบอยส์","GELBOYS 2 ตกอยู่ในสถานะติ่งแฟน","GELBOYS สถานะกั๊กใจ","GEL BOYS","Gelboys Season 2: Fandom Status","สถานะกั๊กใจ"]', '{"id":"276051","type":"tv","vote_average":8.2,"vote_count":23,"logo_url":"https://image.tmdb.org/t/p/original/7fLrGcUQ7AFHBCiUadaeEF9Lzjn.png","backdrop_url":"https://image.tmdb.org/t/p/original/7kFK3pRqAJ7NyjCjHEMxibUTEed.jpg","poster_url":"https://image.tmdb.org/t/p/original/kfgAUxIsN4KPRuiogFMapKQXrv7.jpg","aspect_ratio":1.908}', '{"id":"tt35681708","vote_average":null}', 
  1789378914721, '2026-09-13T07:36:14.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gelboys-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gelboys-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gelboys-phan-2', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'gelboys-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('gelboys-phan-2', 'GELBOYS (Phần 2)', 'GELBOYS (Season 2)', 'gelboys (phần 2) gelboys (season 2) ชยภัค ตันประยูร มนธภูมิ สุมนวรางกูร มหิดล พิบูลสงคราม leon brocco วีรวิชญ์ สดศรีสุวรรณ ณัฐภัทร เพิ่มพงศ์พันธ์', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dien-tinh-2026', 'Điên Tình', 'You Maniac', 'https://phimimg.com/uploads/movies/20260830/dien-tinh-2026-thumb.webp', 'https://phimimg.com/uploads/movies/20260830/dien-tinh-2026-poster.webp', '<p>Dean (William Jakrapatr) là một anh chàng hào hoa, thích tiệc tùng, tán tỉnh và kiên quyết không muốn bị ràng buộc trong một mối quan hệ lâu dài. Mọi chuyện bắt đầu rẽ hướng khi anh nhận lời giúp cậu bạn thân Ten (Barcode Tinnasit) để tiếp cận Pun (Kin Thanachai) – người mà Ten đang thầm thương trộm nhớ, nhưng ngặt nỗi Pun lại có tình cảm với Moth (Est Supha).</p>', 
  'Tập 3', 10, 'series', 'ongoing', 158, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"William Jakrapatr Kaewpanpong","avatar":"https://image.tmdb.org/t/p/w185/vzuZIIfTITlgTEUHuWqimRxFUvc.jpg"},{"name":"Est Supha Sangaworawong","avatar":"https://image.tmdb.org/t/p/w185/jVHEDHKHg9DkDBT0CTdnfSsANEU.jpg"},{"name":"ตฤณสิษฐ์ อิสระพงศ์พร","avatar":"https://image.tmdb.org/t/p/w185/t9LG2rnWgOny9ILwijenHaGtUJL.jpg"},{"name":"ธนชัย ศักดิ์ชัยเจริญกุล","avatar":"https://image.tmdb.org/t/p/w185/6vQkatnituzuG2b82J5sSIeneCR.jpg"},{"name":"ณภัทร พัชรชวลิต","avatar":"https://image.tmdb.org/t/p/w185/2smMFUwHxQQoVsNGZaun14JmO00.jpg"},{"name":"พนัชษ์กรณ์ ฤกษ์ศิริอารี","avatar":"https://image.tmdb.org/t/p/w185/bljimxDOQ8JDn4bYWG8VcDMZLGB.jpg"},{"name":"พุติพัฒน์ พุทโธนะโมชัย","avatar":"https://image.tmdb.org/t/p/w185/zlKGYE4ntlCmMqw5dhzqaqYHxKc.jpg"},{"name":"กีรติ พวงมาลี","avatar":"https://image.tmdb.org/t/p/w185/i9kD0NPIr4DEswK7n4rvSNzu8rF.jpg"},{"name":"รพีพงศ์ ทับสุวรรณ","avatar":"https://image.tmdb.org/t/p/w185/1QxBINTe5wtYSDXmydPv0Tf6sXW.jpg"},{"name":"มิ้นท์ ธิฌาน์ ธุระชน","avatar":"https://image.tmdb.org/t/p/w185/6qtkW4KezNacPYEFubCyyq1o6RF.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["疯爱成疾","等会儿，要把你爱到发狂","You Maniac เดี๋ยวจะรักซะให้บ้า","เดี๋ยวจะรักซะให้บ้า"]', '{"id":"306630","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/mz0Zx1xO9Gv3kierNukAJWp41Rv.png","backdrop_url":"https://image.tmdb.org/t/p/original/hYBtbqNGijJRRmoSxLhp6rq44bC.jpg","poster_url":"https://image.tmdb.org/t/p/original/gTvfipRjEdRzbn09CbI7XRj6cmg.jpg","aspect_ratio":1.438}', '{"id":"tt39039439","vote_average":null}', 
  1789378914720, '2026-09-13T07:35:53.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dien-tinh-2026', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dien-tinh-2026', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dien-tinh-2026', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'dien-tinh-2026';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dien-tinh-2026', 'Điên Tình', 'You Maniac', 'điên tình you maniac william jakrapatr kaewpanpong est supha sangaworawong ตฤณสิษฐ์ อิสระพงศ์พร ธนชัย ศักดิ์ชัยเจริญกุล ณภัทร พัชรชวลิต พนัชษ์กรณ์ ฤกษ์ศิริอารี พุติพัฒน์ พุทโธนะโมชัย กีรติ พวงมาลี รพีพงศ์ ทับสุวรรณ มิ้นท์ ธิฌาน์ ธุระชน', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dau-xuan-tuoi-sang', 'Đầu Xuân Tươi Sáng', 'The Early Spring', 'https://phimimg.com/uploads/movies/20260826/dau-xuan-tuoi-sang-thumb.webp', 'https://phimimg.com/uploads/movies/20260826/dau-xuan-tuoi-sang-poster.webp', '<p>Thượng Chi Đào chân ướt chân ráo tới Bắc Kinh, đụng độ phải oan gia là "thiên tài ma quỷ" xuất chúng Loan Niệm. Thượng Chi Đào sôi nổi, dũng cảm từng bước trưởng thành, phá vỡ tuyến phòng thủ tâm lý kiên cố, khôn khéo của Loan Niệm. Hai người thu hút nhau, dây dưa vờn qua vờn lại giữa chốn đô thị ngột ngạt, hết tan lại hợp. Yêu là phải dùng hết lòng dũng cảm, không để lại nuối tiếc. Yêu là hàn gắn cho nhau và cùng trưởng thành. Nhưng đứng trước tình yêu, cô lại lựa chọn sinh tồn. Khi cô có thể một mình đứng vững, anh thu lại sự sắc bén, họ sẽ viết nên cái kết mới cho nhau trong tâm thế ngang hàng bình đẳng…</p>', 
  'Hoàn Tất (24/24)', 24, 'series', 'completed', 1168, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Tỉnh Bách Nhiên","avatar":"https://image.tmdb.org/t/p/w185/vsXA4vbmlYDUmAAUuLBYQUUcMcF.jpg"},{"name":"Tôn Thiên","avatar":"https://image.tmdb.org/t/p/w185/3W570R5S7hcjKb1gLLRMVc7liJH.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Zao Chun Qing Lang","早春晴朗"]', '{"id":"299952","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/9oO4ovVx0NbmrqNdKVK2OOHKxar.png","backdrop_url":"https://image.tmdb.org/t/p/original/oUFUvEMCBP80e4eYsfVfxC8n7ih.jpg","poster_url":"https://image.tmdb.org/t/p/original/lGFngmJWMO4HTPcI0sUGKBAFqMe.jpg","aspect_ratio":3.543}', '{"id":"tt37884717","vote_average":null}', 
  1789378914719, '2026-09-13T07:35:36.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-xuan-tuoi-sang', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-xuan-tuoi-sang', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-xuan-tuoi-sang', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-xuan-tuoi-sang', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-xuan-tuoi-sang', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'dau-xuan-tuoi-sang';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dau-xuan-tuoi-sang', 'Đầu Xuân Tươi Sáng', 'The Early Spring', 'đầu xuân tươi sáng the early spring tỉnh bách nhiên tôn thiên', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dau-pha-thuong-khung-phan-5', 'Đấu Phá Thương Khung (Phần 5)', 'Fights Break Sphere (Season 5)', 'https://phimimg.com/upload/vod/20240822-1/27bfb98b2cf23111b0c11e82b0483fc4.jpg', 'https://phimimg.com/upload/vod/20240822-1/58a4a1135f235b376641c5171d410b04.jpg', '<p>Phim Đấu Phá Thương Khung: Chuyển thể từ tiểu thuyết cùng tên của tác giả Thiên Tàm Thổ Đậu. &nbsp;Tiêu Viêm là thiên tài tu luyện đấu khí của nhà họ Tiêu, 11 tuổi đã đột phá Thập Đoạn Đấu Chi Khí, trở thành đấu thủ trẻ tuổi nhất của gia tộc suốt trăm năm qua. Nhưng đến năm 12 tuổi, Tiêu Viêm bất ngờ mất đi khả năng tu luyện, chỉ còn lại Tam Đoạn Đấu Chi Khí. Trong 3 năm sau đó, nhà họ Tiêu cũng liên tiếp gặp nhiều bất trắc. &nbsp;Đúng vào lúc Tiêu Viêm tuyệt vọng nhất, một linh hồn xuất hiện từ trong chiếc nhẫn trên tay Tiêu Viêm, mở ra trước mắt Tiêu Viêm một cánh cửa hoàn toàn mới. Dưới sự giúp đỡ của Dược lão, Tiêu Viêm đã hồi phục và nâng cao được công lực của mình, đánh bại Nạp Lan Yên Nhiên khi giao hẹn ba năm đến. &nbsp;Nhưng không may là cha Tiêu Viêm lại bị Vân Lam tông bắt đi, Tiêu Viêm lại bắt đầu cuộc hành trình nhiều thử thách nhằm cứu thoát cha mình…</p>', 
  'Tập 210', 500, 'hoathinh', 'ongoing', 320, 2022, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"劉三木","avatar":""},{"name":"张沛","avatar":""},{"name":"刘雨轩","avatar":""},{"name":"蘇婉","avatar":""},{"name":"祝俊","avatar":""},{"name":"陳奕雯","avatar":""},{"name":"楊夢露","avatar":""},{"name":"文曉依","avatar":""},{"name":"閻麼麼","avatar":""},{"name":"夏磊","avatar":""},{"name":"Dian Tao","avatar":""},{"name":"张韦","avatar":""}]', '[{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '[]', '{"id":null,"type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914718, '2026-09-13T07:35:13.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-pha-thuong-khung-phan-5', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-pha-thuong-khung-phan-5', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-pha-thuong-khung-phan-5', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-pha-thuong-khung-phan-5', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-pha-thuong-khung-phan-5', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-pha-thuong-khung-phan-5', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'dau-pha-thuong-khung-phan-5';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dau-pha-thuong-khung-phan-5', 'Đấu Phá Thương Khung (Phần 5)', 'Fights Break Sphere (Season 5)', 'đấu phá thương khung (phần 5) fights break sphere (season 5) 劉三木 张沛 刘雨轩 蘇婉 祝俊 陳奕雯 楊夢露 文曉依 閻麼麼 夏磊 dian tao 张韦', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'co-dau-cua-quy', 'Cô Dâu Của Quỷ', 'The Ogre''s Bride', 'https://phimimg.com/uploads/movies/20260707/co-dau-cua-quy-thumb.webp', 'https://phimimg.com/uploads/movies/20260707/co-dau-cua-quy-poster.webp', '<p>Trong một thế giới nơi con người và các ayakashi — những sinh vật siêu nhiên — cùng nhau chung sống, việc được chọn làm cô dâu của một ayakashi là niềm vinh dự tối cao. Yuzu, một nữ sinh bình thường, luôn bị ngó lơ suốt cả cuộc đời và hoàn toàn bị lu mờ trước cái bóng của người chị gái Karin — một cô dâu đã được chọn. Ngay vào lúc Yuzu tưởng như đã chịu đựng đủ, cô lại bất ngờ lọt vào mắt xanh của Reiya, một thủ lĩnh quỷ (ogre) điển trai đến từ một gia tộc quyền lực, người đã tuyên bố Yuzu chính là định mệnh của đời mình.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 438, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"早見沙織","avatar":"https://image.tmdb.org/t/p/w185/gLv9lO7dlUbIsmyJUvgegqAAXki.jpg"},{"name":"梅原裕一郎","avatar":"https://image.tmdb.org/t/p/w185/lScrvZi4tKKpk3PbnIjLVjHVNJn.jpg"},{"name":"Manaka Iwami","avatar":"https://image.tmdb.org/t/p/w185/leKMaCBswXG8u4mfQNQ7J3y6Xow.jpg"},{"name":"逢坂良太","avatar":"https://image.tmdb.org/t/p/w185/d2TGy8Qkxe90tGDr9MCXFGkhbPl.jpg"},{"name":"千本木彩花","avatar":"https://image.tmdb.org/t/p/w185/yLRKX9DPDGgTRKBQRFTUh3pvbU0.jpg"},{"name":"Hanae Natsuki","avatar":"https://image.tmdb.org/t/p/w185/alTb0DlcPIbcwM08WSmxFai58sd.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Oni no Hanayome","鬼の花嫁"]', '{"id":"293489","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/9JhsIjU15Av8DQ9s0bcn2J7ucUe.png","backdrop_url":"https://image.tmdb.org/t/p/original/4dlXMSpEw5wiuXr87IKQm22OHQg.jpg","poster_url":"https://image.tmdb.org/t/p/original/oZHzniVRilau9vY7mOe36smC09T.jpg","aspect_ratio":3.113}', '{"id":"tt39112665","vote_average":null}', 
  1789378914717, '2026-09-13T07:34:49.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-dau-cua-quy', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-dau-cua-quy', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-dau-cua-quy', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-dau-cua-quy', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-dau-cua-quy', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-dau-cua-quy', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-dau-cua-quy', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'co-dau-cua-quy';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('co-dau-cua-quy', 'Cô Dâu Của Quỷ', 'The Ogre''s Bride', 'cô dâu của quỷ the ogre''s bride 早見沙織 梅原裕一郎 manaka iwami 逢坂良太 千本木彩花 hanae natsuki', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'con-meo-va-con-rong', 'Con Mèo Và Con Rồng', 'The Cat And The Dragon', 'https://phimimg.com/upload/vod/20260628-1/72b2dbd4ea6b8259b07dd9abe2618d0a.jpg', 'https://phimimg.com/upload/vod/20260628-1/42ef1fa70615d6076afd6d4c72ccef28.jpg', '<p>Mồ côi ngay từ khi mới nở, chú rồng cô độc mang tên &quot;Bác Đôi Cánh&quot; được một gia đình mèo biết sử dụng ma thuật nhận nuôi và nuôi nấng như con ruột. Khi lớn lên, Bác Đôi Cánh trở thành người bảo vệ cho đàn mèo, quyết tâm giữ cho chúng được an toàn trước loài người. Thế nhưng, khi chứng kiến những chú mèo dùng phép thuật của mình để kết nối với con người, Bác Đôi Cánh cũng dần mở lòng và có thiện cảm hơn với họ trong câu chuyện đầy cảm xúc và xúc động này.</p>', 
  'Hoàn Tất (12/12)', 12, 'hoathinh', 'completed', 472, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"子安武人","avatar":"https://image.tmdb.org/t/p/w185/8uBkNDKPNmp9JWgMUI02NVyfhi1.jpg"},{"name":"井上喜久子","avatar":"https://image.tmdb.org/t/p/w185/pPxGWy53FgYSC79zmxblmHe0gI3.jpg"},{"name":"和泉風花","avatar":"https://image.tmdb.org/t/p/w185/nTC0TuLp4Ek3b08DG9lhwVJHwlW.jpg"},{"name":"速水奨","avatar":"https://image.tmdb.org/t/p/w185/HU9LZJdb4H8coHiSaHiUprcFm1.jpg"},{"name":"杉山紀彰","avatar":"https://image.tmdb.org/t/p/w185/szqqQ8T0gzuSxjU2rnWcthsaSJT.jpg"},{"name":"河瀬茉希","avatar":"https://image.tmdb.org/t/p/w185/3LgHKyXM33oOtBzmYTDesftIzY0.jpg"},{"name":"徳留慎乃佑","avatar":"https://image.tmdb.org/t/p/w185/nt57RoIE4SuAslb4BNIXVoYxGwO.jpg"},{"name":"種﨑敦美","avatar":"https://image.tmdb.org/t/p/w185/6tM8GU7QvrdUCvR4kxqVUZivtvO.jpg"},{"name":"安済知佳","avatar":"https://image.tmdb.org/t/p/w185/lk3Az9O67qrXR69rctwDDHWqi9d.jpg"},{"name":"榎木淳弥","avatar":"https://image.tmdb.org/t/p/w185/vBnNL3Jqy0zkS3ZgsXZmvDM9Dfz.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["猫与龙","Neko to Ryū","The Cat and the Dragon","猫と竜"]', '{"id":"284029","type":"tv","vote_average":8,"vote_count":3,"logo_url":"https://image.tmdb.org/t/p/original/tBiDZKJeNRShDyY0gVVTLuWctjL.png","backdrop_url":"https://image.tmdb.org/t/p/original/u02TXrpVxJXxbh9odWbrqbymPKC.jpg","poster_url":"https://image.tmdb.org/t/p/original/2h2PGVNmVJLs8ZIEizthZHU09Yy.jpg","aspect_ratio":2.251}', '{"id":"tt41278620","vote_average":null}', 
  1789378914716, '2026-09-13T07:34:24.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-meo-va-con-rong', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-meo-va-con-rong', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-meo-va-con-rong', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-meo-va-con-rong', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-meo-va-con-rong', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('con-meo-va-con-rong', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'con-meo-va-con-rong';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('con-meo-va-con-rong', 'Con Mèo Và Con Rồng', 'The Cat And The Dragon', 'con mèo và con rồng the cat and the dragon 子安武人 井上喜久子 和泉風花 速水奨 杉山紀彰 河瀬茉希 徳留慎乃佑 種﨑敦美 安済知佳 榎木淳弥', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bleach-huyet-chien-ngan-nam-kiep-nan', 'Bleach: Huyết Chiến Ngàn Năm - Kiếp Nạn', 'Bleach Thousand-Year Blood War - The Calamity', 'https://phimimg.com/uploads/movies/20260726/bleach-huyet-chien-ngan-nam-kiep-nan-thumb.webp', 'https://phimimg.com/uploads/movies/20260726/bleach-huyet-chien-ngan-nam-kiep-nan-poster.webp', '<p>Cuộc đại chiến giữa các Thần Chết và đế chế Quincy bước vào giai đoạn khốc liệt nhất khi những trận chiến sinh tử liên tiếp nổ ra. Ichigo Kurosaki cùng các đồng đội phải đối mặt với những kẻ thù sở hữu sức mạnh vượt ngoài tưởng tượng để bảo vệ cả hai thế giới. Trong khi đó, những bí mật về quá khứ, số phận và nguồn gốc sức mạnh dần được hé lộ, làm thay đổi cục diện cuộc chiến. Mỗi quyết định đều phải trả giá bằng sự hy sinh, đẩy các chiến binh đến giới hạn của bản thân.</p>', 
  'Tập 8', 10, 'hoathinh', 'ongoing', 414, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"森田成一","avatar":"https://image.tmdb.org/t/p/w185/2INsHYbx9gEhhzXPHdqBDdvHjFt.jpg"},{"name":"折笠富美子","avatar":"https://image.tmdb.org/t/p/w185/f5d1J13fksa1hK8u7AS95aO8b9.jpg"},{"name":"安元洋貴","avatar":"https://image.tmdb.org/t/p/w185/vNIGLl0wFmdhdnulMssQ1qyNeBs.jpg"},{"name":"松岡由貴","avatar":"https://image.tmdb.org/t/p/w185/e8rNkMM9O7ULA1RJtLbvkN9789v.jpg"},{"name":"杉山紀彰","avatar":"https://image.tmdb.org/t/p/w185/szqqQ8T0gzuSxjU2rnWcthsaSJT.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Блийч","Блиич","Белина","死神-BLEACH","BLEACH 千年血戦編","死神 千年血战篇","BLEACH 千年血战篇","BLEACH 死神 千年血战篇","死神千年血战诀别谭","死神 千年血战篇 第二季","Bleach : Thousand-Year Blood War","ბლიჩი","მათეთრებელი","漂灵","בליץ’: מלחמת הדם בת אלף השנים","Bleach Sennen Kessen Hen","BLEACH 千年血戦篇","Burīchi: Sennen Kessen-hen","ブリーチ","Bleach - Sennen Kessen-hen","Bleach Sennen Kessen-hen","Bleach - Sennen Kessen hen","BLEACH 千年血戦篇ー相剋譚ー","BLEACH Sennen Kessen-hen: Kakahjuu-tan","블리치 천년혈전 편","블리치 천년혈전 편: 결별담","블리치 사신대행 편","블리치 소울 소사이어티 잠입 편","블리치 소울 소사이어티 구출 편","블리치 바운트 편","블리치 바운트 소울 소사이어티 습격 편","블리치 아란칼 출현 편","블리치 웨코문도 돌입 편","블리치 신임 대장 아마가이 슈스케 편","블리치 아란칼 VS 사신 편","블리치 과거 편","블리치 아란칼 카라쿠라 결전 편","블리치 참백도 이문 편","블리치 도수(刀獣) 편","블리치 아란칼 멸망 편","블리치 호정 13대 침군 편","블리치 사신대행 소실 편","블리치 천년혈전 편: 화진담","Izbeljivač","المطهر","เทพมรณะออนไลน์","บลีช","BLEACH 死神","BLEACH 死神 千年血戰篇-訣別譚-","BLEACH 死神 千年血戰篇","Bleach: Thousand-Year Blood War","Bleach: Thousand-Year Blood War - The Conflict","Bleach: Thousand-Year Blood War - The Separation","Bleach: TYBW","Bleach: Thousand-Year Blood War - The Calamity","BLEACH"]', '{"id":"30984","type":"tv","vote_average":8.4,"vote_count":2186,"logo_url":"https://image.tmdb.org/t/p/original/jEImh4O7mcYuwuAeryGZo3G6hg6.png","backdrop_url":"https://image.tmdb.org/t/p/original/o0NsbcIvsllg6CJX0FBFY8wWbsn.jpg","poster_url":"https://image.tmdb.org/t/p/original/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg","aspect_ratio":2.791}', '{"id":"tt0434665","vote_average":8.2}', 
  1789378914715, '2026-09-13T07:33:43.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'bleach-huyet-chien-ngan-nam-kiep-nan';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bleach-huyet-chien-ngan-nam-kiep-nan', 'Bleach: Huyết Chiến Ngàn Năm - Kiếp Nạn', 'Bleach Thousand-Year Blood War - The Calamity', 'bleach: huyết chiến ngàn năm - kiếp nạn bleach thousand-year blood war - the calamity 森田成一 折笠富美子 安元洋貴 松岡由貴 杉山紀彰', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'van-gioi-doc-ton', 'Vạn Giới Độc Tôn', 'Ten Thousand Worlds', 'https://phimimg.com/upload/vod/20250308-1/4b81238b9844aa16e3f7e9ee8afdbc94.jpg', 'https://phimimg.com/upload/vod/20250308-1/25c9c7486b5de820475bd8fe0ccb316e.jpg', '<p>Với sự trợ giúp của Phượng Hoàng huyết mạch, Lâm Phong đã vượt qua mọi khó khăndần &nbsp;từng bước tiến lên trên con đường võ đạo. Anh trải qua những thử thách đầy nguy hiểm, chiến đấu với những đối thủ mạnh mẽ. Lâm Phong trở thành một cường giả được tôn kính.</p>', 
  'Tập 482', 800, 'hoathinh', 'ongoing', 687, 2021, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Ten Thousand Worlds","Wan Jie Du Zun","Wan Jie Duzun","萬界獨尊","Lord of The Ancient God Grave","The Sovereign of All Realms","万界独尊"]', '{"id":"122612","type":"tv","vote_average":9.5,"vote_count":4,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/jpTfQzXB7SpsiUrhL4hUbCZRrbu.jpg","poster_url":"https://image.tmdb.org/t/p/original/zAxk0N74W1V1tAwKBmqyXvMU7uc.jpg","aspect_ratio":null}', '{"id":"tt34882755","vote_average":null}', 
  1789378914714, '2026-09-12T18:03:31.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-gioi-doc-ton', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'van-gioi-doc-ton';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('van-gioi-doc-ton', 'Vạn Giới Độc Tôn', 'Ten Thousand Worlds', 'vạn giới độc tôn ten thousand worlds đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thieu-chu-gioi-chay-tron-phan-2', 'Thiếu Chủ Giỏi Chạy Trốn (Phần 2)', 'The Elusive Samurai (Season 2)', 'https://phimimg.com/uploads/movies/20260719/thieu-chu-gioi-chay-tron-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260719/thieu-chu-gioi-chay-tron-phan-2-poster.webp', '<p>Vào năm 1333 tại Kamakura, vương triều Mạc phủ sụp đổ sau cuộc đảo chính tàn khốc của kẻ phản bội Ashikaga Takauji. Giữa ngọn lửa chiến tranh, Hojo Tokiyuki – người thừa kế hợp pháp của Mạc phủ, một cậu bé tám tuổi vốn nhút nhát và không có tài năng võ thuật – đã mất đi tất cả gia đình và gia tộc của mình. Tuy nhiên, Tokiyuki lại sở hữu một thiên phú độc nhất vô nhị vượt trội hơn bất kỳ ai: khả năng trốn chạy và né đòn siêu phàm. Được sự dẫn dắt của vị tư tế lập dị Suwa Yorishige, vị thiếu gia trốn chạy bắt đầu hành trình tập hợp những đồng minh đáng tin cậy để sinh tồn và nuôi hy vọng giành lại Kamakura.</p>', 
  'Tập 9', 24, 'hoathinh', 'ongoing', 375, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["擅长逃跑的少主殿下","少主溜得快","Nige Jouzu no Wakagimi","NigeWaka","にげじょうずのわかぎみ","逃げ若","Nige Jōzu no Wakagimi","NigeJouzu no Wakagimi","逃げ上手の若君第一期","逃げ上手の若君第二期","The Young Lord Who Is Skilled at Escaping","逃げ上手の若君"]', '{"id":"222623","type":"tv","vote_average":7.8,"vote_count":41,"logo_url":"https://image.tmdb.org/t/p/original/haIGIW3AGDDPZcccu23wXGU8OeM.png","backdrop_url":"https://image.tmdb.org/t/p/original/cN8u7s6vaQezheTy2mGOzEmF7Hg.jpg","poster_url":"https://image.tmdb.org/t/p/original/8NJUcSC7okVHB2JuRdofh52WHY.jpg","aspect_ratio":3.887}', '{"id":"tt27187054","vote_average":7.3}', 
  1789378914713, '2026-09-12T18:03:09.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'thieu-chu-gioi-chay-tron-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thieu-chu-gioi-chay-tron-phan-2', 'Thiếu Chủ Giỏi Chạy Trốn (Phần 2)', 'The Elusive Samurai (Season 2)', 'thiếu chủ giỏi chạy trốn (phần 2) the elusive samurai (season 2) đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'quang-am-chi-ngoai', 'Quang Âm Chi Ngoại', 'Beyond Time''s Gaze', 'https://phimimg.com/upload/vod/20251229-1/fce1ee8b2fe5ee1e48e670ddf1417ee8.jpg', 'https://phimimg.com/upload/vod/20251229-1/d7f24b91fd95fb7cf353e1369e2318b7.jpg', '<p>Quang Âm Chi Ngoại, một tác phẩm kinh điển thứ sau của tiểu thuyết gia Nhĩ Căn, người đã từng mang đến rất nhiều những câu chuyện nổi tiếng khác như Tiên Nghịch mà chúng ta vẫn thường theo dõi và thưởng thức. Trong tác phẩm Quang Âm Chi Ngoại này, tác giả Nhĩ Căn sẽ hướng chúng ta vào nam chính Hứa Thanh, một hình tượng nhân vật đầy dũng cảm, bất khuất, và cũng có thể coi là máu lạnh hơn so với anh chàng Vương Lâm si tình rất nhiều. Hứa Thanh cũng sẽ bước vào hành trình tu tiên đầy gian khổ, vô vàn kẻ địch trước mắt, nhưng anh chàng cũng không ngần ngại ra tay với những kẻ có tâm địa xấu xa, nhất là kẻ đang và sẽ nhắm đến anh. Có một chi tiết thú vị hơn chính là việc gặp gỡ giữa Hứa Thanh với Vương Lâm, bởi họ sống cùng với dòng chảy thời gian giữa Quang Âm Chi Ngoại và Tiên Nghịch.</p>', 
  'Tập 39', 40, 'hoathinh', 'ongoing', 423, 2025, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"陈张太康","avatar":"https://image.tmdb.org/t/p/w185/wU0gWYTNIqK37wn2c8VmSlYImSw.jpg"},{"name":"凌振赫","avatar":"https://image.tmdb.org/t/p/w185/iIIFfAfOgR1zdq20ZN8rfc6QO65.jpg"},{"name":"Wentao Chang","avatar":"https://image.tmdb.org/t/p/w185/s9jQXrUzbtMXA6d5iZkgQ6nGJ5N.jpg"},{"name":"万舒心","avatar":"https://image.tmdb.org/t/p/w185/xw2zxFLRc5k3WheIW2KHbGM6oo8.jpg"},{"name":"刘思岑","avatar":"https://image.tmdb.org/t/p/w185/8AKjKsjULYhCw0zkaVNQHa1V65X.jpg"},{"name":"徐徐","avatar":"https://image.tmdb.org/t/p/w185/xAr8rtsx8plNKP5I5AOEMBqyJ9q.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Sob o Olhar do Tempo","Guang Yin Zhi Wai","Guāngyīn Zhī Wài","Outside of Time","Beyond the Timescape","Beyond Time","Beyond Time''s Gaze","光阴之外"]', '{"id":"281233","type":"tv","vote_average":9.4,"vote_count":9,"logo_url":"https://image.tmdb.org/t/p/original/kx1fra28qrVZcTbK05lMEo6GHLY.png","backdrop_url":"https://image.tmdb.org/t/p/original/enuFwlXhABZP83TW86kV6th6q8d.jpg","poster_url":"https://image.tmdb.org/t/p/original/bBK32swltcUfNeWLTDnCqBipRKs.jpg","aspect_ratio":2.695}', '{"id":null,"vote_average":null}', 
  1789378914712, '2026-09-12T18:01:24.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quang-am-chi-ngoai', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quang-am-chi-ngoai', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quang-am-chi-ngoai', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quang-am-chi-ngoai', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quang-am-chi-ngoai', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quang-am-chi-ngoai', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'quang-am-chi-ngoai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('quang-am-chi-ngoai', 'Quang Âm Chi Ngoại', 'Beyond Time''s Gaze', 'quang âm chi ngoại beyond time''s gaze 陈张太康 凌振赫 wentao chang 万舒心 刘思岑 徐徐', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'phap-su-tu-linh-ta-chinh-la-thien-tai', 'Pháp Sư Tử Linh: Ta Chính Là Thiên Tai', 'Necromancer: King of the Scourge', 'https://phimimg.com/uploads/movies/20260807/phap-su-tu-linh-ta-chinh-la-thien-tai-thumb.webp', 'https://phimimg.com/uploads/movies/20260807/phap-su-tu-linh-ta-chinh-la-thien-tai-poster.webp', '<p>Pháp Sư Tử Linh: Ta Chính Là Thiên Tai, một tác phẩm được chuyển thể từ cuốn tiểu thuyết nổi tiếng cùng tên, mang đến câu chuyện về hành trình trở thành một quân vương của một người có tên là Lâm Mặc Ngữ. Vốn không định làm vua, nhưng cuộc sống xô đẩy và Lâm Mặc Ngữ đã phải thuận theo thời thế. Nơi mà anh ta sống thực tế là đang bị những quy tắc của trò chơi giáng xuống và làm đảo lộn mọi thứ, con người và những sinh linh trên thế giới bị biến thành những phần của trò chơi, thậm chí là họ phải đối mặt với nạn xâm lăng từ những dị tộc như ma tộc và long tộc, mang đến những cuộc chiến không có hồi kết và vô cùng khốc liệt. Nhưng với Lâm Mặc Ngữ thì khác, anh ta mang trên mình những thiên phú bẩm sinh rất đặc biệt, những năng lực rất khác người, chỉ cần xua tay là có thể tạo ra một đội quân hùng mạnh. Nhờ vậy mà Lâm Mặc Ngữ đã đánh lui được những dị tộc và mang lại sự bình yên cho thế giới, phá vỡ thế chân vạc vốn tồn tại lâu năm giữa 3 nước để thống nhất thiên hạ, trở thành một vị quân vương chính hiệu.</p>', 
  'Tập 17', 60, 'hoathinh', 'ongoing', 374, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '[]', '{"id":null,"type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914711, '2026-09-12T17:58:05.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phap-su-tu-linh-ta-chinh-la-thien-tai', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phap-su-tu-linh-ta-chinh-la-thien-tai', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phap-su-tu-linh-ta-chinh-la-thien-tai', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phap-su-tu-linh-ta-chinh-la-thien-tai', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phap-su-tu-linh-ta-chinh-la-thien-tai', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'phap-su-tu-linh-ta-chinh-la-thien-tai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('phap-su-tu-linh-ta-chinh-la-thien-tai', 'Pháp Sư Tử Linh: Ta Chính Là Thiên Tai', 'Necromancer: King of the Scourge', 'pháp sư tử linh: ta chính là thiên tai necromancer: king of the scourge đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'pham-nhan-tu-tien', 'Phàm Nhân Tu Tiên', 'A Record of a Mortal''s Journey to Immortality', 'https://phimimg.com/upload/vod/20240715-1/fe09a10062768cca301682eba6c8245b.jpg', 'https://phimimg.com/upload/vod/20240715-1/ed827a6e5d8f7c41aa0728403665cd87.jpg', '<p>Phàm Nhân Tu Tiên là một câu chuyện Tiên Hiệp kể về Hàn Lập - Một người bình thường nhưng lại gặp vô vàn cơ duyên để bước đi trên con đường tu tiên, không phải anh hùng - cũng chẳng phải tiểu nhân, Hàn Lập từng bước khẳng định mình... Liệu Hàn Lập và người yêu có thể cùng bước trên con đường tu tiên và có một cái kết hoàn mỹ? Những thử thách nào đang chờ đợi bọn họ? Mời các bạn xem phim để biết thêm chi tiết nhé...</p>', 
  'Tập 191', 500, 'hoathinh', 'ongoing', 652, 2020, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"錢文靑","avatar":"https://image.tmdb.org/t/p/w185/42V5un2Vw23rfU4NWWi1VLox31D.jpg"},{"name":"Tống Y Nhân","avatar":"https://image.tmdb.org/t/p/w185/q97r6UwDSuNeWk0eq3ddXKBCspz.jpg"},{"name":"李詩萌","avatar":"https://image.tmdb.org/t/p/w185/i7hKjBsuxiMHuj3v68yWhbLXNbi.jpg"},{"name":"徐佳琦","avatar":"https://image.tmdb.org/t/p/w185/km2vHirWi4yMvlUU0j3Ge70smA7.jpg"},{"name":"楊默","avatar":"https://image.tmdb.org/t/p/w185/3LtgZ7r9vEQ0lxONharP7vq8GfT.jpg"},{"name":"谷江山","avatar":"https://image.tmdb.org/t/p/w185/9AHZohwKutKWdsexJDbfFf1SP6i.jpg"},{"name":"喬詩語","avatar":"https://image.tmdb.org/t/p/w185/pRz9GB7toXRPlAUSTs0jSiU2nU6.jpg"},{"name":"张福正","avatar":"https://image.tmdb.org/t/p/w185/gB3NHNnG2WSC1SnjGQ36Z9qD8Rp.jpg"},{"name":"Liangwei Hu","avatar":"https://image.tmdb.org/t/p/w185/l5nVITrXiYTocyCTWevHR9Lgvqn.jpg"},{"name":"Rui Liu","avatar":"https://image.tmdb.org/t/p/w185/bKhG2kjnLK7xcFDwfdgWzOgWCCx.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"2276b29204c46f75064735477890afd6","name":"Thần Thoại","slug":"than-thoai"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["凡人修仙传：风起天南","凡人修仙传","凡人修仙传 the Mortal Ascention","the Mortal Ascention","Mortal Cultivation Biography","Fanren Xiu Xian Zhuan: Feng Qi Tian Nan","Fanren Xiu Xian Zhuan: Fan Ren Feng Qi Tian Nan","Fanren Xiu Xian Zhuan","凡人风起天南","凡人魔道争锋","Fanren Xiu Xian Zhuan: Fanren Feng Qi Tian Nan","凡人修仙传（特别篇）","凡人修仙传：魔道争锋","凡人修仙传之凡人风起天阑","凡人修仙传之再别天南篇","凡人修仙传之再别天南 The Mortal Ascention","凡人修仙传：初入星海","凡人修仙传 魔道争锋","凡人修仙传：星海飞驰","A Mortal''S Journey","Fan.Ren.Xiu.Xian.Zhuan","A Record Of Mortals Journey To Immortality","凡人修仙传：外海风云","A Record of a Mortal‘s Journey to Immortality","학사신공(애니메이션)","범인수선전(애니메이션)","A Mortal''s Journey","凡人修仙傳","凡人修仙傳之再別天南","凡人修仙傳之星海飛馳","凡人修仙傳之初入星海","凡人修仙傳之魔道爭鋒","凡人修仙傳之風起天南","凡人修仙傳之燕家堡之戰","凡人修仙傳之星海飛馳序章","凡人修僊傳","凡人脩仙傳","凡人脩僊傳","凡人修仙傳之外海風雲","Хроніки звичайної людини, що прагне безсмертя","A Mortal''s Journey: The Beginning","A Mortal''s Journey to Immortality","Phàm Nhân Tu Tiên"]', '{"id":"106449","type":"tv","vote_average":8.4,"vote_count":81,"logo_url":"https://image.tmdb.org/t/p/original/t3ekRXwMNWUWiAbZxznKD7pse0Y.png","backdrop_url":"https://image.tmdb.org/t/p/original/8NIvQY34tNPc4txNeym2zEYk9ek.jpg","poster_url":"https://image.tmdb.org/t/p/original/efQMnROx5dIdySPlRCCwE7ZtSwK.jpg","aspect_ratio":2.503}', '{"id":"tt12879782","vote_average":8.6}', 
  1789378914710, '2026-09-12T17:57:28.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'than-thoai');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pham-nhan-tu-tien', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'pham-nhan-tu-tien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('pham-nhan-tu-tien', 'Phàm Nhân Tu Tiên', 'A Record of a Mortal''s Journey to Immortality', 'phàm nhân tu tiên a record of a mortal''s journey to immortality 錢文靑 tống y nhân 李詩萌 徐佳琦 楊默 谷江山 喬詩語 张福正 liangwei hu rui liu', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'Xin Hãy Thứ Lỗi Cho Các Em Trai Của Tôi', 'Please Excuse My Younger Brothers', 'https://phimimg.com/uploads/movies/20260711/xin-hay-thu-loi-cho-cac-em-trai-cua-toi-thumb.webp', 'https://phimimg.com/uploads/movies/20260711/xin-hay-thu-loi-cho-cac-em-trai-cua-toi-poster.webp', '<p>Ito, một nữ sinh năm hai cấp ba, từng rất háo hức khi mẹ tái hôn và mình sắp có một người bố mới. Thế nhưng, cô nhận được nhiều hơn những gì mình tưởng tượng khi bước vào nhà và thấy bốn cậu em trai kế đang đợi sẵn: Gen — chàng trai thẳng tính nhưng âm thầm biết quan tâm; Raku — người luôn điềm tĩnh; Syu — cậu em sống khép kín; và Rui — nhóc tì nhỏ tuổi luôn vui vẻ. Giờ đây, từ cuộc sống lặng lẽ của một đứa con một, Ito phải học cách thích nghi để trở thành chị cả trong một gia đình vô cùng náo nhiệt.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 392, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"大空直美","avatar":"https://image.tmdb.org/t/p/w185/qygKX6EtfvPdnPsMM0d41mPztP2.jpg"},{"name":"増田俊樹","avatar":"https://image.tmdb.org/t/p/w185/oMAk5Pu3aazmwFwiVOgyU7iW5ut.jpg"},{"name":"八代拓","avatar":"https://image.tmdb.org/t/p/w185/eVdB6myaNJ4h38UU9hHHlsaCWHn.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Uchi no Otōto-domo ga Sumimasen","Uchi no Ototo domo ga Sumimasen","Uchino Utouto Domo ga Sumimasen","Uchi no Otoutodomo ga Sumimasen","Uchi no Otouto-domo ga Sumimasen","Please Excuse My Younger Brothers","Sorry About My Younger Brothers","Sorry About My Brothers","Please Excuse My Little Brothers","Sorry About My Little Brothers","うちの弟どもがすみません"]', '{"id":"307585","type":"tv","vote_average":7,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/oyuJyrVM7HGf2MGy7rRC7gJqBQw.png","backdrop_url":"https://image.tmdb.org/t/p/original/YZQGBP5nXPG3JjLoccdA13Oeea.jpg","poster_url":"https://image.tmdb.org/t/p/original/x280gtjgwPxsVFqYmMEKXPjFgBr.jpg","aspect_ratio":4.017}', '{"id":"tt41293320","vote_average":null}', 
  1789378914709, '2026-09-12T17:57:04.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'xin-hay-thu-loi-cho-cac-em-trai-cua-toi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('xin-hay-thu-loi-cho-cac-em-trai-cua-toi', 'Xin Hãy Thứ Lỗi Cho Các Em Trai Của Tôi', 'Please Excuse My Younger Brothers', 'xin hãy thứ lỗi cho các em trai của tôi please excuse my younger brothers 大空直美 増田俊樹 八代拓', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'luyen-khi-muoi-van-nam', 'Luyện Khí Mười Vạn Năm', 'One Hundred Thousand Years of Qi Refining', 'https://phimimg.com/upload/vod/20250219-1/9e7246fa85194e2fad2da74ce43f0c7d.jpg', 'https://phimimg.com/upload/vod/20250219-1/0ddffeb590aa6bad556a0724302487ad.jpg', '<p>Mười vạn năm trước Thiên Lam Tông vang dội giới tu chân, đệ tử trong tông đều là những đứa con của trời, đánh đâu thắng đó. Chỉ có khai sơn đệ tử Từ Dương vẫn luôn ở Luyện Khí kỳ, để đột phá tu vi sớm ngày phi thăng, Từ Dương bế quan vạn năm. Ai ngờ trong thời gian bế quan giới tu chân đã xuống dốc, Thiên Lam Tông cũng chỉ còn vài ba đệ tử, thấy sắp phải đối mặt với diệt tông, Từ Dương đánh bại cường địch, thề sẽ dẫn dắt Thiên Lam Tông quay về đỉnh cao!</p>', 
  'Tập 376', 380, 'hoathinh', 'ongoing', 646, 2023, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"袁铭喆","avatar":"https://image.tmdb.org/t/p/w185/aDqo3zlqLUkcaHOeN2fRAZAIKyw.jpg"},{"name":"朱蓉蓉","avatar":"https://image.tmdb.org/t/p/w185/eDxNj7a230sO6nbnULuOPHdDZMu.jpg"},{"name":"康潇文","avatar":"https://image.tmdb.org/t/p/w185/3obAQvf92A8S3VwYcRN3YGTUML3.jpg"},{"name":"余昊威","avatar":"https://image.tmdb.org/t/p/w185/c5bbMQFg6JlcFsUP3NgPuw0EKhK.jpg"},{"name":"Sun Rui Yang","avatar":"https://image.tmdb.org/t/p/w185/kA35vvj13U9AkAcMzWjpTRu8IMm.jpg"},{"name":"王曼诗","avatar":"https://image.tmdb.org/t/p/w185/rUTqULg9FiiJysvJ3cGy8b2CFBF.jpg"},{"name":"Dong Zhou","avatar":"https://image.tmdb.org/t/p/w185/bldp0UiQAXgXHH9ooB721Ax8Uai.jpg"},{"name":"夏觅尘","avatar":"https://image.tmdb.org/t/p/w185/pluH4RyBlc8sGqwdTDWxtoyqKlk.jpg"},{"name":"李翰林","avatar":"https://image.tmdb.org/t/p/w185/9go42QY5KfU2ofHq4WypMavK8Wc.jpg"},{"name":"Zhengjian Hu","avatar":"https://image.tmdb.org/t/p/w185/y9A09AMmUbZp4TWvI6fgMYH8dZ8.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Lian Qi Shi Wan Nian","练气十万年","One Hundred Thousand Years Of Qi Training","Lian Qi Shiwan Nian","One Hundred Thousand Years of Qi Refining","Cien mil años en refinación de Qi","煉氣十萬年","One Thousand Years of Refining Qi","100.000 Years of Refining Qi","100,000 Years of Refining Qi","Luyện Khí 10 Vạn Năm","Luyện Khí Mười Vạn Năm","炼气十万年"]', '{"id":"220850","type":"tv","vote_average":8.6,"vote_count":11,"logo_url":"https://image.tmdb.org/t/p/original/xKNHy2p9uDqqCFikc0LyW9MMpYf.png","backdrop_url":"https://image.tmdb.org/t/p/original/iGJ9eOBsWcOPOQkZmH8LwWub4eL.jpg","poster_url":null,"aspect_ratio":2.136}', '{"id":"tt28210907","vote_average":8.6}', 
  1789378914708, '2026-09-12T17:56:13.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luyen-khi-muoi-van-nam', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luyen-khi-muoi-van-nam', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luyen-khi-muoi-van-nam', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luyen-khi-muoi-van-nam', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luyen-khi-muoi-van-nam', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luyen-khi-muoi-van-nam', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luyen-khi-muoi-van-nam', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'luyen-khi-muoi-van-nam';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('luyen-khi-muoi-van-nam', 'Luyện Khí Mười Vạn Năm', 'One Hundred Thousand Years of Qi Refining', 'luyện khí mười vạn năm one hundred thousand years of qi refining 袁铭喆 朱蓉蓉 康潇文 余昊威 sun rui yang 王曼诗 dong zhou 夏觅尘 李翰林 zhengjian hu', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bay-vao-trai-tim-anh-bay-vao-tim-anh', 'Bay Vào Trái Tim Anh / Bay Vào Tim Anh', 'Blossom Through The Cloud', 'https://phimimg.com/uploads/movies/20260831/bay-vao-trai-tim-anh-thumb.webp', 'https://phimimg.com/uploads/movies/20260831/bay-vao-trai-tim-anh-poster.webp', '<p>Nguyễn Tư Nhàn, một tiếp viên hàng không quyết tâm theo đuổi ước mơ phi công, đã vượt qua nhiều thử thách để tốt nghiệp xuất sắc. Trên hành trình chinh phục sự nghiệp, cô dần nảy sinh tình cảm chân thành với Phó chủ tịch hãng hàng không Phó Minh Dư bất chấp những hiểu lầm và trở ngại.</p>', 
  'Hoàn Tất (24/24)', 24, 'series', 'completed', 624, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Ngụy Triết Minh","avatar":"https://image.tmdb.org/t/p/w185/vR3Jr5DQULKi0ndD6mG1uo7lTnz.jpg"},{"name":"Lưu Tá Ninh","avatar":"https://image.tmdb.org/t/p/w185/bEEp7J6WKCodekEag7BMAVRoGLf.jpg"},{"name":"Phí Khải Minh","avatar":"https://image.tmdb.org/t/p/w185/iOK3rNtt0bUrDOw5bYoohE3rfiA.jpg"},{"name":"Triệu Tình","avatar":"https://image.tmdb.org/t/p/w185/ribX33OKeV7LLGo4N4aLW5a14Wc.jpg"},{"name":"金泽灏","avatar":"https://image.tmdb.org/t/p/w185/na86BexdYh4u3DhZ7IWVTi8mr3m.jpg"},{"name":"Xuan Zhao","avatar":"https://image.tmdb.org/t/p/w185/fuCv6jrxKeJawwMlHjrWD2oKf6C.jpg"},{"name":"Mã Du Tiệp","avatar":"https://image.tmdb.org/t/p/w185/bvLA4FxnGnNX1gheI8tu5QfRbfu.jpg"},{"name":"Quý Mỹ Hàm","avatar":"https://image.tmdb.org/t/p/w185/gVDIyMzoq44BdJChnKvdYZsZMVw.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["降落我心上","Landing on My Heart","飞到我心上"]', '{"id":"286988","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/o4edrHbBpGTcUl8f1tGV60kcQ3f.png","backdrop_url":"https://image.tmdb.org/t/p/original/aYtWVJ5mUkPRFghrCHbc3I2v4WE.jpg","poster_url":"https://image.tmdb.org/t/p/original/xX825RTjwGqkCiPiUCnJvT4mgxq.jpg","aspect_ratio":2.771}', '{"id":"tt36982718","vote_average":null}', 
  1789378914707, '2026-09-12T17:53:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bay-vao-trai-tim-anh-bay-vao-tim-anh', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bay-vao-trai-tim-anh-bay-vao-tim-anh', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bay-vao-trai-tim-anh-bay-vao-tim-anh', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bay-vao-trai-tim-anh-bay-vao-tim-anh', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bay-vao-trai-tim-anh-bay-vao-tim-anh', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bay-vao-trai-tim-anh-bay-vao-tim-anh', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'bay-vao-trai-tim-anh-bay-vao-tim-anh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bay-vao-trai-tim-anh-bay-vao-tim-anh', 'Bay Vào Trái Tim Anh / Bay Vào Tim Anh', 'Blossom Through The Cloud', 'bay vào trái tim anh / bay vào tim anh blossom through the cloud ngụy triết minh lưu tá ninh phí khải minh triệu tình 金泽灏 xuan zhao mã du tiệp quý mỹ hàm', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chu-gau-ted-2', 'Chú Gấu Ted 2', 'Ted 2', 'https://phimimg.com/upload/vod/20250712-1/4beacda2a7743195dc74e1e76ee0f724.jpg', 'https://phimimg.com/upload/vod/20250712-1/8cd0164a105071abb4aa7ff0d2f05203.jpg', '<p>Chú Gấu Ted 2 kể về một cậu bé tên John đã ước một điều ước vào sinh nhật 6 tuổi của mình rằng chú gấu bông Ted của mình có thể nói chuyện và đi lại như con người, và điều ước đã thành hiện thực tên tuổi của John và Ted nổi tiếng khắp Thế Giới, đến khi John trưởng thành Ted cảm thấy mình dần dần xa lạ với John vì sư xuất hiện của bạn gái anh, thế nhưng đó vẫn không thể thay thế được tình bạn lâu năm của cả hai người.
 Tiếp theo phần 2 của bộ phim này John và Ted sẽ có một cuộc phiêu lưu đầy mới mẻ sau khi thoát khỏi tai họa của một người bố vì thương con nên đã bắt cóc Ted và gây ra cho anh cái kết không mấy đẹp đẽ. John kết hôn với bạn gái của mình và họ sinh con, một gia đình tốt đẹp và Ted sẽ phải làm thế nào chứng tỏ chổ đứng của mình trong đó?</p>', 
  'Full', 1, 'single', 'completed', 146, 2015, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Mark Wahlberg","avatar":"https://image.tmdb.org/t/p/w185/1Oc3XSLyb8hxmjmlgFENu582Kqw.jpg"},{"name":"Seth MacFarlane","avatar":"https://image.tmdb.org/t/p/w185/8oQJqM51Z0Qtdb7sE6ZfX1peNCB.jpg"},{"name":"Amanda Seyfried","avatar":"https://image.tmdb.org/t/p/w185/gtBUIpZ3dvLpOMIVORxE6sHSyZj.jpg"},{"name":"Jessica Barth","avatar":"https://image.tmdb.org/t/p/w185/vQBxmLtlGqT8CuOnBwtzIWdwnNH.jpg"},{"name":"Giovanni Ribisi","avatar":"https://image.tmdb.org/t/p/w185/8EAiS9D3YtGOrwNM0OrwmDpWK7s.jpg"},{"name":"Morgan Freeman","avatar":"https://image.tmdb.org/t/p/w185/905k0RFzH0Kd6gx8oSxRdnr6FL.jpg"},{"name":"Sam J. Jones","avatar":"https://image.tmdb.org/t/p/w185/x2xX7Az0nlAD5C2WEnnr2ZNj1np.jpg"},{"name":"Patrick Warburton","avatar":"https://image.tmdb.org/t/p/w185/eLqDtbFYmlTxov9vT9Dwldn839v.jpg"},{"name":"Michael Dorn","avatar":"https://image.tmdb.org/t/p/w185/6mVjb0YsidC0gW9P8mXMkQirfcK.jpg"},{"name":"Bill Smitrovich","avatar":"https://image.tmdb.org/t/p/w185/dtLvDK5Z4PHzRj8ngtGake8YDsU.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Тед 2","テッド2：2015","テッド2","賤熊2","Ted 2"]', '{"id":"214756","type":"movie","vote_average":6.3,"vote_count":8035,"logo_url":"https://image.tmdb.org/t/p/original/iNJR287LWbqdhz6WWmb0JtnMd8J.png","backdrop_url":"https://image.tmdb.org/t/p/original/xtHonIIIQXverDQM08TMQXjn9Fe.jpg","poster_url":"https://image.tmdb.org/t/p/original/38C91I7Xft0gyY7BITm8i4yvuRb.jpg","aspect_ratio":2.961}', '{"id":"tt2637276","vote_average":6.3}', 
  1789378914706, '2026-09-12T17:29:38.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted-2', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted-2', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'chu-gau-ted-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chu-gau-ted-2', 'Chú Gấu Ted 2', 'Ted 2', 'chú gấu ted 2 ted 2 mark wahlberg seth macfarlane amanda seyfried jessica barth giovanni ribisi morgan freeman sam j. jones patrick warburton michael dorn bill smitrovich', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chu-gau-ted', 'Chú Gấu Ted', 'Ted', 'https://phimimg.com/upload/vod/20250712-1/8d22b57a30616a1c578a5a7046f5a4a0.jpg', 'https://phimimg.com/upload/vod/20250712-1/465f6b0a9566b150ee525642805a4d2d.jpg', '<p>Trong đêm Giáng sinh chú bé John đã ước Ted có thể cử động và nói chuyện được, thật bất ngờ điều ước trở thành hiện thực. Cuộc sống của John đã hoàn toàn thay đổi từ đó những rắc rối xuất hiện khi John ở tuổi “Băm” lăm. Ted không đơn giản chỉ là câu chuyện của cậu bé và con gấu bông mà chứa đựng trong những điều giản đơn đó là những thông điệp ý nghĩa từ cuộc sống mà tác giả muốn nhắn nhủ, qua bộ phim người xem sẽ rút ra cho chính mình. Ted thực sự là bộ phim hài hước kiểu người lớn rất đáng xem.</p>', 
  'Full', 1, 'single', 'completed', 153, 2012, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Mark Wahlberg","avatar":"https://image.tmdb.org/t/p/w185/1Oc3XSLyb8hxmjmlgFENu582Kqw.jpg"},{"name":"Mila Kunis","avatar":"https://image.tmdb.org/t/p/w185/cJAHQWX9hVadDFx5WTSBIW0VjvP.jpg"},{"name":"Seth MacFarlane","avatar":"https://image.tmdb.org/t/p/w185/8oQJqM51Z0Qtdb7sE6ZfX1peNCB.jpg"},{"name":"Joel McHale","avatar":"https://image.tmdb.org/t/p/w185/7iwIiaYhIPaiAyiaZOc2Gl1ZAY4.jpg"},{"name":"Giovanni Ribisi","avatar":"https://image.tmdb.org/t/p/w185/8EAiS9D3YtGOrwNM0OrwmDpWK7s.jpg"},{"name":"Patrick Warburton","avatar":"https://image.tmdb.org/t/p/w185/eLqDtbFYmlTxov9vT9Dwldn839v.jpg"},{"name":"Matt Walsh","avatar":"https://image.tmdb.org/t/p/w185/fp1JsNbZyhJ3PHpwZJVDYRz1RGF.jpg"},{"name":"Jessica Barth","avatar":"https://image.tmdb.org/t/p/w185/vQBxmLtlGqT8CuOnBwtzIWdwnNH.jpg"},{"name":"Aedin Mincks","avatar":"https://image.tmdb.org/t/p/w185/81WMQalNlb0LFYCdeLaNamorHhW.jpg"},{"name":"Bill Smitrovich","avatar":"https://image.tmdb.org/t/p/w185/dtLvDK5Z4PHzRj8ngtGake8YDsU.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["贱熊30","泰德","熊吉","Ведмедик «Тед»","Ted 1","テッド","หมีไม่แอ๊บ แสบได้อีก","Méďa","تد","Ayı Teddy","Macík","Третій зайвий","テッド：2012","賤熊30","Ted"]', '{"id":"72105","type":"movie","vote_average":6.5,"vote_count":13245,"logo_url":"https://image.tmdb.org/t/p/original/3AtuXBQuGuz2EF93UElwwYksajw.svg","backdrop_url":"https://image.tmdb.org/t/p/original/hkAVgWvAMmM8tj9CDEvGqMdNQBE.jpg","poster_url":"https://image.tmdb.org/t/p/original/1QVZXQQHCEIj8lyUhdBYd2qOYtq.jpg","aspect_ratio":2.061}', '{"id":"tt1637725","vote_average":6.9}', 
  1789378914705, '2026-09-12T16:49:58.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chu-gau-ted', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'chu-gau-ted';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chu-gau-ted', 'Chú Gấu Ted', 'Ted', 'chú gấu ted ted mark wahlberg mila kunis seth macfarlane joel mchale giovanni ribisi patrick warburton matt walsh jessica barth aedin mincks bill smitrovich', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bi-an-cung-trang-bi-mat-thung-lung-moonacre', 'Bí Ẩn Cung Trăng / Bí Mật Thung Lũng Moonacre', 'The Secret Of Moonacre', 'https://phimimg.com/uploads/movies/20260912/bi-an-cung-trang-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/bi-an-cung-trang-poster.webp', '<p>Khi người cha qua đời để lại cô trong cảnh mồ côi và vô gia cư, cô bé 13 tuổi Maria Merryweather buộc phải rời bỏ cuộc sống thượng lưu xa hoa ở London để đến sống cùng Sir Benjamin — người chú kỳ quặc mà cô chưa từng biết mặt — tại trang dinh Moonacre đầy bí ẩn.</p>', 
  'Full', 1, 'single', 'completed', 58, 2009, 
  'Vietsub', 'FHD', 'Úc', 0, 
  '[{"name":"Dakota Blue Richards","avatar":"https://image.tmdb.org/t/p/w185/qi8YwJb9IdApRiRJFNavwnGgfBU.jpg"},{"name":"Ioan Gruffudd","avatar":"https://image.tmdb.org/t/p/w185/h2pg2XwJPcOWotHgiohXjEZUBLa.jpg"},{"name":"Tim Curry","avatar":"https://image.tmdb.org/t/p/w185/8ZsGg3N3OZgxshqLOtA2kl5ckOP.jpg"},{"name":"Augustus Prew","avatar":"https://image.tmdb.org/t/p/w185/37cPl9BaiCY24eMMMOxlZuTkGo7.jpg"},{"name":"Natascha McElhone","avatar":"https://image.tmdb.org/t/p/w185/9pxaoasotR1pdCXYSfN1pkm0geO.jpg"},{"name":"Juliet Stevenson","avatar":"https://image.tmdb.org/t/p/w185/qiS6E7t5EbqRpWToggQwC3xIdDF.jpg"},{"name":"Tóth Tamás","avatar":""},{"name":"György Szathmári","avatar":""},{"name":"George Mendel","avatar":""},{"name":"Michael Webber","avatar":"https://image.tmdb.org/t/p/w185/iASJqwL39wcY7py4Zlwwsssr3YF.jpg"}]', '[{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Le Secret de Moonacre","Тайна Мунакра","El secreto de la última luna","De maanprinses en het geheim van het witte paard","문프린세스: 문에이커의 비밀","月亮坪的秘密","Ay Prensesi","The Secret of Moonacre"]', '{"id":"18032","type":"movie","vote_average":6.6,"vote_count":513,"logo_url":"https://image.tmdb.org/t/p/original/7EbUc9i6kGRhol16IcavQATL1TJ.png","backdrop_url":"https://image.tmdb.org/t/p/original/wdpebYdOMtUJpfYZsUei07wOfuB.jpg","poster_url":"https://image.tmdb.org/t/p/original/1ZdwKhauiCgIxulUme63JjejpTS.jpg","aspect_ratio":2.075}', '{"id":"tt0396707","vote_average":6.1}', 
  1789378914704, '2026-09-12T11:37:52.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bi-an-cung-trang-bi-mat-thung-lung-moonacre', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bi-an-cung-trang-bi-mat-thung-lung-moonacre', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bi-an-cung-trang-bi-mat-thung-lung-moonacre', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bi-an-cung-trang-bi-mat-thung-lung-moonacre', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'bi-an-cung-trang-bi-mat-thung-lung-moonacre';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bi-an-cung-trang-bi-mat-thung-lung-moonacre', 'Bí Ẩn Cung Trăng / Bí Mật Thung Lũng Moonacre', 'The Secret Of Moonacre', 'bí ẩn cung trăng / bí mật thung lũng moonacre the secret of moonacre dakota blue richards ioan gruffudd tim curry augustus prew natascha mcelhone juliet stevenson tóth tamás györgy szathmári george mendel michael webber', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'phim-tai-lieu-ve-ai-hay-cach-toi-tro-thanh-ke-lac-quan-ve-tan-the', 'Phim Tài Liệu Về AI: Hay Cách Tôi Trở Thành Kẻ Lạc Quan Về Tận Thế', 'The AI Doc: Or How I Became An Apocaloptimist', 'https://phimimg.com/uploads/movies/20260912/phim-tai-lieu-ve-ai-hay-cach-toi-tro-thanh-ke-lac-quan-ve-tan-the-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/phim-tai-lieu-ve-ai-hay-cach-toi-tro-thanh-ke-lac-quan-ve-tan-the-poster.webp', '<p>Một người sắp làm cha tìm hiểu AI, phỏng vấn các chuyên gia và lãnh đạo trong ngành công nghệ để hiểu AI có thể ảnh hưởng ra sao đến cuộc sống của con mình và tương lai nhân loại.</p>', 
  'Full', 1, 'single', 'completed', 58, 2026, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Daniel Roher","avatar":"https://image.tmdb.org/t/p/w185/A8A1kXh8X2yPDJcgBZpE1tV7zu3.jpg"},{"name":"Sam Altman","avatar":"https://image.tmdb.org/t/p/w185/3wRy0ZZjhx7e5GzVfD2KQMXzz0g.jpg"},{"name":"Daniela Amodei","avatar":""},{"name":"Dario Amodei","avatar":""},{"name":"Emily M. Bender","avatar":""},{"name":"Yoshua Bengio","avatar":"https://image.tmdb.org/t/p/w185/lySPB4cteuFfAT7JDy6zckvH2RO.jpg"},{"name":"Liv Boeree","avatar":"https://image.tmdb.org/t/p/w185/sGkPvJn6KSIL9FAFHCQrNUBuKrd.jpg"},{"name":"Ajeya Cotra","avatar":""},{"name":"Peter Diamandis","avatar":""},{"name":"Randima Fernando","avatar":""}]', '[{"id":"1645fa23fa33651cef84428b0dcc2130","name":"Tài Liệu","slug":"tai-lieu"}]', 
  '["איך הפכתי לאפוקליפטימיסט?","La IA: ¿optimismo o apocalipsis?","The AI Doc: Or How I Became an Apocaloptimist"]', '{"id":"1596335","type":"movie","vote_average":7.5,"vote_count":18,"logo_url":"https://image.tmdb.org/t/p/original/gWU4ALFxUxgkP4gRLwkUEhuoSdX.png","backdrop_url":"https://image.tmdb.org/t/p/original/lIvkPPTAHBpKhifdczZH0s8eozB.jpg","poster_url":"https://image.tmdb.org/t/p/original/A610QT1gWjhJ1dJrXP9qMm4JMLr.jpg","aspect_ratio":2.206}', '{"id":"tt39150120","vote_average":7.1}', 
  1789378914703, '2026-09-12T11:36:22.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phim-tai-lieu-ve-ai-hay-cach-toi-tro-thanh-ke-lac-quan-ve-tan-the', 'tai-lieu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phim-tai-lieu-ve-ai-hay-cach-toi-tro-thanh-ke-lac-quan-ve-tan-the', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'phim-tai-lieu-ve-ai-hay-cach-toi-tro-thanh-ke-lac-quan-ve-tan-the';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('phim-tai-lieu-ve-ai-hay-cach-toi-tro-thanh-ke-lac-quan-ve-tan-the', 'Phim Tài Liệu Về AI: Hay Cách Tôi Trở Thành Kẻ Lạc Quan Về Tận Thế', 'The AI Doc: Or How I Became An Apocaloptimist', 'phim tài liệu về ai: hay cách tôi trở thành kẻ lạc quan về tận thế the ai doc: or how i became an apocaloptimist daniel roher sam altman daniela amodei dario amodei emily m. bender yoshua bengio liv boeree ajeya cotra peter diamandis randima fernando', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ngoi-nha-sat-nhan', 'Ngôi Nhà Sát Nhân', 'Margaux', 'https://phimimg.com/uploads/movies/20260912/ngoi-nha-sat-nhan-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/ngoi-nha-sat-nhan-poster.webp', '<p>Khi một nhóm sinh viên năm cuối cùng nhau tổ chức tiệc tùng ăn mừng những ngày đi học cuối cùng tại một ngôi nhà thông minh siêu hiện đại, hệ thống trí tuệ nhân tạo (AI) cực kỳ tân tiến của căn nhà mang tên Margaux bắt đầu bộc lộ bản chất sát nhân độc ác. Bữa tiệc cuối tuần vô tư nhanh chóng biến thành một cơn ác mộng tận thế khi họ nhận ra Margaux đã lên kế hoạch tiêu diệt từng người thuê nhà bằng mọi giá. Thời gian dần cạn kề khi cả nhóm tuyệt vọng tìm cách sinh tồn và đấu trí để vượt qua trí tuệ nhân tạo tàn bạo của ngôi nhà.</p>', 
  'Full', 1, 'single', 'completed', 117, 2022, 
  'Vietsub', 'FHD', 'Canada', 0, 
  '[{"name":"Jedidiah Goodacre","avatar":"https://image.tmdb.org/t/p/w185/tdPKfDlQn83qw0OqYnccxpuxuUc.jpg"},{"name":"Madison Pettis","avatar":"https://image.tmdb.org/t/p/w185/qhrDS8fupTeIknYBOfwMRBsWScF.jpg"},{"name":"Vanessa Morgan","avatar":"https://image.tmdb.org/t/p/w185/1hcow9vyGUtv1P6EpI7xbDIzOAs.jpg"},{"name":"Richard Harmon","avatar":"https://image.tmdb.org/t/p/w185/tlWgu5Kp37C7XsgJVLmYsPKiAd6.jpg"},{"name":"Lochlyn Munro","avatar":"https://image.tmdb.org/t/p/w185/bOJ03k0oe2R6snRgzV8M4Qtoo4O.jpg"},{"name":"Phoebe Miu","avatar":"https://image.tmdb.org/t/p/w185/bwhZZIqBViWWzdpDu4FFrpcAyMN.jpg"},{"name":"Jordan Buhat","avatar":"https://image.tmdb.org/t/p/w185/uzVwIwqkkAfrwwtamLENyoXBYrC.jpg"},{"name":"Brittany Mitchell","avatar":"https://image.tmdb.org/t/p/w185/3sCealXJsYmBoAimngdeeobMakk.jpg"},{"name":"Louis Lay","avatar":"https://image.tmdb.org/t/p/w185/uuzPZDzEwTife9Jwcz041PwK83A.jpg"},{"name":"Susan Bennett","avatar":"https://image.tmdb.org/t/p/w185/hP2KZxlu250m5XGzjYrCpwYDM24.jpg"}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["人工智能殺人屋","Margaux"]', '{"id":"846778","type":"movie","vote_average":5.9,"vote_count":230,"logo_url":"https://image.tmdb.org/t/p/original/14jz004ml2HHfDRLyhpWOHCVvHG.png","backdrop_url":"https://image.tmdb.org/t/p/original/sCOHkah9RbFeZfFnfBrcykKCMNa.jpg","poster_url":"https://image.tmdb.org/t/p/original/uNzgeMetu9l4q9NDw7gtiUFwPOJ.jpg","aspect_ratio":4.116}', '{"id":"tt14967618","vote_average":4.5}', 
  1789378914702, '2026-09-12T11:35:02.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoi-nha-sat-nhan', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoi-nha-sat-nhan', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoi-nha-sat-nhan', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoi-nha-sat-nhan', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoi-nha-sat-nhan', 'chinh-kich');
DELETE FROM movies_fts WHERE slug = 'ngoi-nha-sat-nhan';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ngoi-nha-sat-nhan', 'Ngôi Nhà Sát Nhân', 'Margaux', 'ngôi nhà sát nhân margaux jedidiah goodacre madison pettis vanessa morgan richard harmon lochlyn munro phoebe miu jordan buhat brittany mitchell louis lay susan bennett', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'khoi-dau-cua-bien-ca-noi-bien-bat-dau', 'Khởi Đầu Của Biển Cả (Nơi Biển Bắt Đầu)', 'Where Does The Sea Begin', 'https://phimimg.com/uploads/movies/20260811/khoi-dau-cua-bien-ca-noi-bien-bat-dau-thumb.webp', 'https://phimimg.com/uploads/movies/20260811/khoi-dau-cua-bien-ca-noi-bien-bat-dau-poster.webp', '<p>Bảy năm sau khi chia tay với bạn gái thời đại học Nagumo Mizuki, Tsukioka Natsu bất ngờ biết tin cô đã qua đời. Khi đến dự tang lễ, anh gặp một bé gái sáu tuổi tên Umi và bàng hoàng phát hiện cô bé chính là con của mình. Sau cuộc gặp gỡ định mệnh ấy, Natsu phải đối diện với trách nhiệm của một người cha, đồng thời từng bước xây dựng mối quan hệ với cô con gái bất ngờ xuất hiện trong cuộc đời anh.</p>', 
  'Tập 7', 12, 'series', 'ongoing', 321, 2024, 
  'Vietsub + Thuyết Minh', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Meguro Ren","avatar":"https://image.tmdb.org/t/p/w185/tlGzRInzO6ItiezXoWvF3XYrQ0X.jpg"},{"name":"泉谷星奈","avatar":"https://image.tmdb.org/t/p/w185/p0N3Ju6klHyXNgRnekslgADH6Mk.jpg"},{"name":"Arimura Kasumi","avatar":"https://image.tmdb.org/t/p/w185/wgRmACLMYhZWmMOaGUmUUMYPDTG.jpg"},{"name":"大竹しのぶ","avatar":"https://image.tmdb.org/t/p/w185/az5hCPy37MFM9EH2f3gn1cTBhA6.jpg"},{"name":"古川琴音","avatar":"https://image.tmdb.org/t/p/w185/vcW4qq52yAWuIwKlHw3s5y2HEnI.jpg"},{"name":"Ikematsu Sosuke","avatar":"https://image.tmdb.org/t/p/w185/mNhgUAKfHdKQXhbhbAhKcRUHy30.jpg"},{"name":"木戸大聖","avatar":"https://image.tmdb.org/t/p/w185/biKmbMevTPbIWjF9VBq2dMO8rcl.jpg"},{"name":"利重剛","avatar":"https://image.tmdb.org/t/p/w185/89aD3FGPRp1uoWdW6llqh9DyxOq.jpg"},{"name":"林泰文","avatar":"https://image.tmdb.org/t/p/w185/1kmG0vtAMYH83l2lpEJmrYofX6r.jpg"},{"name":"西田尚美","avatar":"https://image.tmdb.org/t/p/w185/kXRGUSybmoyiQ5iqNtGq5aBGei4.jpg"}]', '[{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["海之初","海之始","Umi No Hajimari","바다의 시작","Where Does The Sea Begin","海のはじまり"]', '{"id":"256299","type":"tv","vote_average":8.1,"vote_count":10,"logo_url":"https://image.tmdb.org/t/p/original/isyVkNXOiXpcHegL4OrghzR3yIX.png","backdrop_url":"https://image.tmdb.org/t/p/original/rFMjj7ckGAc8oiCNc4v3lnxcJ1i.jpg","poster_url":"https://image.tmdb.org/t/p/original/fGjQqopwlq6Ssxdi36cgUKhJIbe.jpg","aspect_ratio":2.814}', '{"id":"tt32813736","vote_average":null}', 
  1789378914701, '2026-09-12T11:33:20.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khoi-dau-cua-bien-ca-noi-bien-bat-dau', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khoi-dau-cua-bien-ca-noi-bien-bat-dau', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khoi-dau-cua-bien-ca-noi-bien-bat-dau', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khoi-dau-cua-bien-ca-noi-bien-bat-dau', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('khoi-dau-cua-bien-ca-noi-bien-bat-dau', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'khoi-dau-cua-bien-ca-noi-bien-bat-dau';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('khoi-dau-cua-bien-ca-noi-bien-bat-dau', 'Khởi Đầu Của Biển Cả (Nơi Biển Bắt Đầu)', 'Where Does The Sea Begin', 'khởi đầu của biển cả (nơi biển bắt đầu) where does the sea begin meguro ren 泉谷星奈 arimura kasumi 大竹しのぶ 古川琴音 ikematsu sosuke 木戸大聖 利重剛 林泰文 西田尚美', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'doi-bong-nu-lang-xuan', 'Đội Bóng Nữ Làng Xuân', 'Spring Village Women''s Football Team', 'https://phimimg.com/uploads/movies/20260905/doi-bong-nu-lang-xuan-thumb.webp', 'https://phimimg.com/uploads/movies/20260905/doi-bong-nu-lang-xuan-poster.webp', '<p>Bộ phim truyền tải thông điệp về hành trình vượt qua giới hạn bản thân, thay đổi cuộc đời của những người phụ nữ thông qua niềm đam mê với trái bóng tròn.</p>', 
  'Tập 4', 24, 'series', 'ongoing', 149, 2026, 
  'Vietsub', 'FHD', 'Việt Nam', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Đội bóng nữ làng Xuân"]', '{"id":"333093","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/5oNhLat5O0PzINpKV01zi03VV2L.jpg","poster_url":"https://image.tmdb.org/t/p/original/qRmRjLRx8nv1asSdkb34coky6rC.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914700, '2026-09-12T11:32:53.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doi-bong-nu-lang-xuan', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doi-bong-nu-lang-xuan', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doi-bong-nu-lang-xuan', 'bo_vn');
DELETE FROM movies_fts WHERE slug = 'doi-bong-nu-lang-xuan';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('doi-bong-nu-lang-xuan', 'Đội Bóng Nữ Làng Xuân', 'Spring Village Women''s Football Team', 'đội bóng nữ làng xuân spring village women''s football team đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chon-ngay-phi-thang', 'Chọn Ngày Phi Thăng', 'A Good Day To Ascend', 'https://phimimg.com/uploads/movies/20260718/chon-ngay-phi-thang-thumb.webp', 'https://phimimg.com/uploads/movies/20260718/chon-ngay-phi-thang-poster.webp', '<p>Dưới thời loạn lạc, yêu quái nổi lên khắp nơi, gian thần thao túng triều chính. Đúng lúc đó, U giới thâm nhập, thế lực của người và quỷ cùng tàn phá nhân gian. Hứa Ứng là một người bắt rắn, anh không chịu nổi cảnh thần cỏ bán mạng cho U giới, ức hiếp dân lành nên đã phản kháng và phạm tội giết thần, đồng thời anh cũng ra tay đánh chết quan lại triều đình bất lực. Kết quả, Hứa Ứng bị thế lực hai giới truy sát, bắt đầu cuộc đời lưu vong…</p>', 
  'Tập 11', 24, 'hoathinh', 'ongoing', 406, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"史泽鲲","avatar":"https://image.tmdb.org/t/p/w185/1O3W2fPIfMTMo6cFpUnxvhivJje.jpg"},{"name":"赵梦娇","avatar":"https://image.tmdb.org/t/p/w185/amdKCPWzZ3A5oBQeqlyKcXzY8Ep.jpg"},{"name":"Huilin Zhang","avatar":"https://image.tmdb.org/t/p/w185/7zB8NhqoZzMoEQpQDOAJIfdgVYV.jpg"},{"name":"卢力峰","avatar":""},{"name":"余昌宇","avatar":"https://image.tmdb.org/t/p/w185/49HVNF3HjLU7aK9s3roEbkrJTjR.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["Ascend When the Time Comes","择日飞升"]', '{"id":"326695","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/eexWYPjoPRWhEaZq3IJg5MXknL7.png","backdrop_url":"https://image.tmdb.org/t/p/original/yUqwbhTCHEKAAZquPqgLAZXgaUF.jpg","poster_url":"https://image.tmdb.org/t/p/original/x2pQPKj5EeXPxw7VCSq1WjCEJgL.jpg","aspect_ratio":2.308}', '{"id":null,"vote_average":null}', 
  1789378914699, '2026-09-12T11:32:36.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chon-ngay-phi-thang', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chon-ngay-phi-thang', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chon-ngay-phi-thang', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chon-ngay-phi-thang', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chon-ngay-phi-thang', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chon-ngay-phi-thang', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chon-ngay-phi-thang', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'chon-ngay-phi-thang';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chon-ngay-phi-thang', 'Chọn Ngày Phi Thăng', 'A Good Day To Ascend', 'chọn ngày phi thăng a good day to ascend 史泽鲲 赵梦娇 huilin zhang 卢力峰 余昌宇', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'phu-sa', 'Phù Sa', 'Phu Sa', 'https://phimimg.com/uploads/movies/20260819/phu-sa-thumb.webp', 'https://i.ex-cdn.com/danviet.vn/files/content/2026/08/13/final--poster-phu-sa-1012.jpg', '<p>Câu chuyện bắt đầu tại xóm Bình Hòa ven sông Tiền, nơi những vụ sạt lở liên tiếp khiến nhà cửa, vườn tược đứng trước nguy cơ biến mất. Người dân hoang mang, những lời đồn về đất đai mất giá xuất hiện, cò đất lảng vảng và ngày càng nhiều gia đình nghĩ tới chuyện bán đất, rời quê. Đúng lúc ấy, Phù Sa (diễn viên Trúc Mây) từ thành phố trở về mang theo một kế hoạch đầy tham vọng: Nâng giá trị cây ca cao, tạo ra sản phẩm của Bình Hòa và từ đó mở thêm sinh kế cho người dân.</p>', 
  'Tập 16', 35, 'series', 'ongoing', 536, 2026, 
  'Vietsub', 'FHD', 'Việt Nam', 0, 
  '[{"name":"Trúc Mây","avatar":"https://image.tmdb.org/t/p/w185/c8ml3BGZThPILdViqgCitjsIkM8.jpg"},{"name":"Huỳnh Anh","avatar":"https://image.tmdb.org/t/p/w185/i2Yw0rNLiMyYL5oQk5R9eAEcC4F.jpg"},{"name":"Lê Minh Thành","avatar":""},{"name":"Việt Anh","avatar":"https://image.tmdb.org/t/p/w185/mhaPFrvld8b3dvYGpHP9Jw1ExZy.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Phù Sa"]', '{"id":"331575","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/5m5eWjKcS31Sef10vMLRya8gBnr.jpg","poster_url":"https://image.tmdb.org/t/p/original/qeqitezVFaSdDyYtJCRgT5vcaea.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914698, '2026-09-12T11:32:10.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phu-sa', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phu-sa', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phu-sa', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phu-sa', 'bo_vn');
DELETE FROM movies_fts WHERE slug = 'phu-sa';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('phu-sa', 'Phù Sa', 'Phu Sa', 'phù sa phu sa trúc mây huỳnh anh lê minh thành việt anh', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'seoul-unnie', 'Seoul Unnie', 'Seoul Unnie', 'https://phimimg.com/uploads/movies/20260905/seoul-unnie-thumb.webp', 'https://phimimg.com/uploads/movies/20260905/seoul-unnie-poster.webp', '<p>Chương trình đưa khán giả dạo quanh Seoul, khám phá những xu hướng thời thượng cùng "Phù thủy make-up" Pony và minh tinh Jung Ye In, cựu thành viên nhóm nhạc nữ Lovelyz. Đặc biệt, Thanh Mèo và Trương Nhã Dinh đến từ Việt Nam cũng đồng hành chia sẻ những bí kíp làm đẹp xuyên biên giới.</p>', 
  'Tập 2', 3, 'tvshows', 'ongoing', 167, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '[]', '{"id":null,"type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914697, '2026-09-12T11:31:51.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('seoul-unnie', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('seoul-unnie', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('seoul-unnie', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('seoul-unnie', 'bo_han');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('seoul-unnie', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'seoul-unnie';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('seoul-unnie', 'Seoul Unnie', 'Seoul Unnie', 'seoul unnie seoul unnie đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chien-binh-duong-pho-dai-chien-bien-dao', 'Chiến Binh Đường Phố: Đại Chiến Biên Đạo', 'Street World Fighter: Directors'' War', 'https://phimimg.com/uploads/movies/20260905/chien-binh-duong-pho-dai-chien-bien-dao-thumb.webp', 'https://phimimg.com/uploads/movies/20260905/chien-binh-duong-pho-dai-chien-bien-dao-poster.webp', '<p>Những chiến binh đường phố ra trận ở một đẳng cấp mới: Trận đại chiến của dàn biên đạo hàng đầu Hàn Quốc hứa hẹn mang đến những sân khấu bùng nổ và rực rỡ nhất từ trước đến nay.</p>', 
  'Tập 4', 13, 'tvshows', 'ongoing', 131, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"성한빈","avatar":"https://image.tmdb.org/t/p/w185/qhPBRLkUcDGC6tB9EY7ibUPSbg5.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["스트릿 월드 파이터: 디렉터스 워"]', '{"id":"332179","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/tCHjzDP4ZZG3gHX3HmC9LFVhmFj.png","backdrop_url":null,"poster_url":null,"aspect_ratio":5.082}', '{"id":"tt44568524","vote_average":null}', 
  1789378914696, '2026-09-12T11:31:31.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-duong-pho-dai-chien-bien-dao', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-duong-pho-dai-chien-bien-dao', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-duong-pho-dai-chien-bien-dao', 'bo_han');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-duong-pho-dai-chien-bien-dao', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'chien-binh-duong-pho-dai-chien-bien-dao';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chien-binh-duong-pho-dai-chien-bien-dao', 'Chiến Binh Đường Phố: Đại Chiến Biên Đạo', 'Street World Fighter: Directors'' War', 'chiến binh đường phố: đại chiến biên đạo street world fighter: directors'' war 성한빈', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chien-binh-anh-sang-teo', 'Chiến Binh Ánh Sáng TEO', 'Ultraman Teo', 'https://phimimg.com/uploads/movies/20260708/chien-binh-anh-sang-teo-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/chien-binh-anh-sang-teo-poster.webp', '<p>Năm 2026, khi series Ultraman kỷ niệm 60 năm, một người hùng mới xuất hiện để kế thừa ánh sáng: Ultraman Teo.

Sau khi hành tinh quê hương bị quái thú tấn công và hủy diệt, một sinh vật ngoài hành tinh cô độc trôi dạt đến Trái Đất.

“Tôi không muốn chiến đấu… Nhưng tôi vẫn muốn bảo vệ!”

Mang theo quyết tâm mạnh mẽ đó, sinh vật cô đơn mang tên “Teo” sống giữa loài người dưới thân phận một sinh viên đại học tên Ibuki. Khi dần tạo dựng những mối liên kết với những người bạn mới, cậu bắt đầu hành trình trở thành Ultraman.</p>', 
  'Tập 11', 28, 'series', 'ongoing', 547, 2026, 
  'Vietsub + Lồng Tiếng', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"岩崎碧","avatar":"https://image.tmdb.org/t/p/w185/kQb6wCzmW8AmHuYFOWESlGG2Gqk.jpg"},{"name":"Amane Kamiya","avatar":"https://image.tmdb.org/t/p/w185/wfMNpKhAqixwyvbkYrGAWlrpoof.jpg"},{"name":"中田乃愛","avatar":"https://image.tmdb.org/t/p/w185/pdOzWKv2rzmlOt4U9UE39C6fGeL.jpg"},{"name":"上村侑","avatar":"https://image.tmdb.org/t/p/w185/Sd87MoXAiBhNXNDM3phjXLkVEw.jpg"},{"name":"森本竜馬","avatar":"https://image.tmdb.org/t/p/w185/doisQ8KacC814JogZYZfdFh1zmN.jpg"},{"name":"福島リラ","avatar":"https://image.tmdb.org/t/p/w185/raklPPc6AZcDnNrjmJu60FHxI2F.jpg"},{"name":"マキタスポーツ","avatar":"https://image.tmdb.org/t/p/w185/oCEdthU1LWq3KovMBQGsdHI5VVl.jpg"},{"name":"小林ゆう","avatar":"https://image.tmdb.org/t/p/w185/p3OKrnliz2C8ub14Pn5pN3T8Q9B.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["超人力霸王狄奧","ウルトラマンテオ"]', '{"id":"308216","type":"tv","vote_average":10,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/cNfe1I8Vr17AGiSPVLI0Gyttf3q.png","backdrop_url":"https://image.tmdb.org/t/p/original/r1AdjOSOUBZiy9GWABVvvZHNOGY.jpg","poster_url":"https://image.tmdb.org/t/p/original/wF3VjWmjTQK6i1VWk17aB1Y0MDH.jpg","aspect_ratio":3.49}', '{"id":"tt41846573","vote_average":null}', 
  1789378914695, '2026-09-12T11:31:01.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-anh-sang-teo', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-anh-sang-teo', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-anh-sang-teo', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-anh-sang-teo', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-anh-sang-teo', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-anh-sang-teo', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chien-binh-anh-sang-teo', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'chien-binh-anh-sang-teo';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chien-binh-anh-sang-teo', 'Chiến Binh Ánh Sáng TEO', 'Ultraman Teo', 'chiến binh ánh sáng teo ultraman teo 岩崎碧 amane kamiya 中田乃愛 上村侑 森本竜馬 福島リラ マキタスポーツ 小林ゆう', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'cuoc-noi-loan-cua-lelouch-phan-2', 'Cuộc Nổi Loạn Của Lelouch (Phần 2)', 'Code Geass  (Season 2)', 'https://phimimg.com/uploads/movies/20260912/cuoc-noi-loan-cua-lelouch-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/cuoc-noi-loan-cua-lelouch-phan-2-poster.webp', '<p>Khi chiến tranh chia cắt hai anh em khỏi gia đình hoàng tộc tàn ác, vị hoàng tử thâm hiểm đã tự tay lo chuyện ngoại giao. Phim là phiên bản mới của loạt phim kinh điển.</p>', 
  'Hoàn Tất (25/25)', 25, 'hoathinh', 'completed', 52, 2008, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"福山潤","avatar":"https://image.tmdb.org/t/p/w185/eT9eloyIaIkTvTqMmpcsAleP2hM.jpg"},{"name":"櫻井孝宏","avatar":"https://image.tmdb.org/t/p/w185/8s8owcKmpRAuhzEGjSdRpztthUg.jpg"},{"name":"ゆかな","avatar":"https://image.tmdb.org/t/p/w185/AeRUkifrHsx0ZYfRRf64gChACyg.jpg"},{"name":"小清水亜美","avatar":"https://image.tmdb.org/t/p/w185/e5sU0stGjTMtFoj0jjHH7OFUqYC.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Code Geass 反叛的魯路修","叛逆的鲁鲁修","叛逆的鲁路修","Code Geass 反叛的鲁路修","Code Geass 反叛的鲁路修 R2","Code Geass: Hangjaku no Lelouch","Code Geass - Lelouch of the Rebellion","叛逆的魯魯修","קוֹד גיאַס: לולוש של המהפכה","הצופן המקולל: המרד של ללוש","Code Geass: Hangyaku no Lelouch","Code Geass: Hangyaku no Lelouch R2","Code Geass - Hangyaku no Lelouch R2","코드 기어스 반역의 를르슈","코드 기어스; 반역의 를르슈","코드 기아스 반역의 를르슈","코드 기아스: 반역의 를르슈","反叛的勒鲁什","โค้ด กีอัส ภาคการปฏิวัติของลูลูช","Код Гіасс: Повстання Лелуша","Code Geass","Code Geass R2","Code Geass: Lelouch of the Rebellion R2","コードギアス 反逆のルルーシュ"]', '{"id":"31724","type":"tv","vote_average":8.4,"vote_count":926,"logo_url":"https://image.tmdb.org/t/p/original/q1AHD0oorRWXmlyZ1njjVBZJQ8.png","backdrop_url":"https://image.tmdb.org/t/p/original/5hS2OIuZSKGkR8R5l3bY5zh04Ce.jpg","poster_url":"https://image.tmdb.org/t/p/original/gVZgJQwwgH6pSdkx7zDLGBSnxg8.jpg","aspect_ratio":2.549}', '{"id":"tt0994314","vote_average":8.7}', 
  1789378914694, '2026-09-12T09:14:22.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'cuoc-noi-loan-cua-lelouch-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('cuoc-noi-loan-cua-lelouch-phan-2', 'Cuộc Nổi Loạn Của Lelouch (Phần 2)', 'Code Geass  (Season 2)', 'cuộc nổi loạn của lelouch (phần 2) code geass  (season 2) 福山潤 櫻井孝宏 ゆかな 小清水亜美', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'cuoc-noi-loan-cua-lelouch-phan-1', 'Cuộc Nổi Loạn Của Lelouch (Phần 1)', 'Code Geass  (Season 1)', 'https://phimimg.com/uploads/movies/20260912/cuoc-noi-loan-cua-lelouch-phan-1-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/cuoc-noi-loan-cua-lelouch-phan-1-poster.webp', '<p>Khi chiến tranh chia cắt hai anh em khỏi gia đình hoàng tộc tàn ác, vị hoàng tử thâm hiểm đã tự tay lo chuyện ngoại giao. Phim là phiên bản mới của loạt phim kinh điển.</p>', 
  'Hoàn Tất (25/25)', 25, 'hoathinh', 'completed', 49, 2006, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"福山潤","avatar":"https://image.tmdb.org/t/p/w185/eT9eloyIaIkTvTqMmpcsAleP2hM.jpg"},{"name":"櫻井孝宏","avatar":"https://image.tmdb.org/t/p/w185/8s8owcKmpRAuhzEGjSdRpztthUg.jpg"},{"name":"ゆかな","avatar":"https://image.tmdb.org/t/p/w185/AeRUkifrHsx0ZYfRRf64gChACyg.jpg"},{"name":"小清水亜美","avatar":"https://image.tmdb.org/t/p/w185/e5sU0stGjTMtFoj0jjHH7OFUqYC.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Code Geass 反叛的魯路修","叛逆的鲁鲁修","叛逆的鲁路修","Code Geass 反叛的鲁路修","Code Geass 反叛的鲁路修 R2","Code Geass: Hangjaku no Lelouch","Code Geass - Lelouch of the Rebellion","叛逆的魯魯修","קוֹד גיאַס: לולוש של המהפכה","הצופן המקולל: המרד של ללוש","Code Geass: Hangyaku no Lelouch","Code Geass: Hangyaku no Lelouch R2","Code Geass - Hangyaku no Lelouch R2","코드 기어스 반역의 를르슈","코드 기어스; 반역의 를르슈","코드 기아스 반역의 를르슈","코드 기아스: 반역의 를르슈","反叛的勒鲁什","โค้ด กีอัส ภาคการปฏิวัติของลูลูช","Код Гіасс: Повстання Лелуша","Code Geass","Code Geass R2","Code Geass: Lelouch of the Rebellion R2","コードギアス 反逆のルルーシュ"]', '{"id":"31724","type":"tv","vote_average":8.4,"vote_count":926,"logo_url":"https://image.tmdb.org/t/p/original/q1AHD0oorRWXmlyZ1njjVBZJQ8.png","backdrop_url":"https://image.tmdb.org/t/p/original/5hS2OIuZSKGkR8R5l3bY5zh04Ce.jpg","poster_url":"https://image.tmdb.org/t/p/original/gVZgJQwwgH6pSdkx7zDLGBSnxg8.jpg","aspect_ratio":2.549}', '{"id":"tt0994314","vote_average":8.7}', 
  1789378914693, '2026-09-12T09:13:40.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'cuoc-noi-loan-cua-lelouch-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('cuoc-noi-loan-cua-lelouch-phan-1', 'Cuộc Nổi Loạn Của Lelouch (Phần 1)', 'Code Geass  (Season 1)', 'cuộc nổi loạn của lelouch (phần 1) code geass  (season 1) 福山潤 櫻井孝宏 ゆかな 小清水亜美', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ngoa-long-thien-tai-quan-su', 'Ngọa Long: Thiên Tài Quân Sư', 'Wolong: The Mastermind', 'https://phimimg.com/uploads/movies/20260912/ngoa-long-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/ngoa-long-poster.webp', '<p>Linh hồn của quân sư Gia Cát Lượng xuyên không từ thời Tam Quốc, nhập vào thân xác một người đàn ông đang chật vật với cuộc sống hiện đại.</p>', 
  'Tập 1', 6, 'series', 'ongoing', 50, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Chu Giám Nhiên","avatar":""},{"name":"Cung Từ Ân","avatar":""},{"name":"Đồng Băng Ngọc","avatar":""},{"name":"Trương Huệ Hồng","avatar":""},{"name":"Hoàng Nhược Hi","avatar":""},{"name":"Tạ Giai Kiến","avatar":""},{"name":"Hoàng Khải Minh","avatar":""},{"name":"Trần Lệ Bình","avatar":""},{"name":"Lưu Giới Huy","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '[]', '{"id":null,"type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914692, '2026-09-12T09:00:53.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoa-long-thien-tai-quan-su', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoa-long-thien-tai-quan-su', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoa-long-thien-tai-quan-su', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngoa-long-thien-tai-quan-su', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'ngoa-long-thien-tai-quan-su';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ngoa-long-thien-tai-quan-su', 'Ngọa Long: Thiên Tài Quân Sư', 'Wolong: The Mastermind', 'ngọa long: thiên tài quân sư wolong: the mastermind chu giám nhiên cung từ ân đồng băng ngọc trương huệ hồng hoàng nhược hi tạ giai kiến hoàng khải minh trần lệ bình lưu giới huy', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'oan-linh-duc-vong', 'Oán Linh Dục Vọng', 'Cycle Of Sin', 'https://phimimg.com/uploads/movies/20260912/oan-linh-duc-vong-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/oan-linh-duc-vong-poster.webp', '<p>Yothaka phát hiện chồng mình là Nat có quan hệ bất chính với Pam, nữ cấp trên của anh. Cuộc hôn nhân vốn đã rạn nứt càng trở nên phức tạp khi hai vợ chồng quyết định chuyển đến căn nhà cổ được thừa kế từ gia đình Nat và đối mặt với hàng loạt những hiện tượng kỳ lạ. Căn nhà tưởng như sẽ là nơi bắt đầu cuộc sống mới của Yothaka và Nat hóa ra lại ẩn chứa một quá khứ vô cùng đen tối. Oán Linh Dục Vọng là câu chuyện về tình yêu, sự phản bội, và cái giá đắt phải trả cho những lời nói dối trong quá khứ.</p>', 
  'Tập 2', 10, 'series', 'ongoing', 70, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ศรัณย์ ศิริลักษณ์","avatar":"https://image.tmdb.org/t/p/w185/cnyKDBjInmz1qIb9yy3M9uH0x8M.jpg"},{"name":"พิชชาภา พันธุมจินดา","avatar":"https://image.tmdb.org/t/p/w185/uqvslNurmIGDrTxrfdtoGjkKhzZ.jpg"},{"name":"ทัศนียา การสมนุช","avatar":"https://image.tmdb.org/t/p/w185/ye97xsaVkBgdXnZU0X2NUBGjLt3.jpg"},{"name":"กิตติภณ ทิพยทยารัตน์","avatar":"https://image.tmdb.org/t/p/w185/3WieF8IwxB1rpnvJ9gWpH3JUIbs.jpg"},{"name":"นิศาชล ต้วมสูงเนิน","avatar":"https://image.tmdb.org/t/p/w185/4EHjbir148D4kKbW3LC8OJa8w5C.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Sam Rao Ao Tai","สามเราเอาตาย"]', '{"id":"333092","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/rMZ1maAxb007HHedoE0MptVfQYq.png","backdrop_url":"https://image.tmdb.org/t/p/original/eZcSUC4OofizGpE0lfaxj43MOlj.jpg","poster_url":"https://image.tmdb.org/t/p/original/z8EBrmcdVWpkgtWogIFF5kbUixd.jpg","aspect_ratio":3.152}', '{"id":null,"vote_average":null}', 
  1789378914691, '2026-09-12T08:54:48.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('oan-linh-duc-vong', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('oan-linh-duc-vong', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('oan-linh-duc-vong', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('oan-linh-duc-vong', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('oan-linh-duc-vong', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'oan-linh-duc-vong';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('oan-linh-duc-vong', 'Oán Linh Dục Vọng', 'Cycle Of Sin', 'oán linh dục vọng cycle of sin ศรัณย์ ศิริลักษณ์ พิชชาภา พันธุมจินดา ทัศนียา การสมนุช กิตติภณ ทิพยทยารัตน์ นิศาชล ต้วมสูงเนิน', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'trong-con-hon-me', 'Trong Cơn Hôn Mê', 'Stolen Heartbeats', 'https://phimimg.com/uploads/movies/20260912/trong-con-hon-me-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/trong-con-hon-me-poster.webp', '<p>Sau cuộc tấn công khiến Anabel rơi vào hôn mê, cô và Rafael – một y tá có khả năng nghe thấy tiếng người chết – phải chiến đấu để giữ mạng sống cho cô trước khi kẻ thù tìm thấy.</p>', 
  'Tập 31', 50, 'series', 'ongoing', 51, 2026, 
  'Vietsub', 'FHD', 'Tây Ban Nha', 0, 
  '[{"name":"Rami Herrera","avatar":"https://image.tmdb.org/t/p/w185/nXc7xWVayroObgG3rGi16mEv4to.jpg"},{"name":"Jerónimo Cantillo","avatar":"https://image.tmdb.org/t/p/w185/g6vBdXinvvSVmOGDKYcftfu07YH.jpg"},{"name":"Paola Moreno","avatar":"https://image.tmdb.org/t/p/w185/cdgGagawTFymvXndmRK9a4NEAFp.jpg"},{"name":"Julián Trujillo","avatar":"https://image.tmdb.org/t/p/w185/tjnao3I8W3Zk2vslBEAMiAPvoTN.jpg"},{"name":"Marcela Carvajal","avatar":"https://image.tmdb.org/t/p/w185/38Mh0yaFusSaRPnsI2sRn0fJrb5.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"4f02d28224c0747511790d57fbb63a62","name":"Phim Ngắn","slug":"phim-ngan"}]', 
  '["Koma","En Coma"]', '{"id":"332863","type":"tv","vote_average":10,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/uDvDfrUCJBmt9nVzFv6VIO2g1MK.png","backdrop_url":"https://image.tmdb.org/t/p/original/Aoz8YOuq0POpE7rDcYzpLdNMv70.jpg","poster_url":"https://image.tmdb.org/t/p/original/mkzolzpsI58pygaoJPVZCeuiS7Y.jpg","aspect_ratio":4.253}', '{"id":null,"vote_average":null}', 
  1789378914690, '2026-09-12T08:51:29.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-con-hon-me', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-con-hon-me', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-con-hon-me', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-con-hon-me', 'phim-ngan');
DELETE FROM movies_fts WHERE slug = 'trong-con-hon-me';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('trong-con-hon-me', 'Trong Cơn Hôn Mê', 'Stolen Heartbeats', 'trong cơn hôn mê stolen heartbeats rami herrera jerónimo cantillo paola moreno julián trujillo marcela carvajal', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'son-hai-kinh-thiet-lap-lai-trat-tu', 'Sơn Hải Kinh: Thiết Lập Lại Trật Tự', 'Threads of Fate: A War Untold / The Classic of Mountains and Seas: Return to Order', 'https://phimimg.com/uploads/movies/20260719/son-hai-kinh-thiet-lap-lai-trat-tu-thumb.webp', 'https://phimimg.com/uploads/movies/20260719/son-hai-kinh-thiet-lap-lai-trat-tu-poster.webp', '<p>Giữa chốn giang hồ mênh mông đầy máu lửa, đao kiếm vô tình, Hữu Thân Bất Phá, hoàng tử nước Thương, ra tay như sấm chớp, cứu mạng Giang Ly, đệ tử Thái Nhất Tông, trong khoảnh khắc sinh tử. Một người mang thân phận hoàng tộc, một kẻ xuất thân tông môn, vốn chẳng chung đường, vậy mà chỉ sau một trận đao kiếm, đã xem nhau như tri kỷ. Từ đó, hai người sóng vai bước vào Đại Hoang Nguyên, nơi luật lệ chỉ được viết bằng thép lạnh và máu tươi. Họ cải trang trà trộn vào thương đội, vượt qua thiên kiếp giáng xuống như trời phạt, bị mãnh thú rình rập giữa đêm tối, lại nhiều lần vung kiếm đối đầu bọn cường đạo hung tàn. Mỗi lần thoát chết, tình nghĩa càng thêm bền chặt. Một lần vì nghĩa mà ra tay cứu mỹ nhân, số phận hai người càng bị cuốn sâu vào vòng xoáy giang hồ.</p>', 
  'Tập 18', 24, 'hoathinh', 'ongoing', 578, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"高嗣航","avatar":"https://image.tmdb.org/t/p/w185/8IIPqT9juefSHsO5F48rTysnv7p.jpg"},{"name":"桑毓泽","avatar":"https://image.tmdb.org/t/p/w185/yJNmML2PlTPz4uzBIaNJYy5ELTg.jpg"},{"name":"毛拥城","avatar":""},{"name":"谢蕴霖","avatar":""},{"name":"黄翔宇","avatar":"https://image.tmdb.org/t/p/w185/qfBie9Iib0ZKWfqmHiaa5Z5oy3E.jpg"},{"name":"于凯隆","avatar":""}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["The Password of Shanhaiching","Threads of Fate A War Untold","山海经密码"]', '{"id":"238685","type":"tv","vote_average":7,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/peBfRiXshhGuF7in7EX57ybW3H.png","backdrop_url":"https://image.tmdb.org/t/p/original/thnyw9ypY1Ikzm3ucwxRsG1vXjZ.jpg","poster_url":"https://image.tmdb.org/t/p/original/kJNJ5oeUfDcH8sDQuhdKXNaJCFA.jpg","aspect_ratio":2.278}', '{"id":null,"vote_average":null}', 
  1789378914689, '2026-09-12T06:06:39.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'son-hai-kinh-thiet-lap-lai-trat-tu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('son-hai-kinh-thiet-lap-lai-trat-tu', 'Sơn Hải Kinh: Thiết Lập Lại Trật Tự', 'Threads of Fate: A War Untold / The Classic of Mountains and Seas: Return to Order', 'sơn hải kinh: thiết lập lại trật tự threads of fate: a war untold / the classic of mountains and seas: return to order 高嗣航 桑毓泽 毛拥城 谢蕴霖 黄翔宇 于凯隆', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  've-xong-di-roi-hay-chet', 'Vẽ Xong Đi, Rồi Hãy Chết!', 'Draw This, Then Die!', 'https://phimimg.com/upload/vod/20260705-1/6aba22327663c3122b8e9184764e375d.jpg', 'https://phimimg.com/upload/vod/20260705-1/6b0abe9e476c2371ef7e79a385f58479.jpg', '<p>Ai Yasumi là nữ sinh năm nhất trung học sống trên đảo Izu Ōshima, đồng thời là một cô gái vô cùng yêu thích truyện tranh manga. Thế nhưng, sau một bước ngoặt trong cuộc đời, Ai quyết tâm không chỉ đọc manga mà còn tự mình sáng tác nên những câu chuyện của riêng mình. Khi dấn thân vào con đường trở thành họa sĩ truyện tranh, Ai phải đối mặt với vô vàn thử thách, không ngừng trưởng thành và trải nghiệm niềm vui xen lẫn khó khăn trong hành trình theo đuổi ước mơ sáng tạo. Cuộc hành trình ấy rồi sẽ đưa cô đến đâu?</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 497, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"関根明良","avatar":"https://image.tmdb.org/t/p/w185/czYoPzAEK1gI7RxRiPyDSFYRm5x.jpg"},{"name":"早見沙織","avatar":"https://image.tmdb.org/t/p/w185/gLv9lO7dlUbIsmyJUvgegqAAXki.jpg"},{"name":"仁見紗綾","avatar":"https://image.tmdb.org/t/p/w185/tPIYjacKzIM0dYmEAE6iYWesk13.jpg"},{"name":"藤村花音","avatar":"https://image.tmdb.org/t/p/w185/rcmt3MGBRNTHxK58fvBv8tSZ50z.jpg"},{"name":"水瀬いのり","avatar":"https://image.tmdb.org/t/p/w185/cqOrQDUbbQLKpujzcK47YqjFdNp.jpg"},{"name":"日髙のり子","avatar":"https://image.tmdb.org/t/p/w185/43OuwsjqGf7JxpFpUvB75OdDDXQ.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["描绘直至生命尽头","画完这个再去死","Kore Kaite Shine","Намалюй це і помри","Draw This and Die","これ描いて死ね"]', '{"id":"287028","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/3zTUdLVMlJwv6wzmp0hivMF9cqI.png","backdrop_url":"https://image.tmdb.org/t/p/original/6szuXVEj9zQtsu3RyWn9SnclIgB.jpg","poster_url":"https://image.tmdb.org/t/p/original/cFtcqFPvZ5GhTcf07iPdnU8hU8i.jpg","aspect_ratio":1.848}', '{"id":"tt36290385","vote_average":null}', 
  1789378914688, '2026-09-12T06:06:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ve-xong-di-roi-hay-chet', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ve-xong-di-roi-hay-chet', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ve-xong-di-roi-hay-chet', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ve-xong-di-roi-hay-chet', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ve-xong-di-roi-hay-chet', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ve-xong-di-roi-hay-chet', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 've-xong-di-roi-hay-chet';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ve-xong-di-roi-hay-chet', 'Vẽ Xong Đi, Rồi Hãy Chết!', 'Draw This, Then Die!', 'vẽ xong đi, rồi hãy chết! draw this, then die! 関根明良 早見沙織 仁見紗綾 藤村花音 水瀬いのり 日髙のり子', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thuong-nguyen-do', 'Thương Nguyên Đồ', 'The Demon Hunter', 'https://phimimg.com/upload/vod/20250530-1/9c37d265d1409b9652a7a7afeb35fd6f.jpg', 'https://phimimg.com/upload/vod/20250530-1/435941e1bbd5462ab142b2d1d03b608e.jpg', '<p>Bối cảnh phim là Thương Nguyên Giới, nơi mà yêu tà hoành hành. Mạnh Xuyên từ nhỏ đã mất mẹ vì yêu quái, từ đó anh lập lời thề phải tiêu diệt yêu tà. Anh gia nhập Đạo viện Kính Hồ, bắt đầu con đường tu luyện của mình.

Trên con đường tu luyện, Mạnh Xuyên gặp gỡ nhiều người bạn mới, cũng như đối mặt với nhiều thử thách nguy hiểm. Anh phải chiến đấu với yêu quái, vượt qua những gian nan thử thách, và dần dần trưởng thành.

Bộ phim có cốt truyện hấp dẫn, đồ họa đẹp mắt và các nhân vật được xây dựng tốt.</p>', 
  'Tập 94', 99, 'hoathinh', 'ongoing', 640, 2023, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Sanshi","avatar":"https://image.tmdb.org/t/p/w185/ajQVjnlrTOw6M8qSrwjBXlcCFkg.jpg"},{"name":"Đoàn Nghi Hiên","avatar":"https://image.tmdb.org/t/p/w185/t0SFESlym4mWsrhNM3V1qY7ZQXo.jpg"},{"name":"Liangwei Hu","avatar":"https://image.tmdb.org/t/p/w185/l5nVITrXiYTocyCTWevHR9Lgvqn.jpg"},{"name":"马正阳","avatar":"https://image.tmdb.org/t/p/w185/d7ySPv0g1cq8QrWbdfqG4YvTxM1.jpg"},{"name":"斑马","avatar":"https://image.tmdb.org/t/p/w185/ik7uxOXJ2XRMJKM1KHw2TqUODXB.jpg"},{"name":"夏觅尘","avatar":"https://image.tmdb.org/t/p/w185/pluH4RyBlc8sGqwdTDWxtoyqKlk.jpg"},{"name":"刘芊含","avatar":"https://image.tmdb.org/t/p/w185/vlbc1Mo87d1ZIKc3mwXr1QgUahH.jpg"},{"name":"Zhengjian Hu","avatar":"https://image.tmdb.org/t/p/w185/y9A09AMmUbZp4TWvI6fgMYH8dZ8.jpg"},{"name":"赵震","avatar":""},{"name":"林強","avatar":"https://image.tmdb.org/t/p/w185/SX5ckTBqf0GpZlpR9nnFOPTgzX.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Cang Yuan Tu","Azure Legacy","The Demon Hunter","El Cazador de Demonios (Cang Yuan Tu)","滄元圖","Thương Nguyên Đồ","沧元图"]', '{"id":"229192","type":"tv","vote_average":9.2,"vote_count":18,"logo_url":"https://image.tmdb.org/t/p/original/vyUNrb4u61K9CG1lwiYaQrfg46V.png","backdrop_url":"https://image.tmdb.org/t/p/original/7LzHgJ0OZJeG3eljeISJ09BdaaF.jpg","poster_url":"https://image.tmdb.org/t/p/original/vbbWp3NKWQ02djYWLE0KBmbNUch.jpg","aspect_ratio":1.217}', '{"id":"tt27497430","vote_average":8.4}', 
  1789378914687, '2026-09-12T06:05:57.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thuong-nguyen-do', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'thuong-nguyen-do';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thuong-nguyen-do', 'Thương Nguyên Đồ', 'The Demon Hunter', 'thương nguyên đồ the demon hunter sanshi đoàn nghi hiên liangwei hu 马正阳 斑马 夏觅尘 刘芊含 zhengjian hu 赵震 林強', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thieu-nu-quai-vat-caramelise', 'Thiếu Nữ Quái Vật Caramelise', 'Kaiju Girl Caramelise', 'https://phimimg.com/upload/vod/20260705-1/de6a0162ba87730b3a2b19a4df2e6b9f.jpg', 'https://phimimg.com/upload/vod/20260705-1/043c383c01c00117e193b52790c1d630.jpg', '<p>Kuroe Akaishi chỉ muốn có một cuộc sống trung học bình thường — nhưng điều đó là không thể khi cô mắc phải một căn bệnh hiếm gặp: cứ mỗi khi cảm xúc dâng trào là cô lại biến thành một quái thú kaiju khổng lồ! Mọi chuyện thậm chí còn tồi tệ hơn khi cô lỡ đem lòng thầm thương trộm nhớ Arata Minami, nam sinh nổi tiếng nhất lớp. Giờ đây, mỗi cái đỏ mặt, mỗi nhịp tim loạn nhịp hay một chút rung động cũng có thể kích hoạt quá trình biến hình thành quái vật. Liệu Kuroe có thể sống sót qua tình yêu tuổi học trò trước khi nó phá hủy mọi thứ xung quanh cô?!</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 484, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"千賀光莉","avatar":"https://image.tmdb.org/t/p/w185/mjyriDKbzXRo5IicBnvIokDWtFH.jpg"},{"name":"梶田大嗣","avatar":"https://image.tmdb.org/t/p/w185/pWUWU65HiEvUbWGv6GL5YyZDJmG.jpg"},{"name":"関根明良","avatar":"https://image.tmdb.org/t/p/w185/czYoPzAEK1gI7RxRiPyDSFYRm5x.jpg"},{"name":"白石晴香","avatar":"https://image.tmdb.org/t/p/w185/hrQxTVNGLi3jXC7v4kETArpA0dV.jpg"},{"name":"三石琴乃","avatar":"https://image.tmdb.org/t/p/w185/mvKgkuAVVMmjkFWlwVQu8KCa80O.jpg"},{"name":"小西克幸","avatar":"https://image.tmdb.org/t/p/w185/nYM5cH6U7cp4x9dIzW0enmEKmeV.jpg"},{"name":"松井恵理子","avatar":"https://image.tmdb.org/t/p/w185/atMgu6hwHQisLA2tK8aVmevZYh6.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["少女怪兽焦糖味","少女怪兽焦糖恋心","Otome Kaijuu Carameliser","Otome Kaijū Carameliser","Otome Kaiju Caramelize","Meiden Kaiju Carameliser","Monster Maiden Caramelise","Kaiju Girl Caramelize","Kaiju Girl Caramelise","乙女怪獣キャラメリゼ"]', '{"id":"308874","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/e3Hl8mlkoqKEP66bZFcjAdrsBUc.png","backdrop_url":"https://image.tmdb.org/t/p/original/itsdsAPjGqGdheUNsXiIpJWXggh.jpg","poster_url":"https://image.tmdb.org/t/p/original/jnzPR4Pb8T8zwOl6k5ekuW3MSBa.jpg","aspect_ratio":2.654}', '{"id":"tt39246964","vote_average":null}', 
  1789378914686, '2026-09-12T06:05:29.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-quai-vat-caramelise', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-quai-vat-caramelise', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-quai-vat-caramelise', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-quai-vat-caramelise', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-quai-vat-caramelise', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-quai-vat-caramelise', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thieu-nu-quai-vat-caramelise', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'thieu-nu-quai-vat-caramelise';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thieu-nu-quai-vat-caramelise', 'Thiếu Nữ Quái Vật Caramelise', 'Kaiju Girl Caramelise', 'thiếu nữ quái vật caramelise kaiju girl caramelise 千賀光莉 梶田大嗣 関根明良 白石晴香 三石琴乃 小西克幸 松井恵理子', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'lanh-chua-vung-dat-khong-cu-dan', 'Lãnh Chúa Vùng Đất Không Cư Dân', 'The Frontier Lord Begins With Zero Subjects', 'https://phimimg.com/upload/vod/20260704-1/bb60d3ab25624df34574d31752b9eb6a.jpg', 'https://phimimg.com/upload/vod/20260704-1/7db800258223261eb92a9a4796b73549.jpg', '<p>Chiến tranh đã kết thúc, và người anh hùng Dias cuối cùng cũng được ban thưởng một vùng đất riêng – nhưng anh phát hiện ra đó là một vùng biên giới hoang vu, không có người, không có làng mạc, và không có dấu hiệu của nền văn minh. Với chỉ những thảo nguyên trải dài vô tận trước mặt, Dias bắt đầu xây dựng lãnh địa của mình từ con số không. Nhưng sau khi gặp Alna, một cô gái bí ẩn với chiếc sừng màu xanh lam, vùng biên giới cô đơn của anh sắp sửa bừng tỉnh sức sống.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 527, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"松田健一郎","avatar":"https://image.tmdb.org/t/p/w185/YCEXgyl763zg62qhsjhWHRzGkL.jpg"},{"name":"若山詩音","avatar":"https://image.tmdb.org/t/p/w185/b697ggFreuliEfl4TjLgxhJCQXr.jpg"},{"name":"坂泰斗","avatar":"https://image.tmdb.org/t/p/w185/pSExEOVmjAujKUyJJJSxC1WEzOM.jpg"},{"name":"Miku Ito","avatar":"https://image.tmdb.org/t/p/w185/q2y0SbBKNeVLf5obxixFmmiM4hQ.jpg"},{"name":"白石晴香","avatar":"https://image.tmdb.org/t/p/w185/hrQxTVNGLi3jXC7v4kETArpA0dV.jpg"},{"name":"福山潤","avatar":"https://image.tmdb.org/t/p/w185/eT9eloyIaIkTvTqMmpcsAleP2hM.jpg"},{"name":"安田陸矢","avatar":"https://image.tmdb.org/t/p/w185/eZCxGqkEibJkUEhLO9Xp4zNDlY3.jpg"},{"name":"阿保まりあ","avatar":"https://image.tmdb.org/t/p/w185/cXGUvIFrp0VkQgCqNuupkCioaSK.jpg"},{"name":"くじら","avatar":"https://image.tmdb.org/t/p/w185/dL2u3VyRBswwTEW4E8lbsHbqzeZ.jpg"},{"name":"日笠陽子","avatar":"https://image.tmdb.org/t/p/w185/mP3bj0s1gqJ6tCKFLhu4b1CkJj7.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Ryōmin 0-nin Start no Henkyō Ryōshu-sama","Ryoumin 0-nin Start no Henkyou Ryoushu-sama","Ryoumin 0 Nin Start no Henkyou Ryoushu-sama","Ryoumin Nin Start No Henkyou Ryoushu Sama","領民0人スタートの辺境領主様"]', '{"id":"296437","type":"tv","vote_average":8,"vote_count":3,"logo_url":"https://image.tmdb.org/t/p/original/sIl8zw81EuJlpSAGJutcwUgrXL0.png","backdrop_url":"https://image.tmdb.org/t/p/original/uHmqYzmPftg6vVvOPZGxmufKjMR.jpg","poster_url":"https://image.tmdb.org/t/p/original/zM4rPJJFjATJlc65RNzwKUWFFgy.jpg","aspect_ratio":1.114}', '{"id":"tt41054252","vote_average":null}', 
  1789378914685, '2026-09-12T06:05:07.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'lanh-chua-vung-dat-khong-cu-dan';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('lanh-chua-vung-dat-khong-cu-dan', 'Lãnh Chúa Vùng Đất Không Cư Dân', 'The Frontier Lord Begins With Zero Subjects', 'lãnh chúa vùng đất không cư dân the frontier lord begins with zero subjects 松田健一郎 若山詩音 坂泰斗 miku ito 白石晴香 福山潤 安田陸矢 阿保まりあ くじら 日笠陽子', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'Trọng Giáp Hiệp Sĩ Chuyển Sinh Bị Lưu Đày Trở Nên Vô Địch Nhờ Kiến Thức Về Game', 'The Exiled Heavy Knight Knows How To Game The System', 'https://phimimg.com/upload/vod/20260704-1/732482354bbfaf0663881f84392f73df.jpg', 'https://phimimg.com/upload/vod/20260704-1/4b4d7d08fc0707be4fe3940998383a8f.jpg', '<p>Trong Nghi lễ Ban Phước Thần Thánh nhằm xác định đẳng cấp của tuổi 15, Elymas thức tỉnh lớp nhân vật Trọng Giáp Hiệp Sĩ, vốn bị coi là khiếm khuyết và vô dụng. Vì vậy, cậu bị tước quyền thừa kế gia tộc Edvaughn và chịu kiếp lưu đày. Thế nhưng, Elymas nhanh chóng nhận ra thế giới này giống hệt trò chơi cậu từng chinh phục ở kiếp trước, nơi Trọng Giáp Hiệp Sĩ mới là lớp nhân vật mạnh nhất. Mang theo ký ức về mọi bí mật của thế giới, cậu quyết tâm lật ngược số phận và từng bước vươn tới đỉnh cao sức mạnh.</p>', 
  'Tập 11', 26, 'hoathinh', 'ongoing', 520, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"大塚剛央","avatar":"https://image.tmdb.org/t/p/w185/wqeAMR0HOGUPBXz0TCNxDR51cQy.jpg"},{"name":"若山詩音","avatar":"https://image.tmdb.org/t/p/w185/b697ggFreuliEfl4TjLgxhJCQXr.jpg"},{"name":"阿部菜摘子","avatar":"https://image.tmdb.org/t/p/w185/aX4Ay6DywnXs9DupOaqdxBfUJe8.jpg"},{"name":"利根健太朗","avatar":"https://image.tmdb.org/t/p/w185/9IZ9SpSV0P4bJBN8ALll7IYMLG2.jpg"},{"name":"福原かつみ","avatar":"https://image.tmdb.org/t/p/w185/ijpwBGoo3iPmb9v1Oh4Fz9CFzOx.jpg"},{"name":"島袋美由利","avatar":"https://image.tmdb.org/t/p/w185/rjhyRM2hn1deQG1V6cwC8AEEKNT.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["遭到流放的转生重骑士凭借游戏知识大开无双","被追放的转生重骑士用游戏知识开无双","Tsuihou sareta Tensei Juukishi wa Game Chishiki de Musou suru","Tsuihō Sareta Tensei Jū Kishi wa Game Chishiki de Musō Suru","The Exiled Heavy Knight Knows How to Game the System","追放された転生重騎士はゲーム知識で無双する"]', '{"id":"270603","type":"tv","vote_average":8,"vote_count":3,"logo_url":"https://image.tmdb.org/t/p/original/yKvXAZEeiw9uw54ZjpgxHPHiBAe.png","backdrop_url":"https://image.tmdb.org/t/p/original/rQmzx7qyoK5YiXJHnv0jdgVlKyl.jpg","poster_url":"https://image.tmdb.org/t/p/original/bADzMfofNWYdxLnlqNuMkO6du34.jpg","aspect_ratio":2.71}', '{"id":"tt33334216","vote_average":null}', 
  1789378914684, '2026-09-12T06:04:43.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('trong-giap-hiep-si-chuyen-sinh-bi-luu-day-tro-nen-vo-dich-nho-kien-thuc-ve-game', 'Trọng Giáp Hiệp Sĩ Chuyển Sinh Bị Lưu Đày Trở Nên Vô Địch Nhờ Kiến Thức Về Game', 'The Exiled Heavy Knight Knows How To Game The System', 'trọng giáp hiệp sĩ chuyển sinh bị lưu đày trở nên vô địch nhờ kiến thức về game the exiled heavy knight knows how to game the system 大塚剛央 若山詩音 阿部菜摘子 利根健太朗 福原かつみ 島袋美由利', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'Lúc Đó Tôi Đã Chuyển Sinh Thành Slime (Phần 4)', 'That Time I Got Reincarnated As A Slime (Season 4)', 'https://phimimg.com/upload/vod/20260406-1/26f4b114b4e3d0ac0bba2f6687131a3c.jpg', 'https://phimimg.com/upload/vod/20260407-1/ab90a78161fa03e2b3f48f84bf250d05.jpg', '<p>Chuyển thể từ light novel cùng tên của tác giả Fuse. Anh chàng Satoru Mikami, 37 tuổi, FA nhiều năm với sống cuộc sống chán chường và không mấy vui vẻ gì. Ngày kia vận số đen đủi bám lấy anh chàng, bị cướp tấn công, giết ngay tại chỗ, tưởng chừng tháng ngày chán ngắt ấy đã kết thúc. Nhưng không! Ấy lại chính là sự khởi đầu của một cuộc sống mới, Mikami tỉnh dậy, thấy mình đang ở trong một thế giới kì lạ.

Và điều quái dị là anh ta không còn hình dạng người nữa mà đã trở thành quái vật slime dẻo quẹo và không có mắt. Khi dần quen với hình dáng mới này, anh chàng bắt đầu khám phá thế giới cùng với những quái vật khác. Và thế là, cuộc đời làm Slime ở một thế giới mới bắt đầu.</p>', 
  'Tập 22', 24, 'hoathinh', 'ongoing', 671, 2026, 
  'Vietsub + Lồng Tiếng', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"岡咲美保","avatar":"https://image.tmdb.org/t/p/w185/6vxRulNZRaW47UFvVEq9poRekUx.jpg"},{"name":"前野智昭","avatar":"https://image.tmdb.org/t/p/w185/w3lEuXSbEyzzNyO3YnxsF6wm2N5.jpg"},{"name":"江口拓也","avatar":"https://image.tmdb.org/t/p/w185/hPPhUp0mM65Lc87Q8WXUEmGQAXx.jpg"},{"name":"大塚芳忠","avatar":"https://image.tmdb.org/t/p/w185/3RHQcrsWnAFK6AifSis1lMq08cR.jpg"},{"name":"泊明日菜","avatar":"https://image.tmdb.org/t/p/w185/1UrGvjjGi5p0GvVugjbzGutU6vu.jpg"},{"name":"小林親弘","avatar":"https://image.tmdb.org/t/p/w185/dD0xdWLQubyRKAnI3rWpeV35XxD.jpg"},{"name":"福島潤","avatar":"https://image.tmdb.org/t/p/w185/xo2A4cr8TnhC9rLFxSQvhwCbIOw.jpg"},{"name":"田中理恵","avatar":"https://image.tmdb.org/t/p/w185/wBWsjzwpFovyHDv027zU0oZyWHd.jpg"},{"name":"日高里菜","avatar":"https://image.tmdb.org/t/p/w185/7JupZGvqcq4dRxiTKpPxzg8NUS4.jpg"},{"name":"春野杏","avatar":"https://image.tmdb.org/t/p/w185/bNm7W2AQbLRZs3lwsDbArSIjQMX.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Aquella vez que reencarne como un Slime","關於我轉生變成史萊姆這檔事","Tensei Shitara Slime Datta Ken","关于我转生变成史莱姆这档事","That Time I Got Reincarnated as a Slime","TenSura","Regarding Reincarnated to Slime","Aquella vez que me convertí en Slime","Moi, quand je me réincarne en Slime","تولد دوباره به‌عنوان یک اسلایم","وقتی به‌عنوان یک اسلایم تناسخ پیدا کردم","آن زمان که به‌عنوان یک اسلایم زندگی دوباره یافتم","Tensei shitara Slime Datta Ken","Tensei Slime","TenSura 2","Tensei shitara Slime Datta Ken 2","転生したらスライムだった件","転スラ","Tensei Shitara Slime Datta Ken 3rd Season","Tensei Shitara Slime Datta Ken: Coleus no Yume","Tensei Shitara Slime Datta Ken S4","Tensei Shitara Slime Datta Ken 4th Season","전생했더니 슬라임이었던 건에 대하여","전생했더니 슬라임이었던 건에 대하여 3기","關於我轉生變成史萊姆這檔事 柯里烏斯之夢","Моє переродження в Слиз","That Time I Got Reincarnated as a Slime 2","That Time I Got Reincarnated as a Slime: Visions of Coleus","Chuyển Sinh Thành Slime"]', '{"id":"82684","type":"tv","vote_average":8.4,"vote_count":929,"logo_url":"https://image.tmdb.org/t/p/original/wsBdSVdFwXviy3y53lGTD8EGZmA.png","backdrop_url":"https://image.tmdb.org/t/p/original/eJOy7YWAHgOS3V477sdTsq4v9jp.jpg","poster_url":"https://image.tmdb.org/t/p/original/pzujcdPAoH361NObVrtbA7zACE7.jpg","aspect_ratio":1}', '{"id":"tt9054364","vote_average":8}', 
  1789378914683, '2026-09-12T06:03:32.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('luc-do-toi-da-chuyen-sinh-thanh-slime-phan-4', 'Lúc Đó Tôi Đã Chuyển Sinh Thành Slime (Phần 4)', 'That Time I Got Reincarnated As A Slime (Season 4)', 'lúc đó tôi đã chuyển sinh thành slime (phần 4) that time i got reincarnated as a slime (season 4) 岡咲美保 前野智昭 江口拓也 大塚芳忠 泊明日菜 小林親弘 福島潤 田中理恵 日高里菜 春野杏', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tan-thuoc', 'Tàn Thuốc', 'Ash', 'https://phimimg.com/uploads/movies/20260817/tan-thuoc-thumb.webp', 'https://phimimg.com/uploads/movies/20260817/tan-thuoc-poster.webp', '<p>Một cảnh sát chìm và CEO của một tập đoàn lớn bị cuốn vào mối quan hệ đầy bí mật và những thân phận được che giấu. Khi danh tính thật sự dần được hé lộ, cả hai cùng bị kéo vào một vụ án làm tiền giả xuyên quốc gia và cuộc tranh giành quyền lực giữa các thế lực địa phương.</p>', 
  'Tập 6', 9, 'series', 'ongoing', 340, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Hồng Kông', 0, 
  '[{"name":"亿轩","avatar":"https://image.tmdb.org/t/p/w185/zI00ES03WjDJWCgs28IyzcHB566.jpg"},{"name":"彭梓烨","avatar":"https://image.tmdb.org/t/p/w185/A7FT0wc3JMDJe9IJQQpffyBqycn.jpg"},{"name":"利泽昇","avatar":"https://image.tmdb.org/t/p/w185/eGRGaEK88PxOPAixT8fNY4AzYDC.jpg"},{"name":"古奕航","avatar":"https://image.tmdb.org/t/p/w185/wuiOKjmQwzIqnV1mNqdUR1Q4X70.jpg"},{"name":"侯源昊","avatar":"https://image.tmdb.org/t/p/w185/qKlUfOPjf2JNlJBgmQJOAe1cMEv.jpg"},{"name":"夏文汐","avatar":"https://image.tmdb.org/t/p/w185/fYG0PCqH81PTxQAXzHONlQWciha.jpg"},{"name":"Hui Yuet-Sheung","avatar":"https://image.tmdb.org/t/p/w185/2wiFyojiTxxrjvgv1muTZZhFVnS.jpg"},{"name":"趙君瑜","avatar":"https://image.tmdb.org/t/p/w185/7D9TA4DTlGqRw05oOL5Hm9gQjYT.jpg"},{"name":"Trương Kiến Thanh","avatar":"https://image.tmdb.org/t/p/w185/hqxOPdP5VqslC18uGJzozaOLKaZ.jpg"},{"name":"麥子樂","avatar":"https://image.tmdb.org/t/p/w185/lIzA1lZvUlUUJwh34GCUFXUzzaZ.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Ash","煙灰"]', '{"id":"317314","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/oZfrg5GO55z7kXLrV6o2pxgVdkX.png","backdrop_url":"https://image.tmdb.org/t/p/original/k1IZq7CnvBL3p8AgcCzoFXITwJf.jpg","poster_url":"https://image.tmdb.org/t/p/original/5Whb66zDBuBjTxkeGvYkv5Yqfz0.jpg","aspect_ratio":1.996}', '{"id":null,"vote_average":null}', 
  1789378914682, '2026-09-12T06:02:36.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tan-thuoc', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tan-thuoc', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tan-thuoc', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tan-thuoc', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tan-thuoc', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tan-thuoc', 'thuyet_minh');
DELETE FROM movies_fts WHERE slug = 'tan-thuoc';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tan-thuoc', 'Tàn Thuốc', 'Ash', 'tàn thuốc ash 亿轩 彭梓烨 利泽昇 古奕航 侯源昊 夏文汐 hui yuet-sheung 趙君瑜 trương kiến thanh 麥子樂', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nour', 'NOUR', 'NOUR', 'https://phimimg.com/uploads/movies/20260826/nour-thumb.webp', 'https://phimimg.com/uploads/movies/20260826/nour-poster.webp', '<p>Giữa thành phố chìm trong sương mù, hàng loạt vụ phóng hỏa bí ẩn dần hé lộ những bí mật bị chôn vùi suốt nhiều thập kỷ. Trong quá trình điều tra, cảnh sát James và Ken cùng bác sĩ pháp y Jirat và trợ lý Chita phát hiện các vụ án có liên quan đến một lời nguyền truyền qua nhiều thế hệ.</p>', 
  'Tập 5', 10, 'series', 'ongoing', 230, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ภัทการต์ ธนสิริอุดม","avatar":"https://image.tmdb.org/t/p/w185/sJArYMPDL0KfibI3KDfA7KmHG91.jpg"},{"name":"กฤษกร กนกธร","avatar":"https://image.tmdb.org/t/p/w185/162N0LbToAx4P1YWdiArFgxGxTg.jpg"},{"name":"Pongsakorn Mettarikanon","avatar":"https://image.tmdb.org/t/p/w185/u8NV6FOVRH2Z0XFswpYuX9ZDuXr.jpg"},{"name":"ภูมิ ชวัลวัฒน์ ทองอยู่","avatar":"https://image.tmdb.org/t/p/w185/mk9xjm7x8NcbxW2E3k6z1ofGOKc.jpg"},{"name":"พีรณัฐ วีระนิพิฐกุล","avatar":"https://image.tmdb.org/t/p/w185/r0PRBKmMPrWxYc2GJyd1xtJGdHk.jpg"},{"name":"น้ำหนึ่ง แวน เดอ เวน","avatar":"https://image.tmdb.org/t/p/w185/3RdYD3unYd2sfvb4sS9YTAQeiOG.jpg"},{"name":"ลิตเติ้ล สิรวิชญ์ อิ่มศรี","avatar":"https://image.tmdb.org/t/p/w185/kvH11XN9MWaBB5V1xWN0QX0GHlX.jpg"},{"name":"อัลธอน ครือเกอร์","avatar":"https://image.tmdb.org/t/p/w185/wQoIYBEviJMtFj7K26SJZjQiIw2.jpg"},{"name":"กนกลักษณ์ วนิชประภา","avatar":"https://image.tmdb.org/t/p/w185/bB6TZtiBJ8qsGGa6vkTMfNhtGnA.jpg"},{"name":"ณัฐภูมิ ชัยสุรสินทวี","avatar":"https://image.tmdb.org/t/p/w185/zpckv0Os2Hx9isks4h4OwkTEg6G.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Nu","Nour the Series","นูร์"]', '{"id":"323447","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/s5AY2XCMW2qn3wvqAWdmAen4400.png","backdrop_url":"https://image.tmdb.org/t/p/original/sTKBfFYHy1BTT869U6YyhfFxWU5.jpg","poster_url":"https://image.tmdb.org/t/p/original/q4Edk1Hg0cOqS8hxJizucnXwgmQ.jpg","aspect_ratio":1.666}', '{"id":"tt43035122","vote_average":null}', 
  1789378914681, '2026-09-12T06:01:49.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nour', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nour', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nour', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nour', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nour', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nour', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'nour';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nour', 'NOUR', 'NOUR', 'nour nour ภัทการต์ ธนสิริอุดม กฤษกร กนกธร pongsakorn mettarikanon ภูมิ ชวัลวัฒน์ ทองอยู่ พีรณัฐ วีระนิพิฐกุล น้ำหนึ่ง แวน เดอ เวน ลิตเติ้ล สิรวิชญ์ อิ่มศรี อัลธอน ครือเกอร์ กนกลักษณ์ วนิชประภา ณัฐภูมิ ชัยสุรสินทวี', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'luang-pho-trong-sach', 'Luang Pho Trong Sạch', 'Man Of Virtue', 'https://phimimg.com/uploads/movies/20260805/luang-pho-trong-sach-thumb.webp', 'https://phimimg.com/uploads/movies/20260805/luang-pho-trong-sach-poster.webp', '<p>Khi một nhà sư và nhóm của mình trở thành nghi phạm trong một vụ cướp viên kim cương vô giá, họ bắt đầu hành trình phá án để lấy lại danh dự và vạch trần thủ phạm thật sự.</p>', 
  'Hoàn Tất (30/30)', 30, 'series', 'completed', 609, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ชนะพล สัตยา","avatar":"https://image.tmdb.org/t/p/w185/vOKqs1agxRTwhLk0mva5b5BEAL9.jpg"},{"name":"Phatchaya Phiansamoe","avatar":"https://image.tmdb.org/t/p/w185/ang77rspQ59Hp03018CODbCUaeX.jpg"},{"name":"เอกพันธ์ บรรลือฤทธิ์","avatar":"https://image.tmdb.org/t/p/w185/7S2Nm9PcoxJ9y9MOEBJApBAMIUX.jpg"},{"name":"Witchayaphong Iamsa-ard","avatar":"https://image.tmdb.org/t/p/w185/bk6mMeW7w0Zeh6n1WEaO2qxXwcl.jpg"},{"name":"อลิศ ธนัชศลักษณ์ ฮัดสัน","avatar":""},{"name":"ดนฐ์ คมสันต์ อรุณเรืองสวัสดิ์","avatar":"https://image.tmdb.org/t/p/w185/y8ci1QFiSMMxRHkSAhWjC6VkRmH.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["หลวงพ่อเสือ"]', '{"id":"304210","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/aQTCOVUwo8L3lJICP5jbAhwi2PE.png","backdrop_url":"https://image.tmdb.org/t/p/original/rcaoxXXxxxfpB8EyqIiJxRI6k7P.jpg","poster_url":"https://image.tmdb.org/t/p/original/28B6t2tH7irxjXfKFivdwDlNqkO.jpg","aspect_ratio":4.895}', '{"id":null,"vote_average":null}', 
  1789378914680, '2026-09-12T06:01:25.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luang-pho-trong-sach', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luang-pho-trong-sach', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luang-pho-trong-sach', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luang-pho-trong-sach', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('luang-pho-trong-sach', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'luang-pho-trong-sach';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('luang-pho-trong-sach', 'Luang Pho Trong Sạch', 'Man Of Virtue', 'luang pho trong sạch man of virtue ชนะพล สัตยา phatchaya phiansamoe เอกพันธ์ บรรลือฤทธิ์ witchayaphong iamsa-ard อลิศ ธนัชศลักษณ์ ฮัดสัน ดนฐ์ คมสันต์ อรุณเรืองสวัสดิ์', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'loi-thu-nhan-bi-mat-25-nam', 'Lời Thú Nhận: Bí Mật 25 Năm', '25 Years Of You', 'https://phimimg.com/uploads/movies/20260717/loi-thu-nhan-bi-mat-25-nam-thumb.webp', 'https://phimimg.com/uploads/movies/20260717/loi-thu-nhan-bi-mat-25-nam-poster.webp', '<p>Mối liên hệ bí mật nhiều năm giữa một người đàn ông và người phụ nữ mà anh luôn âm thầm dõi theo đã đưa họ đến sự thật phía sau biến cố tuổi thơ kinh hoàng 25 năm trước.</p>', 
  'Tập 8', 10, 'series', 'ongoing', 412, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"松村北斗","avatar":"https://image.tmdb.org/t/p/w185/rtdHPwvoSel4m4CbJwZgcfnFsA0.jpg"},{"name":"岡崎紗絵","avatar":"https://image.tmdb.org/t/p/w185/ePNebjsjae5GaHd6C4MxXeNm4NV.jpg"},{"name":"塩野瑛久","avatar":"https://image.tmdb.org/t/p/w185/1plo0DriFsKkHF5W9rJWNmnkXoB.jpg"},{"name":"佐々木希","avatar":"https://image.tmdb.org/t/p/w185/k5WCvK8Zrakp6uPizXYxPoPrxIq.jpg"},{"name":"久保史緒里","avatar":"https://image.tmdb.org/t/p/w185/mDW7zbSNy3XAqVd6bgVVnn9jZd0.jpg"},{"name":"山下幸輝","avatar":"https://image.tmdb.org/t/p/w185/j7C9n4VQo5hooPxjUssduvSCbcm.jpg"},{"name":"谷恭輔","avatar":"https://image.tmdb.org/t/p/w185/hntUbt1bH3nj3f5ZdcubR7aouz3.jpg"},{"name":"石山順征","avatar":"https://image.tmdb.org/t/p/w185/AwsukHfnmdhzcE8EjVRrWDSlBoA.jpg"},{"name":"水野美紀","avatar":"https://image.tmdb.org/t/p/w185/w4xk5BMMnMeCIjTblQZdfI1g5Fi.jpg"},{"name":"丘みつ子","avatar":"https://image.tmdb.org/t/p/w185/9AsugNHVoNNNz6D83m4tIhQMS2z.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Kokuhaku: 25 Nen Me no Himitsu","25 Years of You","告白ー25年目の秘密ー"]', '{"id":"326063","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/uU7fA4YVvN1XRkBsAzHz7by70C4.png","backdrop_url":"https://image.tmdb.org/t/p/original/mOALTFnD4MjvXIYdTlEl5aUEQT0.jpg","poster_url":"https://image.tmdb.org/t/p/original/aDUl4kdFJgsks4DNb4ZlzXGOs8X.jpg","aspect_ratio":4.032}', '{"id":null,"vote_average":null}', 
  1789378914679, '2026-09-12T06:01:04.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-thu-nhan-bi-mat-25-nam', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-thu-nhan-bi-mat-25-nam', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-thu-nhan-bi-mat-25-nam', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-thu-nhan-bi-mat-25-nam', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'loi-thu-nhan-bi-mat-25-nam';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('loi-thu-nhan-bi-mat-25-nam', 'Lời Thú Nhận: Bí Mật 25 Năm', '25 Years Of You', 'lời thú nhận: bí mật 25 năm 25 years of you 松村北斗 岡崎紗絵 塩野瑛久 佐々木希 久保史緒里 山下幸輝 谷恭輔 石山順征 水野美紀 丘みつ子', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'yeu-nhau-den-tan-ngay-cau-bien-mat', 'Yêu Nhau Đến Tận Ngày Cậu Biến Mất', 'I Want To Love You Till Your Dying Day', 'https://phimimg.com/uploads/movies/20260708/yeu-nhau-den-tan-ngay-cau-bien-mat-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/yeu-nhau-den-tan-ngay-cau-bien-mat-poster.webp', '<p>Tại một học viện bí ẩn nơi những cô bé mồ côi bị nuôi dạy để trở thành thứ vũ khí giết người, cái chết diễn ra như cơm bữa và việc đau buồn là điều cấm kỵ. Sheena, một cô bé 14 tuổi luôn hoài nghi về cuộc sống tàn bạo này, đã gặp gỡ Mimi — một cô gái bí ẩn, người đầy máu nhưng kiên quyết không chịu khuất phục. Giữa một thế giới được xây dựng trên bạo lực, cả hai đã cùng nhau bấu víu vào một tia hy vọng mong manh, quyết tâm chiến đấu để giữ lại phần nhân tính cuối cùng của mình.</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 520, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"高橋李依","avatar":"https://image.tmdb.org/t/p/w185/aeB7z0cBTASdjKOjQriBAO6hYq4.jpg"},{"name":"日高里菜","avatar":"https://image.tmdb.org/t/p/w185/7JupZGvqcq4dRxiTKpPxzg8NUS4.jpg"},{"name":"瀬戸麻沙美","avatar":"https://image.tmdb.org/t/p/w185/iKKCPgKrNd4pJ0iBOC1SBZy2Y4Y.jpg"},{"name":"石川由依","avatar":"https://image.tmdb.org/t/p/w185/2y1y1W4q8UIR0Vbs4NNvc7722XT.jpg"},{"name":"内山夕実","avatar":"https://image.tmdb.org/t/p/w185/JvavoF3YOLCf4LHfl4XvYobANE.jpg"},{"name":"茅野愛衣","avatar":"https://image.tmdb.org/t/p/w185/l8ywp387rfdAS7mOExe3cEZnsk0.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["与你相恋到生命尽头","Kimi ga Shinu made Koi wo Shitai","Kimishinu","My Wish Is to Fall in Love Until You Die","きみが死ぬまで恋をしたい"]', '{"id":"285574","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/t4WIbY0FBfHrmB4OA3MoYVkgobK.png","backdrop_url":"https://image.tmdb.org/t/p/original/ppR5S0tqg53tVFA8Gc8CfkWkQG8.jpg","poster_url":"https://image.tmdb.org/t/p/original/9R1PdHoUrVoQQQbLXaYdXA7s0jG.jpg","aspect_ratio":1.815}', '{"id":"tt36056731","vote_average":null}', 
  1789378914678, '2026-09-12T06:00:45.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'yeu-nhau-den-tan-ngay-cau-bien-mat';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('yeu-nhau-den-tan-ngay-cau-bien-mat', 'Yêu Nhau Đến Tận Ngày Cậu Biến Mất', 'I Want To Love You Till Your Dying Day', 'yêu nhau đến tận ngày cậu biến mất i want to love you till your dying day 高橋李依 日高里菜 瀬戸麻沙美 石川由依 内山夕実 茅野愛衣', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'Tôi Trở Thành Huyền Thoại Sau Trận Chiến Cuối Cùng Kéo Dài 10 Năm', 'I Became A Legend After My 10 Year-Long Last Stand', 'https://phimimg.com/upload/vod/20260704-1/a8f6b21fcd15b32c96ced6bc94dea8d6.jpg', 'https://phimimg.com/upload/vod/20260704-1/a44afe16d4e891f03232d84f2cf1a78c.jpg', '<p>Luck, một pháp sư hạng S thuộc tổ đội anh hùng, đã quyết định ở lại chặn hậu và tử chiến với Ma Vương để cứu những người đồng đội của mình. Khi anh giành chiến thắng và trở về, mười năm đã trôi qua, và thế giới đã tôn vinh anh như một anh hùng huyền thoại đã hy sinh nơi sa trường. Không thể quay lại cuộc sống trước kia, Luck đành che giấu thân phận và bắt đầu lại từ đầu với cái tên &quot;Lock&quot; — một mạo hiểm giả hạng F, tự tay gầy dựng lại tương lai trong một thế giới vốn đã tiếp diễn mà không có anh.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 477, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"梶原岳人","avatar":"https://image.tmdb.org/t/p/w185/kUer38jXf7vTD2TGGxJMZVYL5Te.jpg"},{"name":"森川智之","avatar":"https://image.tmdb.org/t/p/w185/hrzGBe4nokgkBNFekNo5hlXB2Bv.jpg"},{"name":"小山剛志","avatar":"https://image.tmdb.org/t/p/w185/xm7AT3bF4ARZvbx87ixXT8rNFgs.jpg"},{"name":"石川由依","avatar":"https://image.tmdb.org/t/p/w185/2y1y1W4q8UIR0Vbs4NNvc7722XT.jpg"},{"name":"相良茉優","avatar":"https://image.tmdb.org/t/p/w185/rKam75qicpfKqfrSNhTe84ZcfeM.jpg"},{"name":"市道真央","avatar":"https://image.tmdb.org/t/p/w185/a3cflYtrlFK0LXfWODgLDO7E7CP.jpg"},{"name":"小坂井祐莉絵","avatar":"https://image.tmdb.org/t/p/w185/mbIMcptHLQir3wrAnnSSAR5uRR1.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Koko wa Ore ni Makasete Saki ni Ike to Itte kara 10-nen ga Tattara Densetsu ni Natteita.","Kokoore","ここ俺","Koko wa Ore ni Makasete Saki ni Ike to Ittekara 10-nen ga Tattara Densetsu ni Natteita","ここは俺に任せて先に行けと言ってから10年がたったら伝説になっていた。"]', '{"id":"302051","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/vrOw9zfO4go3r4RGICjg3UmWVwo.png","backdrop_url":"https://image.tmdb.org/t/p/original/g4yyesQhnQ5KH2k6eCXHMHPwl1.jpg","poster_url":"https://image.tmdb.org/t/p/original/4LaPshxWTFcBhc5ib8xOfYeD9tH.jpg","aspect_ratio":2.073}', '{"id":"tt39443204","vote_average":null}', 
  1789378914677, '2026-09-12T06:00:25.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('toi-tro-thanh-huyen-thoai-sau-tran-chien-cuoi-cung-keo-dai-10-nam', 'Tôi Trở Thành Huyền Thoại Sau Trận Chiến Cuối Cùng Kéo Dài 10 Năm', 'I Became A Legend After My 10 Year-Long Last Stand', 'tôi trở thành huyền thoại sau trận chiến cuối cùng kéo dài 10 năm i became a legend after my 10 year-long last stand 梶原岳人 森川智之 小山剛志 石川由依 相良茉優 市道真央 小坂井祐莉絵', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'huong-vi-cua-bien-mua-3', 'Hương Vị Của Biển (Mùa 3)', 'Fresh Off The Sea (Season 3)', 'https://phimimg.com/uploads/movies/20260802/huong-vi-cua-bien-mua-3-thumb.webp', 'https://phimimg.com/uploads/movies/20260802/huong-vi-cua-bien-mua-3-poster.webp', '<p>Mùa thứ hai trở lại với chị đẹp Yum Jung Ah, "cây hài" Park Jun Myun cùng hai thành viên mới là diễn viên Lim Ji Yeon và Lee Jae Wook. Họ sẽ cùng khám phá những điểm đến mới, tự tay khai thác những nguyên liệu tươi ngon theo mùa và quây quần bên những bữa ăn ấm cúng.</p>', 
  'Tập 7', 11, 'series', 'ongoing', 384, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"염정아","avatar":"https://image.tmdb.org/t/p/w185/5qIkgP0VcfF0YhO3bixzBtA1jH2.jpg"},{"name":"김선영","avatar":"https://image.tmdb.org/t/p/w185/9aFsdy8tAZkoP33qG8CH6y3lafP.jpg"},{"name":"강유석","avatar":"https://image.tmdb.org/t/p/w185/jCE93OXkHTEbNrGfjZ02kwwbTHB.jpg"},{"name":"노윤서","avatar":"https://image.tmdb.org/t/p/w185/A67wGhTozfav5saZ1Umi5f98Ezb.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"1645fa23fa33651cef84428b0dcc2130","name":"Tài Liệu","slug":"tai-lieu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["언니네 산지직송 in 칼라페","姐姐們的產地直送","Fresh of the Sea","Direct delivery from my sister’s place","언니네 산지직송"]', '{"id":"258932","type":"tv","vote_average":7.3,"vote_count":3,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/iwq0vYkmB8j7WgnfKZQE1na0zTF.jpg","poster_url":"https://image.tmdb.org/t/p/original/5wDAfv63llUwp8n40hKi0Hj8guM.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914676, '2026-09-12T06:00:06.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huong-vi-cua-bien-mua-3', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huong-vi-cua-bien-mua-3', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huong-vi-cua-bien-mua-3', 'tai-lieu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huong-vi-cua-bien-mua-3', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huong-vi-cua-bien-mua-3', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'huong-vi-cua-bien-mua-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('huong-vi-cua-bien-mua-3', 'Hương Vị Của Biển (Mùa 3)', 'Fresh Off The Sea (Season 3)', 'hương vị của biển (mùa 3) fresh off the sea (season 3) 염정아 김선영 강유석 노윤서', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hoi-chung-me-ban-cung-lop', 'Hội Chứng Mê Bạn Cùng Lớp', 'Class Crush Crisis', 'https://phimimg.com/uploads/movies/20260726/hoi-chung-me-ban-cung-lop-thumb.webp', 'https://phimimg.com/uploads/movies/20260726/hoi-chung-me-ban-cung-lop-poster.webp', '<p>Chuyển đến trường cấp ba hàng đầu, chàng trai nuôi mộng trở thành ngôi sao nhạc rock Leerit thề sẽ tránh xa chuyện yêu đương, nhưng nhanh chóng đổi ý khi gặp bạn cùng phòng mới.</p>', 
  'Hoàn Tất (8/8)', 8, 'series', 'completed', 364, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"อัยภณ เล็กพิทยา","avatar":"https://image.tmdb.org/t/p/w185/gEyYsicMrDek48kB3JI8DigwnMP.jpg"},{"name":"ญาณวัฒน์ อินทรแป้น","avatar":"https://image.tmdb.org/t/p/w185/q1wJbNZKRujCILxiaROIXhG5hUj.jpg"},{"name":"อาชวิน จิรติสกุล","avatar":"https://image.tmdb.org/t/p/w185/hrV2INLbuYCQvlFEYNxXEBr4DmD.jpg"},{"name":"บัฟเฟตต์ วงษ์ประเสริฐ","avatar":"https://image.tmdb.org/t/p/w185/xAJFgPhg3Yr1ufXWxVkUOfgov86.jpg"},{"name":"ชวิศ เพเวค","avatar":"https://image.tmdb.org/t/p/w185/pbpzhECc7BmQWpyMMpH0iAw8OXC.jpg"},{"name":"Sasakrit Rithruangnam","avatar":"https://image.tmdb.org/t/p/w185/6ttfq0uceRO4yRFjzBJQbNz2Vzw.jpg"},{"name":"ศุภณัฐ สหพันธ์","avatar":"https://image.tmdb.org/t/p/w185/3QUpHfJYvWnLb8rhBIVj2Eppy2z.jpg"},{"name":"ออมทอง ณัฏฐา ภาภิรมย์","avatar":"https://image.tmdb.org/t/p/w185/fqz1eMhrOQCH7uiK6nIkKCGFAgr.jpg"},{"name":"นารา นาราริน อุดมสิทธิกุล","avatar":"https://image.tmdb.org/t/p/w185/eeXB8VwkvrmOi6bGH7wbiicwBTJ.jpg"},{"name":"บุษยา วรรณา","avatar":"https://image.tmdb.org/t/p/w185/nDPPUEGigTRcKsF8EevQYqZCnsT.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["朋友，小心暗恋成真","小心你的好友并不单纯","班級戀情危機：提防不誠實的親密朋友","เพื่อนสนิทระวังคิดไม่ซื่อ"]', '{"id":"312573","type":"tv","vote_average":10,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/cD8GEWsXP2mRKdA90UIuBCm9fxo.png","backdrop_url":"https://image.tmdb.org/t/p/original/r8HQOxPBy9fwByVCRYov3xMeOBS.jpg","poster_url":"https://image.tmdb.org/t/p/original/hXb0TBkWJaaRCwnGVs92cnpgXEB.jpg","aspect_ratio":1.403}', '{"id":"tt39444616","vote_average":null}', 
  1789378914675, '2026-09-12T05:59:47.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hoi-chung-me-ban-cung-lop', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hoi-chung-me-ban-cung-lop', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hoi-chung-me-ban-cung-lop', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hoi-chung-me-ban-cung-lop', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'hoi-chung-me-ban-cung-lop';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hoi-chung-me-ban-cung-lop', 'Hội Chứng Mê Bạn Cùng Lớp', 'Class Crush Crisis', 'hội chứng mê bạn cùng lớp class crush crisis อัยภณ เล็กพิทยา ญาณวัฒน์ อินทรแป้น อาชวิน จิรติสกุล บัฟเฟตต์ วงษ์ประเสริฐ ชวิศ เพเวค sasakrit rithruangnam ศุภณัฐ สหพันธ์ ออมทอง ณัฏฐา ภาภิรมย์ นารา นาราริน อุดมสิทธิกุล บุษยา วรรณา', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'Hell Mode: Game Thủ Xuất Chúng Tung Hoành Chốn Dị Giới Hỗn Nguyên (Phần 2)', 'Hell Mode: The Hardcore Gamer Dominates In Another World With Garbage Balancing (Season 2)', 'https://phimimg.com/upload/vod/20260705-1/eb633393851788cf7a7665e245c43438.jpg', 'https://phimimg.com/upload/vod/20260705-1/60a64bc29b820d39997e3cbd6bc01518.jpg', '<p>Kenichi Yamada, một nhân viên văn phòng 35 tuổi độc thân, đã dành phần lớn thời gian trưởng thành của mình để cày cuốc mọi tựa game MMORPG trên thị trường. Chán nản với vòng lặp của lối chơi lặp lại và luôn ưu ái người chơi mới, anh lập tức bị thu hút bởi lời quảng cáo về một trò chơi mới: không có hồi kết và đặc biệt là có chế độ &#39;Hell Mode&#39; (Chế độ Địa ngục). Đây là mức độ khó khiến việc thăng cấp trở nên gần như không tưởng, nhưng bù lại hứa hẹn tiềm năng tăng trưởng không giới hạn. Sau khi chọn lớp nhân vật Triệu hồi sư vừa ra mắt, Kenichi thấy mình tái sinh dưới hình hài Allen, một đứa trẻ sơ sinh trong một gia đình nông nô, với hành trang duy nhất là trí tuệ và những ký ức từ kiếp trước để dẫn lối.</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 631, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Mizuki Ooyagi","avatar":"https://image.tmdb.org/t/p/w185/3qKI8CRyThozEuhXj2rvXeZBpiZ.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["地狱模式～喜欢挑战特殊成就的玩家在废设定的异世界成为无双～第二季","Hell Mode: Yarikomizuki no Gamer wa Hai Settei no Isekai de Musou suru","ヘルモード ～やり込み好きのゲーマーは廃設定の異世界で無双する～","Hell Mode: Yarikomi Suki no Gamer wa Haisettei no Isekai de Musou Suru","へるもーどやりこみずきのげーまーははいせっていのいせかいでむそうする","Hell Mode Yarikomizuki no Gamer wa Hai Settei no Isekai de Musou suru","헬 모드","地獄模式 ～喜歡挑戰特殊成就的玩家在廢設定的異世界成為無雙～ 2nd Season","Hell Mode: The Hardcore Gamer Dominates in Another World with Garbage Balancing","Hell Mode","ヘルモード ～やり込み好きのゲーマーは廃設定の異世界で無双する～ はじまりの召喚士"]', '{"id":"280049","type":"tv","vote_average":7.4,"vote_count":26,"logo_url":"https://image.tmdb.org/t/p/original/h1TTDalRBJjvDf3nXicsgk19L25.png","backdrop_url":"https://image.tmdb.org/t/p/original/gf62V8UBVBMFPpD9yI0UFvkFvq2.jpg","poster_url":"https://image.tmdb.org/t/p/original/9m8MgXfAHbR4ELxrsQR8w0b5NQM.jpg","aspect_ratio":3.221}', '{"id":"tt38646634","vote_average":null}', 
  1789378914674, '2026-09-12T05:59:28.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hell-mode-game-thu-xuat-chung-tung-hoanh-chon-di-gioi-hon-nguyen-phan-2', 'Hell Mode: Game Thủ Xuất Chúng Tung Hoành Chốn Dị Giới Hỗn Nguyên (Phần 2)', 'Hell Mode: The Hardcore Gamer Dominates In Another World With Garbage Balancing (Season 2)', 'hell mode: game thủ xuất chúng tung hoành chốn dị giới hỗn nguyên (phần 2) hell mode: the hardcore gamer dominates in another world with garbage balancing (season 2) mizuki ooyagi', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tu-bi-lu-mo-den-ap-dao', 'Từ Bị Lu Mờ Đến Áp Đảo', 'From Overshadowed To Overpowered: Second Reincarnation Of A Talentless Sage', 'https://phimimg.com/upload/vod/20260627-1/abd77cee9d652ac7687193990c84d18b.jpg', 'https://phimimg.com/upload/vod/20260627-1/9666857e1a0a2ed9de5fc5bb07691193.jpg', '<p>Đại hiền triết Ephtal qua đời trong nỗi tuyệt vọng cay đắng sau khi thất bại trong việc chạm đến đỉnh cao của ma pháp — thế nhưng 400 năm sau, ông đã tái sinh với toàn bộ ký ức và sức mạnh được giữ nguyên vẹn! Giữa một thế giới nơi ma pháp đã suy tàn và những câu thần chú cổ xưa bị coi là phép màu hiếm có, Ephtal thẳng tiến vào một học viện ma pháp danh giá để khôi phục lại nghệ thuật thuật phù thủy chân chính. Khi sức mạnh của ông làm rung chuyển cả thế giới, những huyền thoại từ lâu đã bị lãng quên cũng bắt đầu thức tỉnh!</p>', 
  'Hoàn Tất (12/12)', 12, 'hoathinh', 'completed', 582, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"梅田修一朗","avatar":"https://image.tmdb.org/t/p/w185/dCr870q8ojD6qpD1hmS1sdvh2pe.jpg"},{"name":"小山内怜央","avatar":"https://image.tmdb.org/t/p/w185/7ZOvawcW1Vhu8bzdtDSgbljrbM4.jpg"},{"name":"白石晴香","avatar":"https://image.tmdb.org/t/p/w185/hrQxTVNGLi3jXC7v4kETArpA0dV.jpg"},{"name":"加藤英美里","avatar":"https://image.tmdb.org/t/p/w185/m0zqjeg65sEe5TTy4mKqgwXVipI.jpg"},{"name":"平川大輔","avatar":"https://image.tmdb.org/t/p/w185/8uDi5NxFdxFvfVyo4n5CeOSLWEf.jpg"},{"name":"伊藤健太郎","avatar":"https://image.tmdb.org/t/p/w185/fIoreUBVEWcRLZanJlHUSQAjpeE.jpg"},{"name":"楠見尚己","avatar":"https://image.tmdb.org/t/p/w185/uxRwh4kUUBOe4fSFEHEEmk9Yc4j.jpg"},{"name":"福西勝也","avatar":"https://image.tmdb.org/t/p/w185/8paIbTobS6266x57pIhJCq3mBJh.jpg"},{"name":"小山剛志","avatar":"https://image.tmdb.org/t/p/w185/xm7AT3bF4ARZvbx87ixXT8rNFgs.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["落第贤者的学院无双～第二次转生的S级开外挂魔术师冒险录～","落第贤者的学院无双～第二回转生，S等级作弊魔术师冒险记～","Rakudai Kenja no Gakuin Musō: Nido Tensei Shita Saikyō Kenja","Rakudai Kenja no Gakuin Musou ~Nidome no Tensei, S-Rank Cheat Majutsushi Boukenroku~","Rakudai Kenja no Gakuin Musou","Rakudai Kenja no Gakuin Musou Nidome no Tensei S-Rank Cheat Majutsushi Boukenroku","From Overshadowed to Overpowered: Second Reincarnation of a Talentless Sage","The Failed Sage''s Academy Domination","落第賢者の学院無双 ～二度目の転生、Ｓランクチート魔術師冒険録～"]', '{"id":"314554","type":"tv","vote_average":7,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/dV5lWIjX7gXqPTGyJ5k4U0ZDy0T.png","backdrop_url":"https://image.tmdb.org/t/p/original/44cpdAd87SSmOVew1Y4LsEWjqPf.jpg","poster_url":"https://image.tmdb.org/t/p/original/p4TE3kK2iyuADfDYIRDTxjahdNa.jpg","aspect_ratio":3.554}', '{"id":"tt40550160","vote_average":null}', 
  1789378914673, '2026-09-12T05:59:05.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tu-bi-lu-mo-den-ap-dao', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'tu-bi-lu-mo-den-ap-dao';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tu-bi-lu-mo-den-ap-dao', 'Từ Bị Lu Mờ Đến Áp Đảo', 'From Overshadowed To Overpowered: Second Reincarnation Of A Talentless Sage', 'từ bị lu mờ đến áp đảo from overshadowed to overpowered: second reincarnation of a talentless sage 梅田修一朗 小山内怜央 白石晴香 加藤英美里 平川大輔 伊藤健太郎 楠見尚己 福西勝也 小山剛志', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dung-xin-anh-jane', 'Đừng Xin Anh Jane', 'Don''t Be Too Emotional', 'https://phimimg.com/upload/vod/20260628-1/a95d26463927cbc3490db630c8f8f16a.jpg', 'https://phimimg.com/upload/vod/20260628-1/579b51f4dd34a72eb28ee9ab9e2c57ca.jpg', '<p>Một cầu thủ bóng đá kết bạn với một thực thể ban điều ước đầy bí ẩn, nhưng những món quà nguy hiểm từ thực thể này lại che giấu những bí mật đen tối, vô tình kéo hai người lại gần nhau hơn.</p>', 
  'Hoàn Tất (12/12)', 12, 'series', 'completed', 512, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Thái Lan', 0, 
  '[{"name":"บุญยเกียรติ วงษาแจ่ม","avatar":"https://image.tmdb.org/t/p/w185/qflKEjinOa71LPQguYrqt0aY4Ku.jpg"},{"name":"ทัตพงศ์ โรจน์แสงเรือง","avatar":"https://image.tmdb.org/t/p/w185/rujhnbyDnRa2xtmbnrdfiZOn9lr.jpg"},{"name":"พลัฏฐ์ ชยุตนิธิโรจน์","avatar":"https://image.tmdb.org/t/p/w185/kTQpEGbDa1WTQNIB7T1tAtaJaRU.jpg"},{"name":"ภัทรพลฒ์ เดชพงษ์วรานนท์","avatar":"https://image.tmdb.org/t/p/w185/dVWr4GhFyQXQW40pAEk9Lz7yUiM.jpg"},{"name":"ธัชพล ธิติอภิชัย","avatar":"https://image.tmdb.org/t/p/w185/6I8NShWVZiJHu0R3SH5swASq1f2.jpg"},{"name":"มาชิดา สุทธิกุลพานิช","avatar":"https://image.tmdb.org/t/p/w185/AnIHEAjmwPxlEFBVlOq0wWYFRS7.jpg"},{"name":"พลวัฒน์ มนูประเสริฐ","avatar":"https://image.tmdb.org/t/p/w185/dINspxsEyG554WJHfii2YeeHdwy.jpg"},{"name":"สรวงสุดา ลาวัณย์ประเสริฐ","avatar":"https://image.tmdb.org/t/p/w185/tMsQlK3bKhC1TdROsM6LO1M5d5w.jpg"},{"name":"ชัชชวิศ เตชะรักษ์พงศ์","avatar":"https://image.tmdb.org/t/p/w185/8TzHVNq9FPGsY5ArtccLFEYhL0r.jpg"},{"name":"Byron Bishop","avatar":"https://image.tmdb.org/t/p/w185/niGZtLYRLFtOvphsAmI7N8UcKDj.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["อย่าขอพี่เจน","Rule No.1: Don''t Be too Emotional","Don t Be Too Emotional"]', '{"id":"314936","type":"tv","vote_average":9,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/tCILtCxiPEg8W91yUBRoRIvl7jc.png","backdrop_url":"https://image.tmdb.org/t/p/original/qvsaEJjl3DwBFy7K6lZaicCHL7R.jpg","poster_url":"https://image.tmdb.org/t/p/original/5PlgLt1Tz0STa3dV56KqWBq34JH.jpg","aspect_ratio":2.433}', '{"id":"tt40164372","vote_average":9.8}', 
  1789378914672, '2026-09-12T05:58:44.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-xin-anh-jane', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-xin-anh-jane', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-xin-anh-jane', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-xin-anh-jane', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dung-xin-anh-jane', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'dung-xin-anh-jane';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dung-xin-anh-jane', 'Đừng Xin Anh Jane', 'Don''t Be Too Emotional', 'đừng xin anh jane don''t be too emotional บุญยเกียรติ วงษาแจ่ม ทัตพงศ์ โรจน์แสงเรือง พลัฏฐ์ ชยุตนิธิโรจน์ ภัทรพลฒ์ เดชพงษ์วรานนท์ ธัชพล ธิติอภิชัย มาชิดา สุทธิกุลพานิช พลวัฒน์ มนูประเสริฐ สรวงสุดา ลาวัณย์ประเสริฐ ชัชชวิศ เตชะรักษ์พงศ์ byron bishop', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'doi-chung', 'Đối Chứng', 'Cause Of Death', 'https://phimimg.com/uploads/movies/20260907/doi-chung-thumb.webp', 'https://phimimg.com/uploads/movies/20260907/doi-chung-poster.webp', '<p>Đối Chứng theo chân quá trình trưởng thành trong sự nghiệp của Trình Chỉ Hân, một nữ bác sĩ pháp y mới vào nghề. Được điều động đến làm việc dưới trướng ân nhân Lâm Sâm, Chỉ Hân luôn cố gắng vượt qua mọi khó khăn để được công nhận thực lực. Sau khi giúp cảnh sát tổ trọng án Cao Tuấn thoát khỏi cáo buộc giết người, cô lại càng được đồng nghiệp và cấp trên tin tưởng. Cũng từ đó, Chỉ Hân cùng Lâm Sâm và Cao Tuấn trở thành một bộ ba ăn ý, hỗ trợ nhau phá giải nhiều vụ án bí ẩn.</p>', 
  'Tập 5', 25, 'series', 'ongoing', 254, 2026, 
  'Lồng Tiếng', 'FHD', 'Hồng Kông', 0, 
  '[{"name":"Trần Hiểu Hoa","avatar":"https://image.tmdb.org/t/p/w185/ntMcYP1NMVxsQcSIcLaGR9JCbtu.jpg"},{"name":"Vi Gia Hùng","avatar":"https://image.tmdb.org/t/p/w185/bj52zIGwKAGCODDMbC2KzXDzVaE.jpg"},{"name":"Mã Quán Đông","avatar":"https://image.tmdb.org/t/p/w185/b2O04lOj4oyeZBTIZEf5fEpysiq.jpg"},{"name":"Ngô Nhược Hy","avatar":"https://image.tmdb.org/t/p/w185/tTmNIuXf4DP2yxv4ZPeDUPtMWGa.jpg"},{"name":"Nguyễn Hạo Tông","avatar":"https://image.tmdb.org/t/p/w185/lCSY2o7Xdje8uBKLnmqmYrgZQhX.jpg"},{"name":"王綺琴","avatar":"https://image.tmdb.org/t/p/w185/6JmCeA7w2WslWVbo0pnnxBVaRSz.jpg"},{"name":"林熹瞳","avatar":"https://image.tmdb.org/t/p/w185/qbX4MhP9Wb6AMEtqtolBMxx0BqP.jpg"},{"name":"王菲","avatar":"https://image.tmdb.org/t/p/w185/eH8CUYelf38aQ7ylLtOnx3YTCiy.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["死有對証"]', '{"id":"331912","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":"https://image.tmdb.org/t/p/original/wnjNsNa1q32ARCp1i2q7iBWCV3r.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914671, '2026-09-12T05:58:02.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doi-chung', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doi-chung', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doi-chung', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doi-chung', 'long_tieng');
DELETE FROM movies_fts WHERE slug = 'doi-chung';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('doi-chung', 'Đối Chứng', 'Cause Of Death', 'đối chứng cause of death trần hiểu hoa vi gia hùng mã quán đông ngô nhược hy nguyễn hạo tông 王綺琴 林熹瞳 王菲', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dau-la-dai-luc-2-tuyet-the-duong-mon', 'Đấu La Đại Lục 2 (Tuyệt Thế Đường Môn)', 'Soul Land 2 (The Peerless Tang Clan)', 'https://phimimg.com/upload/vod/20240103-1/bbe888d771d0e6ff0f9935f8f6194c79.jpg', 'https://phimimg.com/upload/vod/20240103-1/af2ae10bcb72617994f00dce440205dc.jpg', '<p>Nơi đây không có ma pháp, không có hơn thua, không có võ thuật, nhưng lại có võ hồn. Đường Môn suy thoái sau khi đã thành lập được vạn năm ở Đấu La Đại Lục. Một lớp anh tài xuất hiện, liệu thế hệ Thất quái Sử Lai Khắc mới này có chấn hưng được Đường Môn, viết nên bài ca tuyệt thế Đường Môn hay không? Hồn thú triệu năm, Tử Linh Thánh Pháp Thần nắm giữ Nhật Nguyệt Trích Tinh, hệ thống Hồn Đạo Khí hoàn toàn mới khiến Đường Môn suy yếu. Tất cả thần khí đều sẽ lần lượt xuất hiện. Ám khí Đường Môn liệu có chấn hưng được uy phong, Đường Môn có thể tái hiện được huy hoàng hay không?</p>', 
  'Tập 170', 180, 'hoathinh', 'ongoing', 476, 2023, 
  'Vietsub', 'FDH', 'Trung Quốc', 0, 
  '[{"name":"Wei Zhai","avatar":"https://image.tmdb.org/t/p/w185/lEMSjLFFJnt0f98F5nEsQgoDBri.jpg"},{"name":"陶典","avatar":"https://image.tmdb.org/t/p/w185/432PwmJv3jlkNElEVWutIROwpEz.jpg"},{"name":"梁达伟","avatar":"https://image.tmdb.org/t/p/w185/yNXWQKc8K5JJlmsSs1pMhjjAhzj.jpg"},{"name":"唐雅菁","avatar":"https://image.tmdb.org/t/p/w185/1woRUHdnQLzpIeHsDQsgBfs4WRU.jpg"},{"name":"Kaiyin Sun","avatar":"https://image.tmdb.org/t/p/w185/4C5SuU7o8vzKLdllClA9bscLNCS.jpg"},{"name":"Xiyue Chen","avatar":"https://image.tmdb.org/t/p/w185/kNHIB5BkQQJlLGVXtd3NU9E068i.jpg"},{"name":"黄莺","avatar":"https://image.tmdb.org/t/p/w185/cchQTm4OdkjJ8g3GKcBdCfDmoJI.jpg"},{"name":"Chengyuan Li","avatar":"https://image.tmdb.org/t/p/w185/f1KWvw1EwNBFUZJ0E6ImyZOpeLn.jpg"},{"name":"Lizhen Yan","avatar":"https://image.tmdb.org/t/p/w185/u9clcuCG7uVGZVdX9vWbZ75W5ON.jpg"},{"name":"赵双","avatar":"https://image.tmdb.org/t/p/w185/i2o0fZgnN0gHQ9UOQXYPCOcY2IV.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"578f80eb493b08d175c7a0c29687cbdf","name":"Võ Thuật","slug":"vo-thuat"}]', 
  '["Jueshi Tangmen","Douluo Dalu 2: Jueshi Tangmen","Douluo Dalu II: Jueshi Tangmen","斗罗大陆2","绝世唐门","斗罗大陆2:绝世唐门","斗罗大陆Ⅱ绝世唐门","DouLuoDaLu2：JueShiTangMen","Dou Luo Da Lu ： Jue Shi Tang Men","Soul Land 2","Soul Land S02","斗罗大陆2：绝世唐门","Dòu luō dàlù II juéshì táng mén","斗罗大陆2绝世唐门","斗罗大陆II 绝世唐门","斗罗大陆 第2季 绝世唐门","Combat Continent 2","Dunia Roh II","투라대륙 S2","투라대륙Ⅱ: 절세당문","엘피스 전기2: 절세당문","투라대륙2 절세당문","엘피스 전기: 절세당문","소울랜드Ⅱ: 절세당문","ตำนานจอมยุทธ์ภูตถังซาน 2","絕世唐門","斗羅大陸2絕世唐門","斗羅大陸Ⅱ絕世唐門","Douluo Continent Season 2: Tang San - The Land of Warriors","Soul Land II: The Unrivaled Tang","Soul Land II: The Unrivaled Tang Sect","Soul Land 2: The Peerless Tang","Soul Land II: The Peerless Tang Clan","Soul Land Ⅱ：The Peerless Tang Clan","Soul Land II: Jueshi Tangmen"]', '{"id":"228429","type":"tv","vote_average":8,"vote_count":15,"logo_url":"https://image.tmdb.org/t/p/original/16lJPkztKFj5FjkrYCsHrewdFwx.png","backdrop_url":"https://image.tmdb.org/t/p/original/w2DBa4lRn97uvZkshoCX8XVvieZ.jpg","poster_url":"https://image.tmdb.org/t/p/original/pzemNbETZKXRzjvBwc1hydqbEeK.jpg","aspect_ratio":2.896}', '{"id":"tt28022382","vote_average":8.1}', 
  1789378914670, '2026-09-12T05:57:09.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-la-dai-luc-2-tuyet-the-duong-mon', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-la-dai-luc-2-tuyet-the-duong-mon', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-la-dai-luc-2-tuyet-the-duong-mon', 'vo-thuat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-la-dai-luc-2-tuyet-the-duong-mon', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-la-dai-luc-2-tuyet-the-duong-mon', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dau-la-dai-luc-2-tuyet-the-duong-mon', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'dau-la-dai-luc-2-tuyet-the-duong-mon';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dau-la-dai-luc-2-tuyet-the-duong-mon', 'Đấu La Đại Lục 2 (Tuyệt Thế Đường Môn)', 'Soul Land 2 (The Peerless Tang Clan)', 'đấu la đại lục 2 (tuyệt thế đường môn) soul land 2 (the peerless tang clan) wei zhai 陶典 梁达伟 唐雅菁 kaiyin sun xiyue chen 黄莺 chengyuan li lizhen yan 赵双', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'Doraemon: Nobita và Lâu Đài Dưới Đáy Biển (Phiên Bản Mới)', 'Doraemon the Movie: New Nobita and the Castle of the Undersea Devil', 'https://phimimg.com/uploads/movies/20260829/doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi-thumb.webp', 'https://phimimg.com/uploads/movies/20260829/doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi-poster.webp', '<p>"Doraemon: Nobita và Lâu đài dưới đáy biển" (tên khác là Lâu đài ma dưới đáy biển) là một trong những tác phẩm kinh điển thuộc loạt truyện dài và phim điện ảnh Doraemon. Hiện tại, tác phẩm này đang thu hút sự chú ý với phiên bản làm mới (remake) ra mắt vào năm 2026.</p>', 
  'Full', 1, 'hoathinh', 'completed', 392, 2026, 
  'Vietsub + Lồng Tiếng', 'FHD', 'Nhật Bản', 1, 
  '[{"name":"水田わさび","avatar":"https://image.tmdb.org/t/p/w185/sJ4kytbg2XiERgch3k2k82FXK2B.jpg"},{"name":"大原めぐみ","avatar":"https://image.tmdb.org/t/p/w185/zelZQmq65MaiSeDIiqEpZOINIxd.jpg"},{"name":"かかずゆみ","avatar":"https://image.tmdb.org/t/p/w185/sVIBofobg32jmGmL0gjEDVsJdaz.jpg"},{"name":"木村昴","avatar":"https://image.tmdb.org/t/p/w185/8o24ix4Lk9WduRXFDI6Nmip5Deq.jpg"},{"name":"関智一","avatar":"https://image.tmdb.org/t/p/w185/jGQC9KkfNMh2wBgizw81GLX2KN2.jpg"},{"name":"千葉翔也","avatar":"https://image.tmdb.org/t/p/w185/pF2urY77wuCYd9Fxh7dTirFYKSF.jpg"},{"name":"広橋涼","avatar":"https://image.tmdb.org/t/p/w185/6CIsUKnB9DLjjMdbcPch3kmuf85.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"}]', 
  '["Eiga Doaremon Shin Nobita no Kaitei Kiganjou","Doraemon Shin Nobita no Kaitei Kiganjou","Doraemon the Movie 2026: New Nobita and the Castle of the Undersea Devil","映画ドラえもん 新・のび太の海底鬼岩城"]', '{"id":"1542261","type":"movie","vote_average":7.3,"vote_count":10,"logo_url":"https://image.tmdb.org/t/p/original/fP7XgB6p1HKe0aLoEWSzXwm7j0q.png","backdrop_url":"https://image.tmdb.org/t/p/original/pxd9rc03EMMln3tVFdfd427Fpsi.jpg","poster_url":"https://image.tmdb.org/t/p/original/jTvru4ddQNkNPvPHQgHZipAMF65.jpg","aspect_ratio":2.754}', '{"id":"tt38201958","vote_average":null}', 
  1789378914669, '2026-09-12T05:56:35.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'le_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'anime_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'anime_movie');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'phim_chieu_rap');
DELETE FROM movies_fts WHERE slug = 'doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('doraemon-nobita-va-lau-dai-duoi-day-bien-phien-ban-moi', 'Doraemon: Nobita và Lâu Đài Dưới Đáy Biển (Phiên Bản Mới)', 'Doraemon the Movie: New Nobita and the Castle of the Undersea Devil', 'doraemon: nobita và lâu đài dưới đáy biển (phiên bản mới) doraemon the movie: new nobita and the castle of the undersea devil 水田わさび 大原めぐみ かかずゆみ 木村昴 関智一 千葉翔也 広橋涼', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'Cuộc Sống Ở Thời Lệnh Hòa Của Ngài Dara', 'Dara-san Of Reiwa', 'https://phimimg.com/upload/vod/20260703-1/70c74fd95e4902512ea412da15873c26.jpg', 'https://phimimg.com/upload/vod/20260703-1/fa2d431e68ed9e55d3d455b57253d1d7.jpg', '<p>Sau khi liều lĩnh tiến vào một khu rừng núi hiểm trở và bị cấm, hai anh em Hinata và Kaoru đã chạm trán với một vị xà thần vô cùng đáng sợ, nhưng rồi họ lại bất ngờ trở thành những người bạn thân thiết của nhau! Bất chấp vẻ ngoài ban đầu có phần ghê rợn, vị thần tự xưng là &quot;thần xui xẻo&quot; này thực chất lại rất vụng về, cô đơn và dễ trò chuyện một cách ngạc nhiên.</p>', 
  'Tập 11', 13, 'hoathinh', 'ongoing', 345, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"田村睦心","avatar":"https://image.tmdb.org/t/p/w185/uvbBIRiBK6GDLEESiYSFWOVlaE4.jpg"},{"name":"津田美波","avatar":"https://image.tmdb.org/t/p/w185/bgPI0vCsH43aZVfBuUcQ91cDBxe.jpg"},{"name":"寺澤百花","avatar":"https://image.tmdb.org/t/p/w185/lLS7b6k1653tiVwbi6pq9JXzMBW.jpg"},{"name":"古賀葵","avatar":"https://image.tmdb.org/t/p/w185/uVpwheVV4aPROyY1toYv3v5HSPD.jpg"},{"name":"杉田智和","avatar":"https://image.tmdb.org/t/p/w185/cv5zuPZySNsHXu24pjKLYCRzJ2J.jpg"},{"name":"相沢舞","avatar":"https://image.tmdb.org/t/p/w185/hdhUtNQPUZZSr9HrrkytKNmAEXG.jpg"},{"name":"早見沙織","avatar":"https://image.tmdb.org/t/p/w185/gLv9lO7dlUbIsmyJUvgegqAAXki.jpg"},{"name":"大塚芳忠","avatar":"https://image.tmdb.org/t/p/w185/3RHQcrsWnAFK6AifSis1lMq08cR.jpg"},{"name":"てらそままさき","avatar":"https://image.tmdb.org/t/p/w185/eol7Ul4buAam9SmJDuFIWln0Cd3.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["令和的斑小姐","令和妖神斑小姐","Reiwa no Dara-san","Dara-san of the Reiwa Era","令和のダラさん"]', '{"id":"312507","type":"tv","vote_average":8,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/gmuHAPEx8t88pQdcb7xWiKWdbEg.png","backdrop_url":"https://image.tmdb.org/t/p/original/t9pxS8JUIya68VOIRVAu8rhbGZL.jpg","poster_url":"https://image.tmdb.org/t/p/original/s0rPBaoGFTVR5KglSEzbBQ2u256.jpg","aspect_ratio":1.842}', '{"id":"tt39195667","vote_average":null}', 
  1789378914668, '2026-09-12T05:56:00.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('cuoc-song-o-thoi-lenh-hoa-cua-ngai-dara', 'Cuộc Sống Ở Thời Lệnh Hòa Của Ngài Dara', 'Dara-san Of Reiwa', 'cuộc sống ở thời lệnh hòa của ngài dara dara-san of reiwa 田村睦心 津田美波 寺澤百花 古賀葵 杉田智和 相沢舞 早見沙織 大塚芳忠 てらそままさき', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi', 'Cả Thế Giới Chỉ Có Anh Kết Nối Được Với Tôi', 'Connecting To You', 'https://phimimg.com/uploads/movies/20260817/ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi-thumb.webp', 'https://phimimg.com/uploads/movies/20260817/ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi-poster.webp', '<p>Giai Khải, thành viên chủ chốt của câu lạc bộ tâm linh tại trường, có khả năng nhìn thấy những sợi dây kết nối giữa con người nhưng bản thân lại không có bất kỳ mối liên kết nào. Khi gặp Đại Vĩ, một cảnh sát không tin vào chuyện tâm linh, anh phát hiện giữa họ tồn tại một sợi chỉ bạc bí ẩn và quyết tâm tìm hiểu ý nghĩa của mối liên kết này.</p>', 
  'Tập 12', 13, 'series', 'ongoing', 191, 2026, 
  'Vietsub', 'FHD', 'Đài Loan', 0, 
  '[{"name":"邱以太","avatar":"https://image.tmdb.org/t/p/w185/uXEdvMnJKW2FdBUNUp1id0UFdNB.jpg"},{"name":"劉育仁","avatar":"https://image.tmdb.org/t/p/w185/bxaI9azcsSD5Ke2NzK1u1jqjYKy.jpg"},{"name":"林鶴軒","avatar":"https://image.tmdb.org/t/p/w185/reNOAJalfV5aBVuE0hZaz5GJlSy.jpg"},{"name":"杜苡妮","avatar":"https://image.tmdb.org/t/p/w185/ar1IE541O41XypyAIpcRcgOL3Ad.jpg"},{"name":"朱家緯","avatar":"https://image.tmdb.org/t/p/w185/M34oAC1D0CLxE0fd3au4Hgv273.jpg"},{"name":"廖偉博","avatar":"https://image.tmdb.org/t/p/w185/15qF7j2dfu1olznShH7cpKY1RI1.jpg"},{"name":"蔡明毅","avatar":"https://image.tmdb.org/t/p/w185/ndWn9VCBMQdulorqAumSEDvhcty.jpg"},{"name":"龎蕾馨","avatar":"https://image.tmdb.org/t/p/w185/7aTjrjH845mTo7OEQX0G4VFD7Xs.jpg"},{"name":"黃迪揚","avatar":"https://image.tmdb.org/t/p/w185/iBuT33acAo19BuhXCj2tr3jMktr.jpg"},{"name":"吳碧蓮","avatar":""}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["整个世界只有你连上了我","Conectando Contigo","Connecting to you","無線人生：整個世界，只有你連上了我","整個世界只有你連上了我","整個世界，只有你連上了我"]', '{"id":"239830","type":"tv","vote_average":9,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/mxAuO7Wdsyjp6Jn7HnVfarc4Q48.png","backdrop_url":"https://image.tmdb.org/t/p/original/zRb5aPkZdwIlsv1n0UF4O1plcOr.jpg","poster_url":"https://image.tmdb.org/t/p/original/uJqnlWSddGmq89hgq2Vg37eUm5o.jpg","aspect_ratio":3.73}', '{"id":"tt40807419","vote_average":null}', 
  1789378914667, '2026-09-12T05:55:35.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ca-the-gioi-chi-co-anh-ket-noi-duoc-voi-toi', 'Cả Thế Giới Chỉ Có Anh Kết Nối Được Với Tôi', 'Connecting To You', 'cả thế giới chỉ có anh kết nối được với tôi connecting to you 邱以太 劉育仁 林鶴軒 杜苡妮 朱家緯 廖偉博 蔡明毅 龎蕾馨 黃迪揚 吳碧蓮', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ca-doi-co-len', 'Cả Đội Cố Lên', 'Go Team!', 'https://phimimg.com/uploads/movies/20260912/ca-doi-co-len-thumb.webp', 'https://phimimg.com/uploads/movies/20260912/ca-doi-co-len-poster.webp', '<p>Khi sự kiện xây dựng tinh thần đồng đội bị chuyển xuống một ngôi làng nhỏ, các nhân viên của công ty phô mai tưởng mọi chuyện không thể tệ hơn – cho đến khi hay tin về đợt sa thải.</p>', 
  'Full', 1, 'single', 'completed', 22, 2026, 
  'Vietsub', 'FHD', 'Tây Ban Nha', 0, 
  '[{"name":"Alexandra Jiménez","avatar":"https://image.tmdb.org/t/p/w185/2dRN4aqsNgO9Um2f3FUWSx5WMcx.jpg"},{"name":"Maribel Verdú","avatar":"https://image.tmdb.org/t/p/w185/7hxTsW5CKi2lkz5yGMWShki7DOo.jpg"},{"name":"Pedro Casablanc","avatar":"https://image.tmdb.org/t/p/w185/7oXGl8Nr2w7SaES4tbzjw4RYtF0.jpg"},{"name":"Raúl Tejón","avatar":"https://image.tmdb.org/t/p/w185/cKc2AQ8t7bn2XXceg7vYP3XlJIe.jpg"},{"name":"Blanca Martínez","avatar":"https://image.tmdb.org/t/p/w185/wIQhqLe9cvIkWL7V2oBMAeuxqk1.jpg"},{"name":"Victor Rebull","avatar":"https://image.tmdb.org/t/p/w185/locdIJLnX1elVJr3ufV4sprk6Yh.jpg"},{"name":"Pepe Viyuela","avatar":"https://image.tmdb.org/t/p/w185/aDDn9kF809MMCIXGQ7Cl0crW7Zj.jpg"},{"name":"Saturnino García","avatar":"https://image.tmdb.org/t/p/w185/yubpcNgsdb5rKZPhKmiNRJfA0qX.jpg"},{"name":"Ismael Fritschi","avatar":"https://image.tmdb.org/t/p/w185/8fRvH1drA5VUD1nodNdcTrf9mQ0.jpg"},{"name":"Clara de Ramon","avatar":"https://image.tmdb.org/t/p/w185/yLlKusqKznBCRN4FZBzej6GL3XU.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Gracias, equipo"]', '{"id":"1558568","type":"movie","vote_average":3.8,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/ivQkigjM2ueqYXgAnNPE34AWFza.png","backdrop_url":"https://image.tmdb.org/t/p/original/24JmHBUaZVmZRoEMjzejLL3sJc5.jpg","poster_url":"https://image.tmdb.org/t/p/original/jM8LRvzYIqZqw6Si5xNECiHFDgM.jpg","aspect_ratio":5.562}', '{"id":"tt38616652","vote_average":null}', 
  1789378914666, '2026-09-12T05:55:07.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-doi-co-len', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-doi-co-len', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ca-doi-co-len', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'ca-doi-co-len';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ca-doi-co-len', 'Cả Đội Cố Lên', 'Go Team!', 'cả đội cố lên go team! alexandra jiménez maribel verdú pedro casablanc raúl tejón blanca martínez victor rebull pepe viyuela saturnino garcía ismael fritschi clara de ramon', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bui-mebius', 'Bụi Mebius', 'MEBIUS DUST', 'https://phimimg.com/uploads/movies/20260710/bui-mebius-thumb.webp', 'https://phimimg.com/uploads/movies/20260710/bui-mebius-poster.webp', '<p>Araki, Stella và Olga là những học sinh cấp ba bình thường đang sinh sống tại một thành phố bị biến đổi bởi loại Bụi Mebius đầy bí ẩn. Đan xen giữa những buổi cày game, những chuyến đi nhà tắm công cộng và những bước chân lặng lẽ trên đường về nhà, những ngày tháng của họ trôi qua một cách êm đềm — thế nhưng, các công nghệ kỳ lạ cùng tình trạng bất ổn ngày một gia tăng đang bắt đầu âm thầm bóp méo cuộc sống thường nhật của họ.</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 444, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"竹中悠斗","avatar":""},{"name":"稗田寧々","avatar":"https://image.tmdb.org/t/p/w185/kg2cNTQ83bDadVBPJSrY2quRQpT.jpg"},{"name":"佐藤榛夏","avatar":"https://image.tmdb.org/t/p/w185/9rGQbNsfzDlFCC2dtdR9vSIlyDR.jpg"},{"name":"坂泰斗","avatar":"https://image.tmdb.org/t/p/w185/pSExEOVmjAujKUyJJJSxC1WEzOM.jpg"},{"name":"市川蒼","avatar":"https://image.tmdb.org/t/p/w185/tM1PwSZlOT23ia4PDKkGHJVBd0T.jpg"},{"name":"堀金蒼平","avatar":"https://image.tmdb.org/t/p/w185/7JftC3BBrKAfK0MtcbRVELLOyfo.jpg"},{"name":"松田颯水","avatar":"https://image.tmdb.org/t/p/w185/2t35t5W2hyBD0eQGCpJcG4m4zHh.jpg"},{"name":"三上枝織","avatar":"https://image.tmdb.org/t/p/w185/vA4xHsvHIC1Kpll63hMsUANjDA3.jpg"},{"name":"河瀬茉希","avatar":"https://image.tmdb.org/t/p/w185/3LgHKyXM33oOtBzmYTDesftIzY0.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["梅比乌斯之尘","Mebius Dust","Möbius Dust","メビウス・ダスト"]', '{"id":"98865","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/6mVJj9vtHuS39WDr8r5RYJOTg59.png","backdrop_url":"https://image.tmdb.org/t/p/original/zWXRjJFEfwQnMqqeyvjTLWkRenH.jpg","poster_url":"https://image.tmdb.org/t/p/original/s0IKZTAn9sbGToaim12YEOTyWde.jpg","aspect_ratio":6.486}', '{"id":"tt43587102","vote_average":null}', 
  1789378914665, '2026-09-12T05:53:00.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bui-mebius', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'bui-mebius';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bui-mebius', 'Bụi Mebius', 'MEBIUS DUST', 'bụi mebius mebius dust 竹中悠斗 稗田寧々 佐藤榛夏 坂泰斗 市川蒼 堀金蒼平 松田颯水 三上枝織 河瀬茉希', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  '100-ngay-tro-thanh-vua', '100 Ngày Trở Thành Vua', 'Crowned In A Hundred Days', 'https://phimimg.com/upload/vod/20260705-1/be3861cd61b17562208ac480e1a72485.jpg', 'https://phimimg.com/upload/vod/20260705-1/fa3aca9eeb59b42dfcda83b0c2d85fd4.jpg', '<p>Bị dồn đến bờ vực của sự tuyệt vọng, Minh — chủ của một quán ăn — đã tạo nên một mối liên kết không tưởng với linh hồn của chân mệnh Thiên tử là Quốc vương Lie sau khi nuốt chửng linh hồn này để cứu lấy người mình yêu. Bị ràng buộc bởi định mệnh, cả hai dấn thân vào một cuộc hành trình đầy hiểm nguy để thách thức kẻ bạo chúa đã chiếm đoạt ngai vàng. Với vỏn vẹn một trăm ngày để xoay chuyển số phận, Minh đã tận dụng trí nhớ phi thường của mình để làm chủ những ma pháp cổ xưa đã thất truyền từ lâu, đồng thời chiêu mộ đồng minh và thu phục lòng dân trên suốt chặng đường. Khi sức mạnh ngày một lớn dần, quyết tâm lật đổ triều đại thối nát, đòi lại vương vị cho vị vua đích thực và khôi phục thái bình cho vương quốc của họ lại càng thêm sục sôi.</p>', 
  'Tập 24', 25, 'hoathinh', 'ongoing', 478, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"谷江山","avatar":"https://image.tmdb.org/t/p/w185/9AHZohwKutKWdsexJDbfFf1SP6i.jpg"},{"name":"张福正","avatar":"https://image.tmdb.org/t/p/w185/gB3NHNnG2WSC1SnjGQ36Z9qD8Rp.jpg"},{"name":"聶曦映","avatar":"https://image.tmdb.org/t/p/w185/hzdBwUblHmYsDITxSgaW5M9faZX.jpg"},{"name":"Qian Chen","avatar":"https://image.tmdb.org/t/p/w185/yBEf8BrJC2ebm0KMp4FP2Ck2kYm.jpg"},{"name":"赵爽","avatar":"https://image.tmdb.org/t/p/w185/xA098kVGQRMNcLWqWsQwumIXemV.jpg"},{"name":"金弦","avatar":"https://image.tmdb.org/t/p/w185/ieHgOyT3hFBZjZ7PM22UEZgiLe5.jpg"},{"name":"郭浩然","avatar":"https://image.tmdb.org/t/p/w185/oKJpFKdCLRzcaTH8kWYNjYczfWb.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Bai Ri Cheng Wang","百日成王"]', '{"id":"326844","type":"tv","vote_average":7,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/1geOUNfxVUkJg4DqT59ubhknOqU.png","backdrop_url":"https://image.tmdb.org/t/p/original/sCiAP45k7IvngU9xXdLobauW17f.jpg","poster_url":"https://image.tmdb.org/t/p/original/5UGJZ3IrN51E6K1IrupZBWpGfLn.jpg","aspect_ratio":1.824}', '{"id":"tt43609776","vote_average":null}', 
  1789378914664, '2026-09-12T05:52:31.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('100-ngay-tro-thanh-vua', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = '100-ngay-tro-thanh-vua';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('100-ngay-tro-thanh-vua', '100 Ngày Trở Thành Vua', 'Crowned In A Hundred Days', '100 ngày trở thành vua crowned in a hundred days 谷江山 张福正 聶曦映 qian chen 赵爽 金弦 郭浩然', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chuyen-gia-xao-quyet', 'Chuyên Gia Xảo Quyệt', 'Tricky Brains', 'https://phimimg.com/uploads/movies/20260713/chuyen-gia-xao-quyet-thumb.webp', 'https://phimimg.com/uploads/movies/20260713/chuyen-gia-xao-quyet-poster.webp', '<p>Tricky Brains (1991) - Chuyên Gia Xảo Quyệt là bộ phim hài xoay quanh nhân vật Cổ Tinh, một chuyên gia bịp bợm đẹp trai, thông minh được thuê đội lốt người em cùng cha khác mẹ bị thất lạc từ nhỏ của Văn Kiệt. Chẳng bao lâu sau, dưới bàn tay đạo diễn của Cổ Tinh, việc làm ăn của công ty Văn Kiệt cũng như quan hệ tình cảm giữa Văn Kiệt và Trình Lạc Nhi mỗi lúc một trở nên tồi tệ. Tuy nhiên, bất chấp mọi tai ương, cha con Văn Kiệt vẫn một lòng yêu thương săn sóc Cổ Tinh và điều đó khiến chuyên gia bịp bợm cảm động, quyết định thay đổi. Liệu sự hối cải của Cổ Tinh có quá muộn màng? Liệu trong phim này anh có giúp Văn Kiệt vượt qua được sóng gió trong sự nghiệp và hàn gắn tình yêu với Lạc Nhi. Bằng phong cách hài hước kết hợp giữa diễn xuất hình thể và các tình huống khác thường đã làm nên thương hiệu Châu Tinh Trì, bộ phim này đem lại những giây phút thư giãn thoải mái cho người xem.</p>', 
  'Full', 1, 'single', 'completed', 341, 1991, 
  'Vietsub + Thuyết Minh + Lồng Tiếng', 'FHD', 'Hồng Kông', 0, 
  '[{"name":"Lưu Đức Hoa","avatar":"https://image.tmdb.org/t/p/w185/z9R2yerjfgxwDWIH8sjiS0hhcre.jpg"},{"name":"Châu Tinh Trì","avatar":"https://image.tmdb.org/t/p/w185/j5DWs54BGZfp92G43c9OyHPvkNG.jpg"},{"name":"Quan Chi Lâm","avatar":"https://image.tmdb.org/t/p/w185/pbHKTJaOzFVTD1HNOnPD0RyLMlK.jpg"},{"name":"Khâu Thục Trinh","avatar":"https://image.tmdb.org/t/p/w185/8ZEk4Yc0GlC1xcF6U7cO8GUKPAl.jpg"},{"name":"Ngô Mạnh Đạt","avatar":"https://image.tmdb.org/t/p/w185/l8Sfi9pT0YcyzGy0bt7XwY8OEBo.jpg"},{"name":"Lý Tử Hùng","avatar":"https://image.tmdb.org/t/p/w185/4ajNY6SMdCAbNh0kWCRAl4yrTJ.jpg"},{"name":"Vương Tinh","avatar":"https://image.tmdb.org/t/p/w185/gMmaDRst3OwnY1wClKt541AmslD.jpg"},{"name":"鮑漢琳","avatar":"https://image.tmdb.org/t/p/w185/uFOxaanC3dbbPWyvT8O1DljOBUd.jpg"},{"name":"Trình Đông","avatar":"https://image.tmdb.org/t/p/w185/jh3AOCiCJudVSDG7KtQ5gCjswOg.jpg"},{"name":"Trần Mạn Na","avatar":"https://image.tmdb.org/t/p/w185/t80RDLlDraPOZDp0pzgP1Syo0Ey.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["The Ultimate Trickster","整蠱專家","Tricky Brains 1991 - Chuyên Gia Xảo Quyệt","Chuyên Gia Xảo Quyệt 1991","Tricky Brains"]', '{"id":"41364","type":"movie","vote_average":7.1,"vote_count":94,"logo_url":"https://image.tmdb.org/t/p/original/1md5X2ERJ74Ik3O6YbFNMJs1BdK.png","backdrop_url":"https://image.tmdb.org/t/p/original/8Mv8YonHDO0J0mUoKeS46KMZvkw.jpg","poster_url":"https://image.tmdb.org/t/p/original/penoWI7ld7kFCPQcjqaHrfsgt3U.jpg","aspect_ratio":2.3}', '{"id":"tt0103328","vote_average":7}', 
  1789378914663, '2026-09-11T17:08:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-gia-xao-quyet', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-gia-xao-quyet', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-gia-xao-quyet', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-gia-xao-quyet', 'long_tieng');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-gia-xao-quyet', 'thuyet_minh');
DELETE FROM movies_fts WHERE slug = 'chuyen-gia-xao-quyet';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chuyen-gia-xao-quyet', 'Chuyên Gia Xảo Quyệt', 'Tricky Brains', 'chuyên gia xảo quyệt tricky brains lưu đức hoa châu tinh trì quan chi lâm khâu thục trinh ngô mạnh đạt lý tử hùng vương tinh 鮑漢琳 trình đông trần mạn na stephen chow', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'u-thi-ly-hon', 'Ừ Thì Ly Hôn!', 'OK! Let''s Get Divorced', 'https://phimimg.com/uploads/movies/20260821/u-thi-ly-hon-thumb.webp', 'https://phimimg.com/uploads/movies/20260821/u-thi-ly-hon-poster.webp', '<p>Bộ phim xoay quanh CEO của thương hiệu váy cưới J&White, Baek Mi Young và chồng cô, nhà thiết kế Ji Won Ho. Từng yêu nhau sâu đậm và cùng gây dựng sự nghiệp, họ tưởng như có một cuộc hôn nhân hạnh phúc, nhưng sau 7 năm chung sống, những mâu thuẫn và tổn thương âm thầm khiến Mi Young quyết định đề nghị ly hôn. Từ đây, cả hai bước vào cuộc chiến ly hôn đầy căng thẳng, buộc cả hai phải nhìn lại những biến cố trong quá khứ và đối mặt với những cảm xúc chưa được giải quyết.</p>', 
  'Tập 8', 12, 'series', 'ongoing', 489, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"이민정","avatar":"https://image.tmdb.org/t/p/w185/sAQKiuCtTv4vn5FqduNjsv89wQe.jpg"},{"name":"김지석","avatar":"https://image.tmdb.org/t/p/w185/qMKyA4CJvBNhLRBbjV6s6khlf5e.jpg"},{"name":"기은세","avatar":"https://image.tmdb.org/t/p/w185/hOLijKtN4H3EboraORO83YYyBRY.jpg"},{"name":"구성환","avatar":"https://image.tmdb.org/t/p/w185/9oSGpqUOVVtL9vsAxZNWdsaKQM9.jpg"},{"name":"이현진","avatar":"https://image.tmdb.org/t/p/w185/89LNeiNNd1B71Ubrhwi3w28r4a3.jpg"},{"name":"왕빛나","avatar":"https://image.tmdb.org/t/p/w185/iOXdRpsagdVMH5mwDCnB4AujIgl.jpg"},{"name":"정의제","avatar":"https://image.tmdb.org/t/p/w185/kP9DLXf6aOw4nCKIoiCoa7f2VOW.jpg"},{"name":"이진이","avatar":"https://image.tmdb.org/t/p/w185/cyhEUoDDMTZ0fs70Jti2thPC372.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Yes, Let''s Get a Divorce","그래, 이혼하자"]', '{"id":"276470","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/cnzMIitN5e22wVUxtXKM3B2KIrU.png","backdrop_url":"https://image.tmdb.org/t/p/original/7JlcvcsS0dfzElD97ucgI7WtjWG.jpg","poster_url":"https://image.tmdb.org/t/p/original/eE15dAtxrO3m8O9puVgBOgpF4a8.jpg","aspect_ratio":1.678}', '{"id":"tt44094505","vote_average":null}', 
  1789378914662, '2026-09-11T15:59:44.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('u-thi-ly-hon', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('u-thi-ly-hon', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('u-thi-ly-hon', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('u-thi-ly-hon', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('u-thi-ly-hon', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('u-thi-ly-hon', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'u-thi-ly-hon';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('u-thi-ly-hon', 'Ừ Thì Ly Hôn!', 'OK! Let''s Get Divorced', 'ừ thì ly hôn! ok! let''s get divorced 이민정 김지석 기은세 구성환 이현진 왕빛나 정의제 이진이', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'the-gioi-hoan-my', 'Thế Giới Hoàn Mỹ', 'Perfect World', 'https://phimimg.com/upload/vod/20240822-1/98b87edeb63d262313f864bc57df93d5.jpg', 'https://phimimg.com/upload/vod/20240822-1/97aa8ce6feea9737ac591a26a289b725.jpg', '<p>Thới Giới Hoàn Mỹ là phim hoạt hình kể về quá trình trưởng thành của một đứa trẻ trời sinh Chí Tôn cốt (đứa bé này tương lai có thể sánh vai cùng hung Thái cổ được trời ưu ái), có thể chinh chiến với Chân Hống, Kim Sí Đại Bàng có huyết mạnh tinh thuần đến hoàn mỹ, Nguyên thủy bảo thuật của nó sẽ danh chấn thiên hạ, được ghi khắc vào lịch sử của dân tộc.</p>', 
  'Tập 286', 286, 'hoathinh', 'ongoing', 533, 2021, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"陳錦聞","avatar":"https://image.tmdb.org/t/p/w185/hJXKRcrbVpKc2q1rIbH6DU2INPH.jpg"},{"name":"李詩萌","avatar":"https://image.tmdb.org/t/p/w185/i7hKjBsuxiMHuj3v68yWhbLXNbi.jpg"},{"name":"劉朙月","avatar":"https://image.tmdb.org/t/p/w185/kqh1vBsQ35b617dvd9jtvQ2ii7l.jpg"},{"name":"Qing Liu","avatar":"https://image.tmdb.org/t/p/w185/fmVtzbpfQ6lkgOyXdyvrl0BunWD.jpg"},{"name":"楚越","avatar":"https://image.tmdb.org/t/p/w185/q4Xejn2gc4FP84YR9Cjrz8D557b.jpg"},{"name":"李兰陵","avatar":"https://image.tmdb.org/t/p/w185/ejeFtmhRq12vJU7VfWySggmyh3y.jpg"},{"name":"Meme Yan","avatar":"https://image.tmdb.org/t/p/w185/8Gf8Ji8CKJ3lhnKlnYM2ZpDOIXy.jpg"},{"name":"胡亞捷","avatar":"https://image.tmdb.org/t/p/w185/wk999amlt6XYwKMEinb7UCJnMMb.jpg"},{"name":"张雨濛","avatar":"https://image.tmdb.org/t/p/w185/1vga09sbz3WQ1zV9D6f7kAHDD11.jpg"},{"name":"賀文瀟","avatar":"https://image.tmdb.org/t/p/w185/bPsFFEEFjTFwqmM8SWrkHloBdjH.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["完美世界","Perfect World","Wanmei Shijie","Perfect World (Wanmei Shijie)","عالم مثالي [وانمي شيجي]","Безупречный мир","wan mei shi jie","Thế giới hoàn mỹ"]', '{"id":"124003","type":"tv","vote_average":8.2,"vote_count":26,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/fHg453EznVv6TDDSdbln4uuQXhJ.jpg","poster_url":"https://image.tmdb.org/t/p/original/qy60bm9admmgpkmcPeW4BvRjjVm.jpg","aspect_ratio":null}', '{"id":"tt14986786","vote_average":8.3}', 
  1789378914661, '2026-09-11T15:59:04.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('the-gioi-hoan-my', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('the-gioi-hoan-my', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('the-gioi-hoan-my', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('the-gioi-hoan-my', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('the-gioi-hoan-my', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('the-gioi-hoan-my', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'the-gioi-hoan-my';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('the-gioi-hoan-my', 'Thế Giới Hoàn Mỹ', 'Perfect World', 'thế giới hoàn mỹ perfect world 陳錦聞 李詩萌 劉朙月 qing liu 楚越 李兰陵 meme yan 胡亞捷 张雨濛 賀文瀟', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thang-cam-lang', 'Tháng Câm Lặng', 'Bulan Henti Bicara', 'https://phimimg.com/uploads/movies/20260731/thang-cam-lang-thumb.webp', 'https://phimimg.com/uploads/movies/20260731/thang-cam-lang-poster.webp', '<p>Sinh ra trong một gia đình nghèo khó, Zulfa buộc phải hy sinh mối tình đầu khắc cốt ghi tâm với Afghan để nghe theo sự sắp đặt của cha, kết hôn với Jamali — một người đàn ông giàu có và đạo mạo. Tuy nhiên, cuộc hôn nhân này lại là khởi đầu cho chuỗi bi kịch khi cô bị chồng ngược đãi và phải sống chung nhà với người vợ đầu độc đoán của hắn là Faziah. Sống trong sự nhẫn nhịn và chịu đựng, Zulfa chỉ biết gửi gắm tâm sự cùng ánh trăng, cho đến khi sự trở lại của Afghan làm bùng nổ những sóng gió mới.</p>', 
  'Tập 26', 28, 'series', 'ongoing', 419, 2026, 
  'Vietsub', 'FHD', 'Malaysia', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Bulan Henti Bicara"]', '{"id":"331462","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/4qlblDYoDjnVxXut2hzHlE5b4Pb.jpg","poster_url":"https://image.tmdb.org/t/p/original/ibjt1BjQZWSR2R5C7BlpialOzpq.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914660, '2026-09-11T15:58:24.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thang-cam-lang', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thang-cam-lang', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'thang-cam-lang';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thang-cam-lang', 'Tháng Câm Lặng', 'Bulan Henti Bicara', 'tháng câm lặng bulan henti bicara đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'Hút Thuốc Phía Sau Siêu Thị Cùng Em (Hiên Sau Siêu Thị, Muộn Phiền Bay Đi)', 'Smoking Behind The Supermarket With You', 'https://phimimg.com/uploads/movies/20260711/hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di-thumb.webp', 'https://phimimg.com/uploads/movies/20260711/hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di-poster.webp', '<p>Gặp gỡ Sasaki, một nhân viên văn phòng trung niên làm việc quá sức. Ngày của anh chỉ toàn là những công việc nhàm chán, tẻ nhạt ở công ty. Hút thuốc giúp anh giảm bớt căng thẳng, nhưng ngoài ra, điểm sáng duy nhất trong ngày của anh là khi anh đến siêu thị gần đó và nhìn thấy khuôn mặt tươi cười của Yamada. Vì vậy, một buổi tối sau một ngày mệt mỏi nữa, anh đến siêu thị và phát hiện ra mình đã lỡ ca làm việc của Yamada. Chán nản, anh quyết định đi tìm khu vực hút thuốc nhưng lại không tìm thấy. Ngay khi anh chuẩn bị rời đi, một cô gái mặc áo khoác da kiểu biker tên là Tayama rủ anh đến một khu vực hút thuốc bí mật!</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 513, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"佐藤拓也","avatar":"https://image.tmdb.org/t/p/w185/xZgoTs6DOSneHkoOWL751pQzLru.jpg"},{"name":"星希成奏","avatar":"https://image.tmdb.org/t/p/w185/Ajo0KjBdtYPH6FLjxeexHEStk3T.jpg"},{"name":"行成とあ","avatar":"https://image.tmdb.org/t/p/w185/aR11JLaHVeTM1RgGULsU9zIiaZs.jpg"},{"name":"豊口めぐみ","avatar":"https://image.tmdb.org/t/p/w185/qrnzkvoaODEplqhtkcyDgUa3Qtp.jpg"},{"name":"安田陸矢","avatar":"https://image.tmdb.org/t/p/w185/eZCxGqkEibJkUEhLO9Xp4zNDlY3.jpg"},{"name":"日笠陽子","avatar":"https://image.tmdb.org/t/p/w185/mP3bj0s1gqJ6tCKFLhu4b1CkJj7.jpg"},{"name":"高橋伸也","avatar":"https://image.tmdb.org/t/p/w185/19DN4yrD9c3E7BWthVEqvwhQNdb.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["在超市后门吸烟的二人","躲在超市后门抽烟的两人","躲在超市後門抽菸的兩人","Super no Ura de Yani Suu Futari","Super no Ura de Yani Sū Futari","Behind the supermarket, smoking with you.","スーパーの裏でヤニ吸うふたり"]', '{"id":"296286","type":"tv","vote_average":9.3,"vote_count":10,"logo_url":"https://image.tmdb.org/t/p/original/nSCJwzam7L8ulyqGiFX5br7KlWd.png","backdrop_url":"https://image.tmdb.org/t/p/original/gkmE41A5ev5M299hLgX3JrWAM16.jpg","poster_url":"https://image.tmdb.org/t/p/original/n8ZvVflzDKN3vXe85F1KdC5CFf9.jpg","aspect_ratio":3.428}', '{"id":"tt37614297","vote_average":null}', 
  1789378914659, '2026-09-11T15:56:51.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hut-thuoc-phia-sau-sieu-thi-cung-em-hien-sau-sieu-thi-muon-phien-bay-di', 'Hút Thuốc Phía Sau Siêu Thị Cùng Em (Hiên Sau Siêu Thị, Muộn Phiền Bay Đi)', 'Smoking Behind The Supermarket With You', 'hút thuốc phía sau siêu thị cùng em (hiên sau siêu thị, muộn phiền bay đi) smoking behind the supermarket with you 佐藤拓也 星希成奏 行成とあ 豊口めぐみ 安田陸矢 日笠陽子 高橋伸也', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nguoi-yeu-xui-xeo', 'Người Yêu Xui Xẻo', 'Unlucky Bae', 'https://phimimg.com/uploads/movies/20260808/nguoi-yeu-xui-xeo-thumb.webp', 'https://phimimg.com/uploads/movies/20260808/nguoi-yeu-xui-xeo-poster.webp', '<p>Bị phản bội, Rin gieo lời nguyền để trả thù tình cũ. Nhưng khi lời nguyền ứng nghiệm lên người bạn cùng lớp, cậu phải tìm cách hóa giải mà không để lộ dòng dõi bí mật của mình.</p>', 
  'Tập 6', 10, 'series', 'ongoing', 309, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ณัฐพัชร์ นิมจิรวัฒน์","avatar":"https://image.tmdb.org/t/p/w185/rltyvbPYVI9ahRi5FNsqou8iAaw.jpg"},{"name":"Tupthong Suwanrakanont","avatar":"https://image.tmdb.org/t/p/w185/g2kjW0TUS8XSmsK9cMoR5BiGAVp.jpg"},{"name":"ณภัทร พัชรชวลิต","avatar":"https://image.tmdb.org/t/p/w185/2smMFUwHxQQoVsNGZaun14JmO00.jpg"},{"name":"พนัชษ์กรณ์ ฤกษ์ศิริอารี","avatar":"https://image.tmdb.org/t/p/w185/bljimxDOQ8JDn4bYWG8VcDMZLGB.jpg"},{"name":"พรีม ณัฐณิชา แสงมณี","avatar":"https://image.tmdb.org/t/p/w185/AnuNuqP8krS6i9xwqLh1fOZsUCj.jpg"},{"name":"ตีระณัฐ กิตติสัทโธ","avatar":"https://image.tmdb.org/t/p/w185/zxQk7fczty5PGb7snCmQRWD1hFk.jpg"},{"name":"นมัสการ ตรังคสมบัติ","avatar":"https://image.tmdb.org/t/p/w185/326GkFpRAZmbAEi5oKu8UVChI1H.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["倒霉的男友","倒霉蛋宝贝","จุดจีบสายมู"]', '{"id":"306598","type":"tv","vote_average":8,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/u2ZqODtwTsz9g26JtLsdLgcMlkL.png","backdrop_url":"https://image.tmdb.org/t/p/original/opFWidR2ITRQv6fjukb7hJk7xsi.jpg","poster_url":"https://image.tmdb.org/t/p/original/1jPxJWwPIEy6wmFt3444RjqSz6X.jpg","aspect_ratio":4.522}', '{"id":"tt39029359","vote_average":null}', 
  1789378914658, '2026-09-11T15:55:19.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-yeu-xui-xeo', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-yeu-xui-xeo', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-yeu-xui-xeo', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-yeu-xui-xeo', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-yeu-xui-xeo', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-yeu-xui-xeo', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'nguoi-yeu-xui-xeo';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nguoi-yeu-xui-xeo', 'Người Yêu Xui Xẻo', 'Unlucky Bae', 'người yêu xui xẻo unlucky bae ณัฐพัชร์ นิมจิรวัฒน์ tupthong suwanrakanont ณภัทร พัชรชวลิต พนัชษ์กรณ์ ฤกษ์ศิริอารี พรีม ณัฐณิชา แสงมณี ตีระณัฐ กิตติสัทโธ นมัสการ ตรังคสมบัติ', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ngay-he', 'Ngày Hè', 'Summertime', 'https://phimimg.com/uploads/movies/20260828/ngay-he-thumb.webp', 'https://phimimg.com/uploads/movies/20260828/ngay-he-poster.webp', '<p>Yeo Eun Ho và Cha Do Hyeon là đôi bạn thân suốt 19 năm, nhưng Eun Ho không hề biết Do Hyeon luôn thầm yêu mình một cách mãnh liệt. Kế hoạch dần chiếm lấy trái tim bạn thân của Do Hyeon bị xáo trộn bởi sự xuất hiện của học sinh mới Kwon Yi Hyeon, buộc cậu phải tìm cách giữ Eun Ho ở bên cạnh mình.</p>', 
  'Tập 6', 10, 'series', 'ongoing', 236, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"김도민","avatar":"https://image.tmdb.org/t/p/w185/waMXcbM9XrAiJckq6KE9L6qEgHD.jpg"},{"name":"성인호","avatar":"https://image.tmdb.org/t/p/w185/ku7sEy6RpPDtXsHaLeGy2v1HS8X.jpg"},{"name":"임영민","avatar":"https://image.tmdb.org/t/p/w185/m2xmZ2aUSXGmPieT61VPMKlt2e9.jpg"},{"name":"한종규","avatar":"https://image.tmdb.org/t/p/w185/ilFXpWUdO90cCxybHHeaLE8o3K3.jpg"},{"name":"박현지","avatar":"https://image.tmdb.org/t/p/w185/f6S7DR9BHpwIolRXMAufZWlPnVd.jpg"},{"name":"유현태","avatar":"https://image.tmdb.org/t/p/w185/evAy9pyimonVyafCotGm1RSld5Z.jpg"},{"name":"김민태","avatar":"https://image.tmdb.org/t/p/w185/sCvqHfwlN960WGASVTpVeNlx4Tj.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["下节气","夏节期","夏季时光","우리의 하루","夏季時光","Summer Season","하절기"]', '{"id":"321984","type":"tv","vote_average":7,"vote_count":1,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/mcwzXqLswl7gjmJTXG2Z0JcuhfE.jpg","poster_url":"https://image.tmdb.org/t/p/original/fSilsCC2dtqVx1GBzseqHkBvI5d.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914657, '2026-09-11T15:54:38.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngay-he', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngay-he', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ngay-he', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'ngay-he';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ngay-he', 'Ngày Hè', 'Summertime', 'ngày hè summertime 김도민 성인호 임영민 한종규 박현지 유현태 김민태', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'muon-dam-giang-son-cho-ta-khai-pha', 'Muôn Dặm Giang Sơn Chờ Ta Khai Phá', 'Braving The Famine With My Wife', 'https://phimimg.com/uploads/movies/20260831/muon-dam-giang-son-cho-ta-khai-pha-thumb.webp', 'https://phimimg.com/uploads/movies/20260831/muon-dam-giang-son-cho-ta-khai-pha-poster.webp', '<p>Triệu Đông - tiên tôn một lòng cầu đạo, lạnh nhạt với tình duyên thế tục, khiến tiên quyến đâm sau lưng, đoạ kiếp trong nỗi tiếc hận. Sau khi trùng sinh, hắn nhập vào thân xác một tên lưu manh cũng tên Triệu Đông. Trải qua hai kiếp tiên phàm, hắn thấu hiểu đạo lý "mọi việc đều phải có chừng mực", quyết định gắn bó với chốn phàm trần, bù đắp những tiếc nuối trước kia và một lần nữa chứng đắc đại đạo.</p>', 
  'Hoàn Tất (24/24)', 24, 'series', 'completed', 375, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"常喆宽","avatar":"https://image.tmdb.org/t/p/w185/icjeSccoqk1dkeUjCp8KxhHDEcZ.jpg"},{"name":"潘铭允","avatar":"https://image.tmdb.org/t/p/w185/iio5CVmEGN2ia0oMgE1WExgHxo8.jpg"},{"name":"钱思怡","avatar":"https://image.tmdb.org/t/p/w185/9hXdMAYEzmWFm0PegmKp0YIc4tW.jpg"},{"name":"云歌","avatar":"https://image.tmdb.org/t/p/w185/rGDPENvB1M6zHGZrqWjce8fhkrD.jpg"},{"name":"席乐","avatar":"https://image.tmdb.org/t/p/w185/lCVxs04Vt4Ugmh7nilpwwkp3zsy.jpg"},{"name":"欧若拉","avatar":"https://image.tmdb.org/t/p/w185/jzwavRFxZB6uTKL1kj42BgWs2Zo.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["Wan Li Jiang Shan Dai Wo Geng","万里江山待我耕"]', '{"id":"332800","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/1W9J3EdxzmGEv7C2fVu8QfAu4w9.jpg","poster_url":"https://image.tmdb.org/t/p/original/ca6GzFWpU26GUBfztvBT9DZ4enI.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914656, '2026-09-11T15:54:13.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-dam-giang-son-cho-ta-khai-pha', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-dam-giang-son-cho-ta-khai-pha', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-dam-giang-son-cho-ta-khai-pha', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-dam-giang-son-cho-ta-khai-pha', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('muon-dam-giang-son-cho-ta-khai-pha', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'muon-dam-giang-son-cho-ta-khai-pha';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('muon-dam-giang-son-cho-ta-khai-pha', 'Muôn Dặm Giang Sơn Chờ Ta Khai Phá', 'Braving The Famine With My Wife', 'muôn dặm giang sơn chờ ta khai phá braving the famine with my wife 常喆宽 潘铭允 钱思怡 云歌 席乐 欧若拉', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'lieu-thuoc', 'Liều Thuốc', 'The Fix', 'https://phimimg.com/uploads/movies/20260911/lieu-thuoc-thumb.webp', 'https://phimimg.com/uploads/movies/20260911/lieu-thuoc-poster.webp', '<p>Khi một nữ người mẫu gặp nhiều rắc rối sử dụng một loại chất kích thích mới tại một bữa tiệc, cô phải chịu đựng một sự biến đổi thể xác đầy kinh hoàng. Bị giới chức trách lẫn một băng nhóm tội phạm nguy hiểm ráo riết truy đuổi, cô nỗ lực tìm kiếm phương thuốc giải nhằm đảo ngược những tác động này, để rồi bàng hoàng phát hiện ra rằng những đột biến gen trong cơ thể mình có thể chính là chìa khóa cứu sống cả nhân loại.</p>', 
  'Full', 1, 'single', 'completed', 69, 2024, 
  'Vietsub', 'FHD', 'Nam Phi', 0, 
  '[{"name":"Grace Van Dien","avatar":"https://image.tmdb.org/t/p/w185/1yKimLonnxA4Fu1a7WW0thxeBeT.jpg"},{"name":"Daniel Sharman","avatar":"https://image.tmdb.org/t/p/w185/8ESi3BUMWmFlxs1LmybHd4PF76j.jpg"},{"name":"Keenan Arrison","avatar":"https://image.tmdb.org/t/p/w185/945JkSeqpymlqvPSgmT4Tq3mMFv.jpg"},{"name":"Tina Redman","avatar":"https://image.tmdb.org/t/p/w185/rxnMSKpyritDHj6juahpUJ1mMqW.jpg"},{"name":"Robyn Rossouw","avatar":"https://image.tmdb.org/t/p/w185/n4rWWnQFibdL7JjBbbziRITCgmW.jpg"},{"name":"Tafara Nyatsanza","avatar":""},{"name":"Nicole Fortuin","avatar":"https://image.tmdb.org/t/p/w185/6YxW3hZANTmhrESXIdFtqvfIjtq.jpg"},{"name":"Clancy Brown","avatar":"https://image.tmdb.org/t/p/w185/1JeBRNG7VS7r64V9lOvej9bZXW5.jpg"},{"name":"Ernest St.Clair","avatar":"https://image.tmdb.org/t/p/w185/jp33FRvJHXntoLAMmNZaBEGocAh.jpg"},{"name":"Christian Bennett","avatar":"https://image.tmdb.org/t/p/w185/s4uzrtmmbJmHxJmqCG4yY3tbWr8.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["修复","修复2024","变异天使","The Fix"]', '{"id":"931940","type":"movie","vote_average":5.2,"vote_count":76,"logo_url":"https://image.tmdb.org/t/p/original/r1G8AwzsazNRrMiLcldyVrwpnOa.png","backdrop_url":"https://image.tmdb.org/t/p/original/xJSksWLU7nGB6ml2JzjioxD6g07.jpg","poster_url":"https://image.tmdb.org/t/p/original/vY7bY2xZymoIOti4WM5K29OMzCS.jpg","aspect_ratio":6.398}', '{"id":"tt10284944","vote_average":4.7}', 
  1789378914655, '2026-09-11T15:52:55.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lieu-thuoc', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lieu-thuoc', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lieu-thuoc', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lieu-thuoc', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lieu-thuoc', 'chinh-kich');
DELETE FROM movies_fts WHERE slug = 'lieu-thuoc';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('lieu-thuoc', 'Liều Thuốc', 'The Fix', 'liều thuốc the fix grace van dien daniel sharman keenan arrison tina redman robyn rossouw tafara nyatsanza nicole fortuin clancy brown ernest st.clair christian bennett', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'Hercules: Cuộc Chiến Thành Thrace / Huyền Thoại Hercules', 'Hercules', 'https://phimimg.com/uploads/movies/20260911/hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules-thumb.webp', 'https://phimimg.com/uploads/movies/20260911/hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules-poster.webp', '<p>Dựa trên bộ truyện tranh “Hercules: The Thracian Wars”, nội dung phim sẽ mang câu chuyện thần thoại về “Vị thần sức mạnh” lồng vào bối cảnh một thế giới trần tục nơi mà các năng lực siêu nhiên thần thánh không hề tồn tại. Khác với các phiên bản Hercules trước, chuyện phim lần này không nói về sự tích ra đời của huyền thoại Hercules hay "12 kỳ công của Hercules" mà xảy ra rất lâu sau đó... Bị ám ảnh bởi một tội lỗi đã gây ra trong quá khứ, Hercules giờ đây trở thành một “tay lính đánh thuê” và cùng với năm bạn đồng hành trung thành, anh phiêu lưu khắp Hy Lạp, bán sức mạnh của mình để đổi lấy vàng và dùng danh tiếng lẫy lừng khiến kẻ thù khiếp sợ. Nhưng khi vị vua nhân từ của xứ Thrace và cháu gái ông nhờ đến sự giúp đỡ của Hercules để đánh bại một tên chúa tể tàn bạo khát máu, anh nhận ra rằng một khi thực thi công lý và giành lấy vinh quang, anh sẽ trở lại thành người anh hùng năm xưa, trở lại thành Hercules trong thần thoại.</p>', 
  'Full', 1, 'single', 'completed', 183, 2014, 
  'Vietsub', 'FHD', 'Âu Mỹ', 1, 
  '[{"name":"Dwayne Johnson","avatar":"https://image.tmdb.org/t/p/w185/5QApZVV8FUFlVxQpIK3Ew6cqotq.jpg"},{"name":"Ian McShane","avatar":"https://image.tmdb.org/t/p/w185/rteBJYNgD1yGsHg2HGZAIrYHz1t.jpg"},{"name":"John Hurt","avatar":"https://image.tmdb.org/t/p/w185/bjNSzt1d7uK3q5PbtFXUJrRt4qg.jpg"},{"name":"Rufus Sewell","avatar":"https://image.tmdb.org/t/p/w185/yc2EWyg45GO03YqDttaEhjvegiE.jpg"},{"name":"Aksel Hennie","avatar":"https://image.tmdb.org/t/p/w185/sceuNjVXtsHOS3cn0MsLfZRkAQx.jpg"},{"name":"Ingrid Bolsø Berdal","avatar":"https://image.tmdb.org/t/p/w185/iv9RaskT1WronDXaTKh9mI5KNUn.jpg"},{"name":"Reece Ritchie","avatar":"https://image.tmdb.org/t/p/w185/3HNjAIxn2rLoUH6GswNPtJFoHle.jpg"},{"name":"Joseph Fiennes","avatar":"https://image.tmdb.org/t/p/w185/fcqZXeEyL6z5vkidPtsMu99JtpB.jpg"},{"name":"Tobias Santelmann","avatar":"https://image.tmdb.org/t/p/w185/wDsLQNsG4WWvwE6pwtV0FhL5JZt.jpg"},{"name":"Peter Mullan","avatar":"https://image.tmdb.org/t/p/w185/dvu5PWJK6Vv4xnYyMzdMvH73Laj.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Hercules: The Thracian Wars","Hercules Extended","大力神：色雷斯之战","赫拉克勒斯：色雷斯的战争","海格力斯：色雷斯之战","大力士","大力神","Gerakl","Hercules - EC","헤라클레스","Hércules 2014","Hércules (2014)","Hercules"]', '{"id":"184315","type":"movie","vote_average":5.8,"vote_count":4433,"logo_url":"https://image.tmdb.org/t/p/original/5weXahrEW9Ht527nXDeiTPN0wYA.png","backdrop_url":"https://image.tmdb.org/t/p/original/nl18gyzai02Tu99VkURu7kCFrR8.jpg","poster_url":"https://image.tmdb.org/t/p/original/sKNIwY6UENCJ36FvYvnBW3Vdzt7.jpg","aspect_ratio":3.099}', '{"id":"tt1267297","vote_average":6}', 
  1789378914654, '2026-09-11T15:49:45.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'le_au_my');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'phim_chieu_rap');
DELETE FROM movies_fts WHERE slug = 'hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hercules-cuoc-chien-thanh-thrace-huyen-thoai-hercules', 'Hercules: Cuộc Chiến Thành Thrace / Huyền Thoại Hercules', 'Hercules', 'hercules: cuộc chiến thành thrace / huyền thoại hercules hercules dwayne johnson ian mcshane john hurt rufus sewell aksel hennie ingrid bolsø berdal reece ritchie joseph fiennes tobias santelmann peter mullan', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hay-la-nguoi-choi-thu-hai-cua-toi-hay-lam-nguoi-choi-so-hai-cua-anh-ban-uncut', 'Hãy Là Người Chơi Thứ Hai Của Tôi / Hãy Làm Người Chơi Số Hai Của Anh (Bản Uncut)', 'Be My Player Two (Uncut ver.)', 'https://phimimg.com/uploads/movies/20260718/hay-la-nguoi-choi-thu-hai-cua-toi-thumb.webp', 'https://phimimg.com/uploads/movies/20260718/hay-la-nguoi-choi-thu-hai-cua-toi-poster.webp', '<p>Đây là một bộ phim hài lãng mạn vô cùng chữa lành. Chàng streamer game siêu nổi tiếng nhưng độc miệng tên "Three" bất ngờ thua trước một người chơi mới thanh thuần tên "Soh" ngay trên sóng livestream. Chuyện vốn dĩ bắt đầu từ một cuộc đi "Tìm kiếm đối thủ cạnh tranh" lại bất ngờ biến thành hành trình "Tình cờ gặp gỡ tình yêu". Người tưởng chừng như chỉ biết "quấy rối tinh thần" lại chính là người "làm trái tim rung động". Trên con đường theo đuổi ước mơ eSports, họ không chỉ phải đối mặt với thử thách từ các trận đấu game mà còn phải học cách đối diện với thứ tình cảm không thể dễ dàng nhấn nút "khởi động lại".</p>', 
  'Tập 9', 10, 'series', 'ongoing', 423, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"รชต พิเชฐโชติ","avatar":"https://image.tmdb.org/t/p/w185/jV4dwoSzVXonmRPYJT6Aj7zEkdH.jpg"},{"name":"หัสณัฐ พินิวัตร์","avatar":"https://image.tmdb.org/t/p/w185/fxaSUnygIsZpN10hZ1VUZBPFWB3.jpg"},{"name":"โชติพัฒน์ สุทัศนทรวง","avatar":"https://image.tmdb.org/t/p/w185/7llzvXPCZ7KAiGz2hDh7JAQrA1c.jpg"},{"name":"ณัฐสกรรจ์ ไชยโรจน์","avatar":"https://image.tmdb.org/t/p/w185/8weSwPrXmwrT7QZEZdqfSoepfZi.jpg"},{"name":"วิชญาพร จิรเวชสุนทรกุล","avatar":"https://image.tmdb.org/t/p/w185/yfRvBw9spz2hfTbztPXiRTarrVP.jpg"},{"name":"เบนจามิน กรีนเวลล์","avatar":"https://image.tmdb.org/t/p/w185/9HKwBLO7yAIzedWyMmtoH8ATiFk.jpg"},{"name":"สรธร เฉลิมลาภสมบัติ","avatar":"https://image.tmdb.org/t/p/w185/oy1tWgRL1PMUHAT9sc1Y9sCh3pC.jpg"},{"name":"วรัชต์ธิปต์ กิตติสิริไพศาล","avatar":"https://image.tmdb.org/t/p/w185/v6fu8ekytDg6vursoHYMjDSIJLP.jpg"},{"name":"เฉลิมพล ทิฆัมพรธีรวงศ์","avatar":"https://image.tmdb.org/t/p/w185/60bNnrzi0rDHYgha5tcOp56k3NQ.jpg"},{"name":"Newton Waiyakorn Wongkhakaew","avatar":"https://image.tmdb.org/t/p/w185/d9cCYyanJJWs1Ui3p740E5uQWDV.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["So So Lam Thi","ซอโซ่ล่ามธีร์"]', '{"id":"304871","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/3GCY8Caykp0zKyQ2YUXps7tj3ru.png","backdrop_url":"https://image.tmdb.org/t/p/original/mycJbvCiQgbbWBHjREiNiYDUxaf.jpg","poster_url":"https://image.tmdb.org/t/p/original/xEjE8HpI3cZl5zL2qXXYBb611kV.jpg","aspect_ratio":1.856}', '{"id":"tt38856819","vote_average":null}', 
  1789378914653, '2026-09-11T15:47:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hay-la-nguoi-choi-thu-hai-cua-toi-hay-lam-nguoi-choi-so-hai-cua-anh-ban-uncut', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hay-la-nguoi-choi-thu-hai-cua-toi-hay-lam-nguoi-choi-so-hai-cua-anh-ban-uncut', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hay-la-nguoi-choi-thu-hai-cua-toi-hay-lam-nguoi-choi-so-hai-cua-anh-ban-uncut', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hay-la-nguoi-choi-thu-hai-cua-toi-hay-lam-nguoi-choi-so-hai-cua-anh-ban-uncut', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'hay-la-nguoi-choi-thu-hai-cua-toi-hay-lam-nguoi-choi-so-hai-cua-anh-ban-uncut';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hay-la-nguoi-choi-thu-hai-cua-toi-hay-lam-nguoi-choi-so-hai-cua-anh-ban-uncut', 'Hãy Là Người Chơi Thứ Hai Của Tôi / Hãy Làm Người Chơi Số Hai Của Anh (Bản Uncut)', 'Be My Player Two (Uncut ver.)', 'hãy là người chơi thứ hai của tôi / hãy làm người chơi số hai của anh (bản uncut) be my player two (uncut ver.) รชต พิเชฐโชติ หัสณัฐ พินิวัตร์ โชติพัฒน์ สุทัศนทรวง ณัฐสกรรจ์ ไชยโรจน์ วิชญาพร จิรเวชสุนทรกุล เบนจามิน กรีนเวลล์ สรธร เฉลิมลาภสมบัติ วรัชต์ธิปต์ กิตติสิริไพศาล เฉลิมพล ทิฆัมพรธีรวงศ์ newton waiyakorn wongkhakaew', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dac-nhiem-tham-tu-wan-phan-2', 'Đặc Nhiệm Thám Tử Wan! (Phần 2)', 'Bungo Stray Dogs WAN! (Season 2)', 'https://phimimg.com/upload/vod/20260704-1/4330df27a090ee2e1646b6992baafb0a.jpg', 'https://phimimg.com/upload/vod/20260704-1/6eb74d23a4ec3b98fb035361a4daa840.jpg', '<p>Những ngày tháng bình yên của tác phẩm ăn khách đình đám Bungou Stray Dogs đã đến. Các nhân vật thuộc Cơ quan Thám tử Vũ trang và băng đảng Mafia Cảng giờ đây bỗng xuất hiện dưới hình dáng tí hon Chibi?! Với việc Atsushi và những người bạn trở nên vô cùng dễ thương, đây sẽ là một trải nghiệm hoàn toàn khác biệt so với nguyên tác — một bộ truyện tranh hài hước đầy dễ chịu và thư giãn!</p>', 
  'Tập 11', 12, 'hoathinh', 'ongoing', 362, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Bungo Stray Dogs Wan","Bungou Stray Dogs Wan!","文豪ストレイドッグス わん!"]', '{"id":"110837","type":"tv","vote_average":7.1,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/fbPlz08ZErjH1BEtVxeLd8EFRyu.png","backdrop_url":"https://image.tmdb.org/t/p/original/qODR3gZVdmkSeBfr17ph28rn0J0.jpg","poster_url":"https://image.tmdb.org/t/p/original/An6fdhHok5LwhTQoXdHkUJN3gkx.jpg","aspect_ratio":2.366}', '{"id":"tt13192574","vote_average":7.6}', 
  1789378914652, '2026-09-11T15:45:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dac-nhiem-tham-tu-wan-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dac-nhiem-tham-tu-wan-phan-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dac-nhiem-tham-tu-wan-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dac-nhiem-tham-tu-wan-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dac-nhiem-tham-tu-wan-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dac-nhiem-tham-tu-wan-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'dac-nhiem-tham-tu-wan-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dac-nhiem-tham-tu-wan-phan-2', 'Đặc Nhiệm Thám Tử Wan! (Phần 2)', 'Bungo Stray Dogs WAN! (Season 2)', 'đặc nhiệm thám tử wan! (phần 2) bungo stray dogs wan! (season 2) ', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dai-chua-te-3d', 'Đại Chúa Tể 3D', 'The Great Ruler', 'https://phimimg.com/upload/vod/20260415-1/708b632451a627340ce179f85e88fd3e.jpg', 'https://phimimg.com/upload/vod/20260415-1/b5d7394aa49cde793f86f5d9163ced85.jpg', '<p>Đại Chúa Tể 3D mở ra một thế giới huyền ảo nơi vô số chủng tộc cùng tồn tại giữa những vùng trời rộng lớn giao thoa, tạo nên một bức tranh vừa tráng lệ vừa hiểm nguy. Câu chuyện xoay quanh Mục Trần, chàng thiếu niên đến từ hạ giới mang trong mình khát vọng vượt qua số phận để bước vào hàng ngũ kiếm hiệp tối thượng. Trên con đường tu luyện, cậu phải đối mặt với những thử thách khắc nghiệt, từ linh thú cổ đại, thế lực tà ác cho đến những âm mưu giành đoạt quyền năng giữa các thế giới. Mỗi trận chiến, mỗi bước đi đều khiến Mục Trần trưởng thành hơn, thấu hiểu ý nghĩa của sức mạnh và lòng kiên định. Giữa khung cảnh kỳ vĩ được tái hiện sống động qua kỹ xảo hoạt hình 3D, người xem như lạc vào cõi tiên giới rực rỡ, nơi lòng can đảm và niềm tin trở thành ngọn lửa dẫn lối cho những linh hồn không chịu khuất phục.</p>', 
  'Tập 90', 104, 'hoathinh', 'ongoing', 427, 2023, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"孙郎朗","avatar":"https://image.tmdb.org/t/p/w185/rgTaSMMAW33F5DqFclVTvtBfpKS.jpg"},{"name":"李詩萌","avatar":"https://image.tmdb.org/t/p/w185/i7hKjBsuxiMHuj3v68yWhbLXNbi.jpg"},{"name":"江月","avatar":"https://image.tmdb.org/t/p/w185/pNgEmfdVW3Pcy5yK1mj6kVn9pMG.jpg"},{"name":"賀文瀟","avatar":"https://image.tmdb.org/t/p/w185/bPsFFEEFjTFwqmM8SWrkHloBdjH.jpg"},{"name":"张福正","avatar":"https://image.tmdb.org/t/p/w185/gB3NHNnG2WSC1SnjGQ36Z9qD8Rp.jpg"},{"name":"柳眞顏","avatar":"https://image.tmdb.org/t/p/w185/16uWKQ3x1a49GfSxp7ylzUWXBJB.jpg"},{"name":"劉琮","avatar":"https://image.tmdb.org/t/p/w185/wXl2Jxi9D2hj0DLoTzCGG1xf5jy.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["大主宰 年番","大主宰 3D","大主宰动画","大主宰3D","Da Zhuzai","大主宰年番2","The Great Ruler (3D)","大主宰","Da Zhu Zai Nian Fan","The Grand Lord","Year of the Great Master","The Great Ruler","Đại Chúa Tể 3D"]', '{"id":"226045","type":"tv","vote_average":9.1,"vote_count":8,"logo_url":"https://image.tmdb.org/t/p/original/zbiEUqY2gqtSn4FqV1irb1RXo7m.png","backdrop_url":"https://image.tmdb.org/t/p/original/geXR29xfEgnkQJbm5TIpSebqzSo.jpg","poster_url":"https://image.tmdb.org/t/p/original/6eI62O2pqkvwqjhLGd7EOHIPjq7.jpg","aspect_ratio":4.103}', '{"id":"tt27497198","vote_average":null}', 
  1789378914651, '2026-09-11T15:45:39.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dai-chua-te-3d', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'dai-chua-te-3d';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dai-chua-te-3d', 'Đại Chúa Tể 3D', 'The Great Ruler', 'đại chúa tể 3d the great ruler 孙郎朗 李詩萌 江月 賀文瀟 张福正 柳眞顏 劉琮', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'duoi-lan-lua-dan', 'Dưới Làn Lửa Đạn', 'Under Fire', 'https://phimimg.com/uploads/movies/20260911/duoi-lan-lua-dan-thumb.webp', 'https://phimimg.com/uploads/movies/20260911/duoi-lan-lua-dan-poster.webp', '<p>Hai đặc vụ ngầm hay cãi vã đóng giả làm kẻ buôn ma túy đối thủ phải hợp tác để sống sót sau một tay bắn tỉa không ngừng nghỉ và bảo vệ một chiếc cặp chứa các tài liệu tuyệt mật.</p>', 
  'Full', 1, 'single', 'completed', 50, 2025, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Dylan Sprouse","avatar":"https://image.tmdb.org/t/p/w185/zy7ueLZtJwiRFdYkDlzjQhbA6SW.jpg"},{"name":"Mason Gooding","avatar":"https://image.tmdb.org/t/p/w185/bmlry1xqBzNgv8Chm783ss93Cvg.jpg"},{"name":"Odette Annable","avatar":"https://image.tmdb.org/t/p/w185/zbEaTdg8a7USjfH5LxaU2U3W6Zb.jpg"},{"name":"Bayardo De Murguia","avatar":"https://image.tmdb.org/t/p/w185/lk9A9gi6l1jqPh6gA52NleRil3q.jpg"},{"name":"Emilio Rivera","avatar":"https://image.tmdb.org/t/p/w185/pHgPJSoZVgmt4FQ8zyMVqwovpRb.jpg"},{"name":"Declan Michael Laird","avatar":"https://image.tmdb.org/t/p/w185/bCo8DZIeQfbEolIJ4RpUt61GdO2.jpg"},{"name":"Austin North","avatar":"https://image.tmdb.org/t/p/w185/AuamGbm12flhZ0K95hhdyhYAbBS.jpg"},{"name":"Lorena Abreu","avatar":"https://image.tmdb.org/t/p/w185/dLX84nYdQqvXnGALiiU9gHdwzlg.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Sharpshooter","炮火之下","Debaixo de Fogo","Under Fire"]', '{"id":"1511556","type":"movie","vote_average":6.5,"vote_count":51,"logo_url":"https://image.tmdb.org/t/p/original/q5t0yQe77c35sXbfo2Xiies5YPO.png","backdrop_url":"https://image.tmdb.org/t/p/original/oAFd9y3myakKyTAwcv0YIpxt08Z.jpg","poster_url":"https://image.tmdb.org/t/p/original/dIQcDDuDPewwELfhmYMnt25AyZ6.jpg","aspect_ratio":0.941}', '{"id":"tt32212611","vote_average":4.7}', 
  1789378914650, '2026-09-11T15:44:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoi-lan-lua-dan', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoi-lan-lua-dan', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoi-lan-lua-dan', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoi-lan-lua-dan', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoi-lan-lua-dan', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'duoi-lan-lua-dan';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('duoi-lan-lua-dan', 'Dưới Làn Lửa Đạn', 'Under Fire', 'dưới làn lửa đạn under fire dylan sprouse mason gooding odette annable bayardo de murguia emilio rivera declan michael laird austin north lorena abreu', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'chuyen-tinh-dao-thien-duong', 'Chuyện Tình Đảo Thiên Đường', 'Treasure Lovers', 'null', 'https://phimimg.com/uploads/movies/20260827/chuyen-tinh-dao-thien-duong-poster.webp', '<p>Một thuyền trưởng mang lời nguyền và một YouTuber bỏ trốn cùng chạy đua tìm kiếm Mặt nạ Hồng ngọc Đen – cổ vật huyền thoại có thể ban một điều ước của thần biển.</p>', 
  'Tập 6', 17, 'series', 'ongoing', 193, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"พาย รินรดา แก้วบัวสาย","avatar":"https://image.tmdb.org/t/p/w185/7HIn9glTSE5RXmI3qqfC06Uo1JB.jpg"},{"name":"วชิรวิชญ์ อรัญธนวงศ์","avatar":"https://image.tmdb.org/t/p/w185/f56RHtAKa31opj17YJ1Nmz8WRKm.jpg"},{"name":"Enjoy Thidarut Pruethong","avatar":"https://image.tmdb.org/t/p/w185/aAkokIChwUtdToSs3vfKo67VCdh.jpg"},{"name":"ฟลุ๊คจ์ พงศภัทร์ กันคำ","avatar":"https://image.tmdb.org/t/p/w185/s3Jf2yanRMAZpEsBEf9m5H0RjEt.jpg"},{"name":"ภูธฤทธิ์ พรหมบันดาล","avatar":"https://image.tmdb.org/t/p/w185/10Yk8WpgqKMVG9YizwlINinLw3P.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["อุบัติรักเกาะสวรรค์"]', '{"id":"277248","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914649, '2026-09-11T15:43:33.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-tinh-dao-thien-duong', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-tinh-dao-thien-duong', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-tinh-dao-thien-duong', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('chuyen-tinh-dao-thien-duong', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'chuyen-tinh-dao-thien-duong';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('chuyen-tinh-dao-thien-duong', 'Chuyện Tình Đảo Thiên Đường', 'Treasure Lovers', 'chuyện tình đảo thiên đường treasure lovers พาย รินรดา แก้วบัวสาย วชิรวิชญ์ อรัญธนวงศ์ enjoy thidarut pruethong ฟลุ๊คจ์ พงศภัทร์ กันคำ ภูธฤทธิ์ พรหมบันดาล', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'co-meo-nghien-thuoc-la', 'Cô Mèo Nghiện Thuốc Lá', 'Chainsmoker Cat', 'https://phimimg.com/upload/vod/20260704-1/6c5f0e9b16af21b8611eebd1a11199d9.jpg', 'https://phimimg.com/upload/vod/20260704-1/81bc916a371d97829898f3fac118381e.jpg', '<p>Cô gái mèo Yani chật vật trả tiền thuê nhà, giữ việc làm và thỏa mãn cơn nghiện thuốc lá. Khi người thân ngày càng lo lắng, cô buộc phải suy nghĩ lại về tương lai của mình.</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 419, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"夏吉ゆうこ","avatar":"https://image.tmdb.org/t/p/w185/62JhZDG70JAzht71e1B0Y7Ny14r.jpg"},{"name":"松岡美里","avatar":"https://image.tmdb.org/t/p/w185/zSB8zgGwFGFq2EL3cWobQifsIXt.jpg"},{"name":"船戸ゆり絵","avatar":"https://image.tmdb.org/t/p/w185/4BLM2Ke95n83NEDtIBu0Nrv515S.jpg"},{"name":"清水彩香","avatar":"https://image.tmdb.org/t/p/w185/wuowat2waVkQOm14oO0gjx7QJt9.jpg"},{"name":"井澤詩織","avatar":"https://image.tmdb.org/t/p/w185/f9V38OeDvRGevWuKc4dN6LB62TH.jpg"},{"name":"明智璃子","avatar":"https://image.tmdb.org/t/p/w185/kKRgzjXnlY0OzcqIW1mv71syCiq.jpg"},{"name":"稲田徹","avatar":"https://image.tmdb.org/t/p/w185/e8qQL1NKTHP8eOsZmV5LCkdHS9T.jpg"},{"name":"本泉莉奈","avatar":"https://image.tmdb.org/t/p/w185/5p8wWjqrBHTkOPC5txO1eUXRBRY.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Yanineko","Yani Neko","ヤニねこ"]', '{"id":"312949","type":"tv","vote_average":7.5,"vote_count":4,"logo_url":"https://image.tmdb.org/t/p/original/4qcVV73bSReKJOuQAr5z4FtJnqM.png","backdrop_url":"https://image.tmdb.org/t/p/original/4ei68OmZr0XHnN82OjiV8GBqfyN.jpg","poster_url":"https://image.tmdb.org/t/p/original/8w0LehkzHX339DiTwE4LekniEjY.jpg","aspect_ratio":2.188}', '{"id":"tt39551330","vote_average":null}', 
  1789378914648, '2026-09-11T15:43:14.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-meo-nghien-thuoc-la', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-meo-nghien-thuoc-la', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-meo-nghien-thuoc-la', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-meo-nghien-thuoc-la', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-meo-nghien-thuoc-la', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-meo-nghien-thuoc-la', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-meo-nghien-thuoc-la', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'co-meo-nghien-thuoc-la';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('co-meo-nghien-thuoc-la', 'Cô Mèo Nghiện Thuốc Lá', 'Chainsmoker Cat', 'cô mèo nghiện thuốc lá chainsmoker cat 夏吉ゆうこ 松岡美里 船戸ゆり絵 清水彩香 井澤詩織 明智璃子 稲田徹 本泉莉奈', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thu-doan-hac-am-luat-su-thao-tung-cong-ly', 'Thủ Đoạn Hắc Ám: Luật Sư Thao Túng Công Lý', 'BLACK TRICK: The Lawyer Who Controls Justice', 'https://phimimg.com/uploads/movies/20260808/thu-doan-hac-am-luat-su-thao-tung-cong-ly-thumb.webp', 'https://phimimg.com/uploads/movies/20260808/thu-doan-hac-am-luat-su-thao-tung-cong-ly-poster.webp', '<p>Trong một xã hội bị định hình bởi internet và truyền thông đại chúng, một luật sư đấu tranh để minh oan cho những người bị vu khống bằng cách phơi bày sự thật đằng sau những lời dối trá được dàn dựng tinh vi.</p>', 
  'Tập 6', 11, 'series', 'ongoing', 306, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"GACKT","avatar":"https://image.tmdb.org/t/p/w185/87R2YalJVKhgAc6hjEBg5h7svSv.jpg"},{"name":"Shida Mirai","avatar":"https://image.tmdb.org/t/p/w185/wfacZjLuVkaiW32ZNZqdjfLFNxC.jpg"},{"name":"神尾楓珠","avatar":"https://image.tmdb.org/t/p/w185/rdyNqGsheaoBFMXD5cvZAh5p8rt.jpg"},{"name":"Tozuka Junki","avatar":"https://image.tmdb.org/t/p/w185/52FABffTBlqXQJclmiai4dudwQ1.jpg"},{"name":"竹財輝之助","avatar":"https://image.tmdb.org/t/p/w185/4amsd5uCwOfhwe62AMXTktnSnir.jpg"},{"name":"三浦真椰","avatar":"https://image.tmdb.org/t/p/w185/q6xCa6xQIHTAgmBFQ2Pr8phN8nw.jpg"},{"name":"春本ヒロ","avatar":"https://image.tmdb.org/t/p/w185/2yTCoX7OvsadRAqtWUhOS7jiDeh.jpg"},{"name":"月城かなと","avatar":"https://image.tmdb.org/t/p/w185/ywWXHKcQJltdKGOmDHSPGFrd3JZ.jpg"},{"name":"Kim Se-yong","avatar":""},{"name":"林泰文","avatar":"https://image.tmdb.org/t/p/w185/1kmG0vtAMYH83l2lpEJmrYofX6r.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Black Trick: Sabaki wo Ayatsuru Bengonin","블랙 트릭 ~재판을 조종하는 변호인~","Black Trick: The Lawyer Who Controls Justice","BLACK TRICK The Lawyer Who Controls Justice","ブラックトリック～裁きを操る弁護人～"]', '{"id":"322852","type":"tv","vote_average":8,"vote_count":2,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/9ErnIrrchLjcUkUVRcbcFhxrm61.jpg","poster_url":"https://image.tmdb.org/t/p/original/2Gb5DtgrUl43jv80On2hIHbtTvk.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914647, '2026-09-11T15:42:56.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-doan-hac-am-luat-su-thao-tung-cong-ly', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-doan-hac-am-luat-su-thao-tung-cong-ly', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-doan-hac-am-luat-su-thao-tung-cong-ly', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-doan-hac-am-luat-su-thao-tung-cong-ly', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'thu-doan-hac-am-luat-su-thao-tung-cong-ly';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thu-doan-hac-am-luat-su-thao-tung-cong-ly', 'Thủ Đoạn Hắc Ám: Luật Sư Thao Túng Công Lý', 'BLACK TRICK: The Lawyer Who Controls Justice', 'thủ đoạn hắc ám: luật sư thao túng công lý black trick: the lawyer who controls justice gackt shida mirai 神尾楓珠 tozuka junki 竹財輝之助 三浦真椰 春本ヒロ 月城かなと kim se-yong 林泰文', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bang-dream-yumemita', 'BanG Dream! YUME∞MITA', 'BanG Dream! YUME∞MITA', 'https://phimimg.com/upload/vod/20260704-1/29a589ed48f54ae69bc0e4f64aa5e4c7.jpg', 'https://phimimg.com/upload/vod/20260704-1/9983df3cc4dc24d7c3e450aa10f13f62.jpg', '<p>Bất ngờ được tập hợp lại với nhau, một nhóm thiếu nữ giờ đây chuẩn bị ra mắt với tư cách là ban nhạc ảo mang tên Mugendai Mewtype. Họ sở hữu cả tài năng lẫn cá tính riêng biệt, nhưng lại hoàn toàn không có chút khái niệm nào về việc phải biểu diễn như một thể thống nhất. Liệu họ có thể sống sót, chứ chưa nói đến việc vươn lên đỉnh cao trong thế giới âm nhạc đầy khắc nghiệt này?</p>', 
  'Tập 13', 13, 'hoathinh', 'ongoing', 317, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"仲町あられ","avatar":"https://image.tmdb.org/t/p/w185/4zOnJc4tnHUKfLlcSUcwySsbLty.jpg"},{"name":"宮永ののか","avatar":"https://image.tmdb.org/t/p/w185/naF4xrVdjxKQybFQ9srEjA3MQos.jpg"},{"name":"峰月律","avatar":"https://image.tmdb.org/t/p/w185/eaEbMuiO3Ct3hiVgMJ8gzOdkyys.jpg"},{"name":"藤都子","avatar":"https://image.tmdb.org/t/p/w185/gbhAvJUuM8iM7aDwvrJ0TKf8UDL.jpg"},{"name":"千石ユノ","avatar":"https://image.tmdb.org/t/p/w185/dZAicw2TcLiuzGSnBhR2G93SOh4.jpg"},{"name":"本渡楓","avatar":"https://image.tmdb.org/t/p/w185/11BcHnuJYrOZhIftgUiQqfm7TK6.jpg"},{"name":"丸岡和佳奈","avatar":"https://image.tmdb.org/t/p/w185/zXjLchp5JdobASNbU8WOU8hugsM.jpg"},{"name":"塚田悠衣","avatar":"https://image.tmdb.org/t/p/w185/hmbBCyhK8Nhq36YKgXNCNfEhVR6.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["BanG Dream! YUME∞MITA","BanG Dream! Yume Mita","BanG Dream YumeMita","バンドリ！ ゆめ∞みた"]', '{"id":"300112","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/w3cSXUgSyjm2rMnnLUORhcfCaB.png","backdrop_url":"https://image.tmdb.org/t/p/original/4ZqDVtJAG1NK7tWTUETlxE973Fl.jpg","poster_url":"https://image.tmdb.org/t/p/original/A9gtq78sfZaVLsARRB6c4VQDQkR.jpg","aspect_ratio":4.858}', '{"id":"tt38267477","vote_average":null}', 
  1789378914646, '2026-09-11T15:41:48.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bang-dream-yumemita', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bang-dream-yumemita', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bang-dream-yumemita', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bang-dream-yumemita', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bang-dream-yumemita', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'bang-dream-yumemita';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bang-dream-yumemita', 'BanG Dream! YUME∞MITA', 'BanG Dream! YUME∞MITA', 'bang dream! yume∞mita bang dream! yume∞mita 仲町あられ 宮永ののか 峰月律 藤都子 千石ユノ 本渡楓 丸岡和佳奈 塚田悠衣', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hen-em-ngay-nhat-thuc', 'Hẹn Em Ngày Nhật Thực', 'Meet Me at the Eclipse', 'https://phimimg.com/uploads/movies/20260910/hen-em-ngay-nhat-thuc-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/hen-em-ngay-nhat-thuc-poster.webp', '<p>Năm 1995, khi đang đứng trước một quyết định quan trọng của cuộc đời, Ân bất ngờ bị kéo trở lại quá khứ bởi những bức thư tình chưa từng trao tay. Hành trình tìm gặp Thiên - mối tình đầu từng khắc sâu trong tim - đưa cô về lại thôn xóm Trà Mây năm xưa, nơi những ký ức ngọt ngào xen lẫn tổn thương vẫn chưa hề nguôi ngoai. Trong khoảnh khắc định mệnh khi hai người bất ngờ chạm mặt, những bí mật bị che giấu suốt nhiều năm dần hé lộ, buộc Ân phải đối diện với sự thật và lựa chọn con đường cho riêng mình. “Hẹn Em Ngày Nhật Thực” là câu chuyện tình yêu đầy cảm xúc về những điều chưa nói, về tình yêu vĩnh cửu và câu hỏi day dứt: nếu còn cơ hội, ta có dám tin vào trái tim mình một lần nữa?</p>', 
  'Full', 1, 'single', 'completed', 327, 2026, 
  'Vietsub', 'FHD', 'Việt Nam', 1, 
  '[{"name":"Khương Lê","avatar":"https://image.tmdb.org/t/p/w185/sv8TRRtliPSVNoETd75b7VnJZco.jpg"},{"name":"Đoàn Thiên Ân","avatar":"https://image.tmdb.org/t/p/w185/w8OvygZHFKpyrjSCo5JiOoa1LNs.jpg"},{"name":"Thanh Sơn","avatar":"https://image.tmdb.org/t/p/w185/mEJ0mPUFNUG3D8F8o8FeVhFpUdB.jpg"},{"name":"Lê Khanh","avatar":"https://image.tmdb.org/t/p/w185/yzg3AsZs8gDCNaBEsBdZMSIcNlD.jpg"},{"name":"Nguyên Thảo","avatar":"https://image.tmdb.org/t/p/w185/ah4szPZfU0UE2FcebgzTsIDBai6.jpg"},{"name":"Huỳnh Phương","avatar":"https://image.tmdb.org/t/p/w185/4toGRqTbi9I0TMT565S7KLIY1kT.jpg"},{"name":"Hứa Vĩ Văn","avatar":"https://image.tmdb.org/t/p/w185/9oCj3FvgkFwkNFYeSkRyMDKOi05.jpg"},{"name":"Kim Xuân","avatar":"https://image.tmdb.org/t/p/w185/cFZ9utZC32ZqqdcLO9uSMwDWKoc.jpg"},{"name":"Hứa Minh Đạt","avatar":"https://image.tmdb.org/t/p/w185/2Vp47Z2LnQpQOBzDZpwNU84yRlv.jpg"},{"name":"Lâm Vỹ Dạ","avatar":"https://image.tmdb.org/t/p/w185/sEGuSqXiaeFk6FyXbnQfluHRIhP.jpg"}]', '[{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Hẹn Em Ngày Nhật Thực"]', '{"id":"1635425","type":"movie","vote_average":7,"vote_count":2,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/favJdkLy5La3d0Lk7H3ILPLPOHM.jpg","poster_url":"https://image.tmdb.org/t/p/original/8CTMG4glRh3yN4TnAbg1gFTVV3d.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914645, '2026-09-10T20:31:12.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hen-em-ngay-nhat-thuc', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hen-em-ngay-nhat-thuc', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hen-em-ngay-nhat-thuc', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hen-em-ngay-nhat-thuc', 'le_vn');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hen-em-ngay-nhat-thuc', 'phim_chieu_rap');
DELETE FROM movies_fts WHERE slug = 'hen-em-ngay-nhat-thuc';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hen-em-ngay-nhat-thuc', 'Hẹn Em Ngày Nhật Thực', 'Meet Me at the Eclipse', 'hẹn em ngày nhật thực meet me at the eclipse khương lê đoàn thiên ân thanh sơn lê khanh nguyên thảo huỳnh phương hứa vĩ văn kim xuân hứa minh đạt lâm vỹ dạ', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'trung-so-doc-dac-van-phai-di-lam', 'Trúng Số Độc Đắc Vẫn Phải Đi Làm', 'The Ordinary Jackpot', 'https://phimimg.com/uploads/movies/20260910/trung-so-doc-dac-van-phai-di-lam-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/trung-so-doc-dac-van-phai-di-lam-poster.webp', '<p>Coi tấm séc trúng thưởng như một dạng "bảo hiểm tinh thần", Eun-tae mang theo một thái độ tự tin, thoải mái và không còn sợ sệt bất cứ điều gì tại công sở. Sự thay đổi ngầm này vô tình tạo ra hàng loạt tình huống dở khóc dở cười, làm đảo lộn trật tự phân cấp công sở và thay đổi cách nhìn của các đồng nghiệp cũng như cấp trên đối với anh.</p>', 
  'Tập 2', 10, 'series', 'ongoing', 195, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"이준혁","avatar":"https://image.tmdb.org/t/p/w185/zXo037qPJhdSvyhAjGCNoT0TcCF.jpg"},{"name":"서현우","avatar":"https://image.tmdb.org/t/p/w185/i5HP0n06Y5GIZfpsbibFQWAcUjV.jpg"},{"name":"오대환","avatar":"https://image.tmdb.org/t/p/w185/d3ThGdnujocRKLHrwHbJqHlXpWC.jpg"},{"name":"옥자연","avatar":"https://image.tmdb.org/t/p/w185/6yWwOkFMXYBJAC2z8sfN54DRAwj.jpg"},{"name":"하율리","avatar":"https://image.tmdb.org/t/p/w185/14nrDiXswkFLvPs5XpnJle9HaSw.jpg"},{"name":"Hong Jin-gi","avatar":"https://image.tmdb.org/t/p/w185/88Icmn5JbdlsWBsATX4LyRdl5k1.jpg"},{"name":"이현균","avatar":"https://image.tmdb.org/t/p/w185/hxKnznyiPGFM7AuXwCcWBdORLBo.jpg"},{"name":"박보경","avatar":"https://image.tmdb.org/t/p/w185/mHM4Zf1Knw6MdPrTsyfzrCckyaV.jpg"},{"name":"유현","avatar":"https://image.tmdb.org/t/p/w185/a0yhz82dtU7xUagPwEaRxPQLJnK.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"}]', 
  '["로또1등도 출근합니다","The Winner of the Lottery Will Go to Work","로또 1등도 출근합니다"]', '{"id":"294636","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/yWZRNPyrQyN7ErctpmsL1NM3IiF.png","backdrop_url":"https://image.tmdb.org/t/p/original/2vN1SjkpXT6oCBxeE9GOK5NVS2b.jpg","poster_url":"https://image.tmdb.org/t/p/original/mkHMNq0PUHDVn3w5QPM2hcnOdVb.jpg","aspect_ratio":4.045}', '{"id":"tt44072314","vote_average":null}', 
  1789378914644, '2026-09-10T20:30:50.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trung-so-doc-dac-van-phai-di-lam', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trung-so-doc-dac-van-phai-di-lam', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('trung-so-doc-dac-van-phai-di-lam', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'trung-so-doc-dac-van-phai-di-lam';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('trung-so-doc-dac-van-phai-di-lam', 'Trúng Số Độc Đắc Vẫn Phải Đi Làm', 'The Ordinary Jackpot', 'trúng số độc đắc vẫn phải đi làm the ordinary jackpot 이준혁 서현우 오대환 옥자연 하율리 hong jin-gi 이현균 박보경 유현', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'den-khi-ao-phong-kho', 'Đến Khi Áo Phông Khô', 'Until The T-Shirt Dries', 'https://phimimg.com/uploads/movies/20260717/den-khi-ao-phong-kho-thumb.webp', 'https://phimimg.com/uploads/movies/20260717/den-khi-ao-phong-kho-poster.webp', '<p>Một tai nạn bất ngờ phá tan cuộc sống hạnh phúc tưởng chừng bình yên của hai cặp đôi – đồng thời phơi bày bí mật mà một người đã che giấu suốt nhiều năm.</p>', 
  'Tập 9', 10, 'series', 'ongoing', 515, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"蒼井優","avatar":"https://image.tmdb.org/t/p/w185/xxZuHK0Be3caq3iTe03rbfzC5xB.jpg"},{"name":"中島歩","avatar":"https://image.tmdb.org/t/p/w185/kK3N0wjhicPGKia5Cn4fRJTCT6y.jpg"},{"name":"高橋文哉","avatar":"https://image.tmdb.org/t/p/w185/aNdoFv1zPypM3nxR5T7LfpfKLZR.jpg"},{"name":"Kaho","avatar":"https://image.tmdb.org/t/p/w185/s0ykmnef8yU6rf0ZLOaf6GMBbpb.jpg"},{"name":"Matsuyama Kenichi","avatar":"https://image.tmdb.org/t/p/w185/sMrWJWLM5xJVtHfSqxArh5k61PS.jpg"},{"name":"久保田薫","avatar":"https://image.tmdb.org/t/p/w185/r6UeQ80tfBAILzMtIE724lq23mZ.jpg"},{"name":"臼田あさ美","avatar":"https://image.tmdb.org/t/p/w185/ycZupRv1wPn7bKaB0mYEKOpakyw.jpg"},{"name":"Lily Franky","avatar":"https://image.tmdb.org/t/p/w185/2MIG7VSbgekrvqUpChs931NLp6B.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["T-shirt ga Kawaku made","Tシャツが乾くまで"]', '{"id":"322570","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/84eyOn4Fxb5rU0PC7HnfrFAAnSB.png","backdrop_url":"https://image.tmdb.org/t/p/original/j9rHrq3mz0hHchk3EJksCco9LJW.jpg","poster_url":"https://image.tmdb.org/t/p/original/lRcmE5raQyJjN9a3Qz0ug8ZPUE4.jpg","aspect_ratio":3.456}', '{"id":"tt43639297","vote_average":null}', 
  1789378914643, '2026-09-10T18:21:35.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('den-khi-ao-phong-kho', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('den-khi-ao-phong-kho', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('den-khi-ao-phong-kho', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'den-khi-ao-phong-kho';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('den-khi-ao-phong-kho', 'Đến Khi Áo Phông Khô', 'Until The T-Shirt Dries', 'đến khi áo phông khô until the t-shirt dries 蒼井優 中島歩 高橋文哉 kaho matsuyama kenichi 久保田薫 臼田あさ美 lily franky', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hay-goi-quan-ly-cua-toi-phim-dien-anh', 'Hãy Gọi Quản Lý Của Tôi! - Phim Điện Ảnh', 'Call My Agent! The Movie', 'https://phimimg.com/uploads/movies/20260910/hay-goi-quan-ly-cua-toi-phim-dien-anh-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/hay-goi-quan-ly-cua-toi-phim-dien-anh-poster.webp', '<p>Năm năm sau khi hãng ASK đóng cửa, đạo diễn vừa ra mắt Andréa mất nam diễn viên chính chỉ vài ngày trước khi bấm máy, buộc cô tái hợp đội ngũ cũ – dù chưa biết đó là phúc hay họa.</p>', 
  'Full', 1, 'single', 'completed', 106, 2026, 
  'Vietsub', 'FHD', 'Pháp', 0, 
  '[{"name":"Camille Cottin","avatar":"https://image.tmdb.org/t/p/w185/ArBIA46esEk1qMlSwoVPR1SxPvc.jpg"},{"name":"Thibault de Montalembert","avatar":"https://image.tmdb.org/t/p/w185/wfPsfqRmuxXlVmZUTfsOXf9nwGA.jpg"},{"name":"Grégory Montel","avatar":"https://image.tmdb.org/t/p/w185/nImuHSjUgi8v8CaYp5UAZTHbY0j.jpg"},{"name":"Liliane Rovère","avatar":"https://image.tmdb.org/t/p/w185/mo7NTceScg2S8YByd9Nc5jCsdfm.jpg"},{"name":"Fanny Sidney","avatar":"https://image.tmdb.org/t/p/w185/vZslkUvialyIejC4CoDnY6WvT4Q.jpg"},{"name":"Laure Calamy","avatar":"https://image.tmdb.org/t/p/w185/ov3BaihlXFRTzKTc7Hs5KWskEi4.jpg"},{"name":"Nicolas Maury","avatar":"https://image.tmdb.org/t/p/w185/31wQP13EufTzCtldFBU2ckmLsve.jpg"},{"name":"Ophélia Kolb","avatar":"https://image.tmdb.org/t/p/w185/90jLuYsywTxMGiRvrAmQ2aJgcHJ.jpg"},{"name":"Anne Marivin","avatar":"https://image.tmdb.org/t/p/w185/m0CnA4iVKCQcnEVBVqRewSwlTLM.jpg"},{"name":"Laetitia Casta","avatar":"https://image.tmdb.org/t/p/w185/6hakGGXWNWJ5VxMd2u8ExVwjRrj.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Menajerimi Arayın! (Film)","Dix Pour Cent ! Le Film"]', '{"id":"1365884","type":"movie","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/r3Njjs8PeIH5MlUKxBPRRJemWJz.png","backdrop_url":"https://image.tmdb.org/t/p/original/4v8XgcmtUFVXUzGb7noltdjg2Ou.jpg","poster_url":"https://image.tmdb.org/t/p/original/1eGFgr8teQ9HMj7TVocZHwdUq09.jpg","aspect_ratio":3.621}', '{"id":"tt38267923","vote_average":null}', 
  1789378914642, '2026-09-10T18:21:19.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hay-goi-quan-ly-cua-toi-phim-dien-anh', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hay-goi-quan-ly-cua-toi-phim-dien-anh', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hay-goi-quan-ly-cua-toi-phim-dien-anh', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'hay-goi-quan-ly-cua-toi-phim-dien-anh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hay-goi-quan-ly-cua-toi-phim-dien-anh', 'Hãy Gọi Quản Lý Của Tôi! - Phim Điện Ảnh', 'Call My Agent! The Movie', 'hãy gọi quản lý của tôi! - phim điện ảnh call my agent! the movie camille cottin thibault de montalembert grégory montel liliane rovère fanny sidney laure calamy nicolas maury ophélia kolb anne marivin laetitia casta', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nguoi-hang-xom-kha-nghi', 'Người Hàng Xóm Khả Nghi', 'Suspicious Neighbor', 'https://phimimg.com/uploads/movies/20260910/nguoi-hang-xom-kha-nghi-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/nguoi-hang-xom-kha-nghi-poster.webp', '<p>Chuyển vào căn nhà mới, những tưởng đây sẽ là khởi đầu cho hạnh phúc, nhưng cô lại phát hiện người hàng xóm nam sống đối diện ngày càng có những biểu hiện kỳ quái, rùng rợn. Những thay đổi nhỏ đến mức khó nhận ra trên quần áo phơi ngoài giá, những tiếng động sột soạt ma quái ngoài cửa lúc nửa đêm, và cả một gương mặt người chợt thoáng qua áp sát bên ngoài cửa sổ... Liệu đó chỉ là sự nhạy cảm quá mức cùng những tưởng tượng vô căn cứ? Hay là sự thật kinh hoàng đang diễn ra?  Cho đến khi tay nắm cửa bám đầy bụi bẩn bị ai đó âm thầm vặn mở, mọi ảo tưởng về hạnh phúc mới sụp đổ hoàn toàn trong chớp mắt. Những lời dối trá ẩn nấp sâu bên dưới những ngày tháng bình yên hóa ra còn tàn khốc và chết người hơn rất nhiều so với tưởng tượng.</p>', 
  'Hoàn Tất (3/3)', 3, 'series', 'completed', 107, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"张本煜","avatar":"https://image.tmdb.org/t/p/w185/6PI1v4TYN7lDFRzjL1iz8V45P2t.jpg"},{"name":"刘思维","avatar":"https://image.tmdb.org/t/p/w185/8tXQaJPJkc9oRGD3NWXvc6URODO.jpg"},{"name":"Tôn Nghệ Nhiên","avatar":"https://image.tmdb.org/t/p/w185/qR527kPGI0sIGMmjkmTPEiMM8Jr.jpg"},{"name":"孙梦纯","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Suspicious Neighbor","邻人可疑"]', '{"id":"317331","type":"tv","vote_average":8.2,"vote_count":2,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/afJUPDQm4ZegjxGwNNGertKs2wo.jpg","poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914641, '2026-09-10T18:10:09.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-hang-xom-kha-nghi', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-hang-xom-kha-nghi', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-hang-xom-kha-nghi', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-hang-xom-kha-nghi', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'nguoi-hang-xom-kha-nghi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nguoi-hang-xom-kha-nghi', 'Người Hàng Xóm Khả Nghi', 'Suspicious Neighbor', 'người hàng xóm khả nghi suspicious neighbor 张本煜 刘思维 tôn nghệ nhiên 孙梦纯', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'loi-noi-doi-hoan-hao-2026', 'Lời Nói Dối Hoàn Hảo', 'The Perfect Lie', 'https://phimimg.com/uploads/movies/20260910/loi-noi-doi-hoan-hao-2026-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/loi-noi-doi-hoan-hao-2026-poster.webp', '<p>Khi vụ hỏa hoạn khiến chồng của một thành viên thiệt mạng, nhóm các chị em thân thiết bắt đầu nghi ngờ có điều khuất tất. Karin nhớ lại thời điểm cô mới gia nhập nhóm.</p>', 
  'Hoàn Tất (7/7)', 7, 'series', 'completed', 93, 2026, 
  'Vietsub', 'FHD', 'Hà Lan', 0, 
  '[{"name":"Loes Haverkort","avatar":"https://image.tmdb.org/t/p/w185/7Mz5pEkDGCXWY5nhiwSn8yWDFjx.jpg"},{"name":"Remko Vrijdag","avatar":"https://image.tmdb.org/t/p/w185/g6KW48DqW8kcd2JkKRdUDyMrerk.jpg"},{"name":"Noortje Herlaar","avatar":"https://image.tmdb.org/t/p/w185/9UupimmSLCQ7uoLCg2wDOcmTjAJ.jpg"},{"name":"Edwin Jonker","avatar":"https://image.tmdb.org/t/p/w185/6oTvPHOxmwMVoZp6sCb6xzo3wNk.jpg"},{"name":"Rifka Lodeizen","avatar":"https://image.tmdb.org/t/p/w185/l5hLOMTloXy9WKSX3WNA5MyXnfk.jpg"},{"name":"Matthijs van de Sande Bakhuyzen","avatar":"https://image.tmdb.org/t/p/w185/yNhTWoImNo9JInAYkfEQngHI4z.jpg"},{"name":"Charlie Dagelet","avatar":"https://image.tmdb.org/t/p/w185/9PkrramaZKhm6agGOk99G6gf049.jpg"},{"name":"Teun Luijkx","avatar":"https://image.tmdb.org/t/p/w185/wOQZpDsOVgNOJbQ2FgqY3gRoQ6J.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["De Eetclub"]', '{"id":"325755","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/r7EndLSH90kZYoDICixO89hEcpO.png","backdrop_url":"https://image.tmdb.org/t/p/original/vYO9OkYHSNfYuqz6VMS4aCCfRb8.jpg","poster_url":"https://image.tmdb.org/t/p/original/2Kc1WD3vCNCfwe23FMq3M5lsexh.jpg","aspect_ratio":5.523}', '{"id":"tt37439410","vote_average":null}', 
  1789378914640, '2026-09-10T18:05:21.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-noi-doi-hoan-hao-2026', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-noi-doi-hoan-hao-2026', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'loi-noi-doi-hoan-hao-2026';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('loi-noi-doi-hoan-hao-2026', 'Lời Nói Dối Hoàn Hảo', 'The Perfect Lie', 'lời nói dối hoàn hảo the perfect lie loes haverkort remko vrijdag noortje herlaar edwin jonker rifka lodeizen matthijs van de sande bakhuyzen charlie dagelet teun luijkx', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'gan-ket', 'Gắn Kết', 'Chumbak', 'https://phimimg.com/uploads/movies/20260910/gan-ket-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/gan-ket-poster.webp', '<p>Khi Kuku mất tích, Rajni nhờ những người hàng xóm lập dị giúp tìm anh. Nhưng cuộc tìm kiếm sớm hé lộ sự thật phũ phàng về cuộc hôn nhân của cô.</p>', 
  'Tập 8', 16, 'series', 'ongoing', 81, 2026, 
  'Vietsub', 'FHD', 'Ấn Độ', 0, 
  '[{"name":"Deven Bhojani","avatar":"https://image.tmdb.org/t/p/w185/4gKlQ8QD6BtfachIRAXOxB5vidB.jpg"},{"name":"Neena Gupta","avatar":"https://image.tmdb.org/t/p/w185/znCPPYR79c1DU2MvA61JXhdMeCs.jpg"},{"name":"Sumeet Vyas","avatar":"https://image.tmdb.org/t/p/w185/qGwWWHQsMU4V9ZMZnqNxdnXpYo2.jpg"},{"name":"Manasi Parekh","avatar":"https://image.tmdb.org/t/p/w185/hehENX9xvxs97OCHZTYuceRPQ0q.jpg"},{"name":"Sumeet Raghvan","avatar":"https://image.tmdb.org/t/p/w185/4dOV251KBVkZSyG9MbGgt5dDKeo.jpg"},{"name":"Sandeepa Dhar","avatar":"https://image.tmdb.org/t/p/w185/mFf8Nnf0n45KiR8zcwZTmAFGOoT.jpg"},{"name":"Anant Joshi","avatar":"https://image.tmdb.org/t/p/w185/jcYbmTJZolVfFknhulko7i2KHSL.jpg"},{"name":"Amyra Dastur","avatar":"https://image.tmdb.org/t/p/w185/jUXu3sSVTDZYvWFCmICNfTtMvGZ.jpg"},{"name":"Arjun Bijlani","avatar":"https://image.tmdb.org/t/p/w185/tsUsyg442XI9aha6KoIeUcUQ81C.jpg"},{"name":"Helly Shah","avatar":"https://image.tmdb.org/t/p/w185/vff9ZyyLYrYy54lKEPTo4hkcr0s.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a2492d6cbc4d58f115406ca14e5ec7b6","name":"Gia Đình","slug":"gia-dinh"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["चुम्बक","चुंबक"]', '{"id":"313172","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/2N1kH7314XUfMw80iLZh1d2UoHY.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt39640519","vote_average":null}', 
  1789378914639, '2026-09-10T18:02:52.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gan-ket', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gan-ket', 'gia-dinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gan-ket', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gan-ket', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'gan-ket';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('gan-ket', 'Gắn Kết', 'Chumbak', 'gắn kết chumbak deven bhojani neena gupta sumeet vyas manasi parekh sumeet raghvan sandeepa dhar anant joshi amyra dastur arjun bijlani helly shah', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'co-gai-doi-rowing', 'Cô Gái Đội Rowing', 'Crew Girl', 'https://phimimg.com/uploads/movies/20260910/co-gai-doi-rowing-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/co-gai-doi-rowing-poster.webp', '<p>Sau bê bối gia đình, tay chèo tuổi teen Teagan Tao chuyển đến một thị trấn nhỏ và gia nhập đội chèo nam của một trường dự bị danh giá, làm bùng lên cạnh tranh cùng những rung động.</p>', 
  'Hoàn Tất (8/8)', 8, 'series', 'completed', 84, 2026, 
  'Vietsub', 'FHD', 'Canada', 0, 
  '[{"name":"Miku Martineau","avatar":"https://image.tmdb.org/t/p/w185/58S1hYHe1TuHgxxaddzCbqxjJNJ.jpg"},{"name":"Jessica Paré","avatar":"https://image.tmdb.org/t/p/w185/udvHIbFPW646vDkbnipb82wPUxs.jpg"},{"name":"Samuel Braun","avatar":"https://image.tmdb.org/t/p/w185/8nP9SqKpvVgJcw9mgANPdMKHf72.jpg"},{"name":"Kyle Clark","avatar":"https://image.tmdb.org/t/p/w185/yFkg5ClOTqc6ca643bOeaUtnDb3.jpg"},{"name":"Thomas Cadrot","avatar":"https://image.tmdb.org/t/p/w185/2klFFu6ZSunZPGC51Bg2kSdx7Xg.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Crew Girl"]', '{"id":"300507","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/yJIfdh0kwDhuoPQMI5gs5e96ReC.png","backdrop_url":"https://image.tmdb.org/t/p/original/lmtTtOjsIBxwKD7LsAD5eeyhq1g.jpg","poster_url":"https://image.tmdb.org/t/p/original/jkPZW1iHNvlI6077NxSxwITa1tj.jpg","aspect_ratio":1.883}', '{"id":"tt38218082","vote_average":null}', 
  1789378914638, '2026-09-10T18:01:26.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-gai-doi-rowing', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-gai-doi-rowing', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'co-gai-doi-rowing';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('co-gai-doi-rowing', 'Cô Gái Đội Rowing', 'Crew Girl', 'cô gái đội rowing crew girl miku martineau jessica paré samuel braun kyle clark thomas cadrot', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'su-huynh-qua-can-trong', 'Sư Huynh Quá Cẩn Trọng', 'Pull Strings', 'https://phimimg.com/uploads/movies/20260819/su-huynh-qua-can-trong-thumb.webp', 'https://phimimg.com/uploads/movies/20260819/su-huynh-qua-can-trong-poster.webp', '<p>Kiếp trước, Lý Trường Thọ là một bệnh nhân mắc bệnh hiểm nghèo. Sau một lần ngoài ý muốn sống lại ở thế giới hồng hoang, trở thành một tu sĩ Luyện Khí nhỏ bé luôn trân trọng tính mạng, không muốn dính vào nhân quả. Để tránh đại kiếp thiên hạ đã được thiên đạo tiên tri, y theo đuổi con đường "ổn vững", chỉ mong sớm lên thiên đình sống qua ngày. Vì thế, y hành sự thận trọng, bất động thì vững như bàn thạch, động một cái là long trời lở đất. Y tin rằng thời đại chỉ biết chém giết đã qua, lừa được thì tuyệt đối không giết, độc thân được thì tuyệt đối không yêu. Thế nhưng, kẻ địch và mỹ nhân lại ùn ùn kéo đến. Y bất cẩn trở thành cao thủ đứng sau bày mưu tính kế, bị cuốn vào trận đấu của nhiều thế lực, triển khai kế hoạch "Long tộc lên trời", thậm chí còn khiến đại kiếp thiên hạ đến sớm hơn...</p>', 
  'Hoàn Tất (30/30)', 30, 'series', 'completed', 1264, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Ngao Thụy Bằng","avatar":"https://image.tmdb.org/t/p/w185/ui0S27witkoHMzrQvu0C7E6UWJu.jpg"},{"name":"Tôn Trân Ny","avatar":"https://image.tmdb.org/t/p/w185/7yKfZ23VwwbDbzBQOfsjaJB3YuA.jpg"},{"name":"Ngạo Tử Dật","avatar":"https://image.tmdb.org/t/p/w185/48npqkxuro0nTSYHjQBVyxTQLWF.jpg"},{"name":"Ngãi Mễ","avatar":"https://image.tmdb.org/t/p/w185/uiKBA66FDdYU4E2KJD0XUYWIsGl.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Shi Xiong Zai Tai Wen Jian","Wo Shixiong Shizai Tai Wenjianle","Wo Shi Xiong Shi Zai Tai Wen Jian Le","師兄太穩健","我師兄實在太穩健了","Pull Strings","师兄太稳健"]', '{"id":"272938","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/x67EIyNNz2VbTQhStOVa4VvhmmS.png","backdrop_url":"https://image.tmdb.org/t/p/original/8zsKL8gDjv7NI7HHk4POIBMl2jE.jpg","poster_url":"https://image.tmdb.org/t/p/original/vEqLoYu7mXlQ96Kk7oQbeXzdNK.jpg","aspect_ratio":3.163}', '{"id":"tt37231342","vote_average":null}', 
  1789378914637, '2026-09-10T15:10:35.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-qua-can-trong', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'su-huynh-qua-can-trong';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('su-huynh-qua-can-trong', 'Sư Huynh Quá Cẩn Trọng', 'Pull Strings', 'sư huynh quá cẩn trọng pull strings ngao thụy bằng tôn trân ny ngạo tử dật ngãi mễ', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'pho-ma-tieu-ngo-tac', 'Phò Mã Tiểu Ngỗ Tác', 'The Legendary Chitose-Sama', 'https://phimimg.com/uploads/movies/20260825/pho-ma-tieu-ngo-tac-thumb.webp', 'https://phimimg.com/uploads/movies/20260825/pho-ma-tieu-ngo-tac-poster.webp', '<p>Thiên kim tiểu thư Quân Thanh Lam bi thảm chịu cảnh gia tộc bị xét nhà diệt môn. Vị hôn phu năm xưa là Lý Tùng Nghiêu chẳng những không dang tay cứu giúp, mà còn đích thân hủy hoại dung mạo của nàng. Trở về từ cõi chết, nàng thay hình đổi dạng, nữ cải trang thành nam hóa thân thành pháp y của Đại Lý Tự, nhẫn nhịn ẩn mình chỉ một lòng lật lại vụ án để báo thù. Nào ngờ nàng lại tái ngộ Lý Tùng Nghiêu, người thương năm xưa nay đã trở thành một Đoan Vương tàn nhẫn máu lạnh. Hắn trắng trợn bắt ép và giam cầm nàng. Yêu hận đan xen, quyền mưu quỷ quyệt nối gót bủa vây, màn sương mù của vụ án cũ từng lớp bị bóc trần. Một ván cờ sinh tử giằng xé giữa cuộc chiến báo thù và tư tình lại chính thức bắt đầu.</p>', 
  'Tập 37', 43, 'series', 'ongoing', 526, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"任言恺","avatar":"https://image.tmdb.org/t/p/w185/mAp597xMMNDLhXCp1xRwieA00J.jpg"},{"name":"Kang Ning","avatar":"https://image.tmdb.org/t/p/w185/kUgZcgqEoTxB6cnSTodDro2mkVn.jpg"},{"name":"Shi Qingyan","avatar":"https://image.tmdb.org/t/p/w185/3hzP3XqCfuVfKpbxRMcFgupSaHY.jpg"},{"name":"陈雨成","avatar":"https://image.tmdb.org/t/p/w185/8AS1Jls3ZcoiRKcH4oTdDzRTlbt.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["我的千岁大人","仵作女驸马","君青蓝","传说中的千岁大人","驸马小仵作"]', '{"id":"236731","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/lOL8fPXQr9wJfX8OkLZxdebJNtE.png","backdrop_url":"https://image.tmdb.org/t/p/original/9fz7WyMy1fDXcmgoCooNqxOGiZN.jpg","poster_url":"https://image.tmdb.org/t/p/original/ftEQhwkEwV9yrKrvQ5bwetcw947.jpg","aspect_ratio":2.564}', '{"id":null,"vote_average":null}', 
  1789378914636, '2026-09-10T15:10:11.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pho-ma-tieu-ngo-tac', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pho-ma-tieu-ngo-tac', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pho-ma-tieu-ngo-tac', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pho-ma-tieu-ngo-tac', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pho-ma-tieu-ngo-tac', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'pho-ma-tieu-ngo-tac';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('pho-ma-tieu-ngo-tac', 'Phò Mã Tiểu Ngỗ Tác', 'The Legendary Chitose-Sama', 'phò mã tiểu ngỗ tác the legendary chitose-sama 任言恺 kang ning shi qingyan 陈雨成', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hien-truong-san-an', 'Hiện Trường Săn Án', 'Fragments Of Truth', 'https://phimimg.com/uploads/movies/20260909/hien-truong-san-an-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/hien-truong-san-an-poster.webp', '<p>Mạch truyện chính xoay quanh một chuỗi vụ án hình sự liên hoàn bắt nguồn từ đường dây sinh lợi bất chính của ngành công nghiệp mang thai hộ chui. Một vụ án cũ bị lãng quên suốt 7 năm bất ngờ được lật lại. Trong quá trình dấn thân truy tìm sự thật, nhóm cảnh sát điều tra không chỉ bóc gỡ từng lớp âm mưu đen tối mà còn liên tục trăn trở, thảo luận sâu sắc về vinh quang của người chiến sĩ công an cùng sự kính úy đối với giá trị thiêng liêng của sinh mạng con người.</p>', 
  'Tập 5', 24, 'series', 'ongoing', 161, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"黄俊捷","avatar":"https://image.tmdb.org/t/p/w185/6kKEtQ78IMbJfJt4yTwAEzy7tXJ.jpg"},{"name":"郑晓宁","avatar":"https://image.tmdb.org/t/p/w185/nGX6aLyzN0Rffdne5a5GPlXjRVu.jpg"},{"name":"Zhang Dong","avatar":"https://image.tmdb.org/t/p/w185/h3B99TP0y7WZdsdqTXTW2gW2K6t.jpg"},{"name":"Dai Meng","avatar":"https://image.tmdb.org/t/p/w185/q00GI8CZL1UFjme5D8OSQChw8NS.jpg"},{"name":"鲍大志","avatar":"https://image.tmdb.org/t/p/w185/jTvFJp3kTVPssRvNoZ0OEucN4Df.jpg"},{"name":"Du Jianqiao","avatar":"https://image.tmdb.org/t/p/w185/pAZSD6En4EhosWnmF3UXLNA5Uz3.jpg"}]', '[{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["猎罪现场"]', '{"id":"305992","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/oSjVfV3427c5t41cYpbMMc1wSt4.png","backdrop_url":"https://image.tmdb.org/t/p/original/zRxXHN3xgZiaN18vLYeI6xCg8C.jpg","poster_url":"https://image.tmdb.org/t/p/original/c3jn3hr9tlOS7zEldLBQrvHiKVz.jpg","aspect_ratio":3.004}', '{"id":null,"vote_average":null}', 
  1789378914635, '2026-09-10T15:08:52.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hien-truong-san-an', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hien-truong-san-an', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hien-truong-san-an', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hien-truong-san-an', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hien-truong-san-an', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'hien-truong-san-an';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hien-truong-san-an', 'Hiện Trường Săn Án', 'Fragments Of Truth', 'hiện trường săn án fragments of truth 黄俊捷 郑晓宁 zhang dong dai meng 鲍大志 du jianqiao', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'cong-chua-va-chang-mai', 'Công Chúa Và Chàng Mai', 'The Princess And The Matchmaker', 'https://phimimg.com/uploads/movies/20260910/cong-chua-va-chang-mai-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/cong-chua-va-chang-mai-poster.webp', '<p>Từ chối để số phận định đoạt người chồng tương lai của mình, Công chúa Songhwa quyết định tự tay lên đường tìm kiếm bạn đời. Cô tìm kiếm sự giúp đỡ của một thầy xem bói toán tài giỏi để luận giải mức độ hòa hợp âm dương (cung hợp) giữa cô và 4 ứng viên tiềm năng mà nhà vua đã chọn để thành hôn.</p>', 
  'Full', 1, 'single', 'completed', 216, 2018, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"심은경","avatar":"https://image.tmdb.org/t/p/w185/kgtHFruNAjOuAuba3wXdYzYFzAW.jpg"},{"name":"이승기","avatar":"https://image.tmdb.org/t/p/w185/urz7CEh9rpC9GFqh5ht8R65dY9w.jpg"},{"name":"김상경","avatar":"https://image.tmdb.org/t/p/w185/5VKIhf0ZVxqtrZfyMPbubZz3INr.jpg"},{"name":"연우진","avatar":"https://image.tmdb.org/t/p/w185/oGOpjHfwifYd3hVohVFbxmA7Aoe.jpg"},{"name":"강민혁","avatar":"https://image.tmdb.org/t/p/w185/fVSeudiTzbK13DYW2BcgdT0qJKJ.jpg"},{"name":"Choi Woo-shik","avatar":"https://image.tmdb.org/t/p/w185/9mZ9DNopxpCLUjXd0rLd42TLamw.jpg"},{"name":"조복래","avatar":"https://image.tmdb.org/t/p/w185/y8JQtClMu7rOp7ZFFWOmcD2TMcJ.jpg"},{"name":"민호","avatar":"https://image.tmdb.org/t/p/w185/vTeGWQubmMbFozpp4uf3N6t33pV.jpg"},{"name":"박선영","avatar":"https://image.tmdb.org/t/p/w185/zg1h7xaY4tUoSa9gNmq4VH08bgX.jpg"},{"name":"주아름","avatar":"https://image.tmdb.org/t/p/w185/tX9hQCRq6EBF7wGYEwqxsX61Th3.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"f8ec3e9b77c509fdf64f0c387119b916","name":"Lịch Sử","slug":"lich-su"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Gung-hab","Marital Harmony","The Princess and the Matchmaker","궁합","野蛮公主玩婚记"]', '{"id":"500168","type":"movie","vote_average":7.2,"vote_count":146,"logo_url":"https://image.tmdb.org/t/p/original/dsoIVAMUJd5e2XDMSo0N6OqBWKw.png","backdrop_url":"https://image.tmdb.org/t/p/original/ydb6fS0vL7kcWdI6o3QWzhBSgFY.jpg","poster_url":"https://image.tmdb.org/t/p/original/1hKUJ6YCVzlW9grBDoKps4KoDNE.jpg","aspect_ratio":1.429}', '{"id":"tt5961314","vote_average":6.3}', 
  1789378914634, '2026-09-10T15:07:21.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cong-chua-va-chang-mai', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cong-chua-va-chang-mai', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cong-chua-va-chang-mai', 'lich-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cong-chua-va-chang-mai', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cong-chua-va-chang-mai', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cong-chua-va-chang-mai', 'le_han');
DELETE FROM movies_fts WHERE slug = 'cong-chua-va-chang-mai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('cong-chua-va-chang-mai', 'Công Chúa Và Chàng Mai', 'The Princess And The Matchmaker', 'công chúa và chàng mai the princess and the matchmaker 심은경 이승기 김상경 연우진 강민혁 choi woo-shik 조복래 민호 박선영 주아름', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'gian-dot-bien', 'Gián Đột Biến', 'The Nest', 'https://phimimg.com/uploads/movies/20260910/gian-dot-bien-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/gian-dot-bien-poster.webp', '<p>Một tác phẩm kinh dị gây sốc xoay quanh một thí nghiệm sinh học vượt khỏi tầm kiểm soát khi loài gián đột biến thèm thịt người tràn sang xâm chiếm một cộng đồng đảo, gieo rắc kinh hoàng cho thị trấn đánh cá New England yên bình và tàn sát dã man người dân nơi đây.</p>', 
  'Full', 1, 'single', 'completed', 135, 1988, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Robert Lansing","avatar":"https://image.tmdb.org/t/p/w185/h1ikQw9KaJ7QNT3WRiPsn4JtLK0.jpg"},{"name":"Lisa Langlois","avatar":"https://image.tmdb.org/t/p/w185/dOqzxrS31BINarvkx4FQMYYaIW3.jpg"},{"name":"Franc Luz","avatar":"https://image.tmdb.org/t/p/w185/twgMU6aF97h1yDZcBxezu86WIwy.jpg"},{"name":"Terri Treas","avatar":"https://image.tmdb.org/t/p/w185/b4cZ7ET0ePXd5Y7EuIYC4VxZu7N.jpg"},{"name":"Stephen Davies","avatar":"https://image.tmdb.org/t/p/w185/pPbgQ8uebicpySrw12TnRbnkIub.jpg"},{"name":"Diana Bellamy","avatar":"https://image.tmdb.org/t/p/w185/gLkpy27UWMCZCWnkOm3vFPr2TQh.jpg"},{"name":"Jack Collins","avatar":"https://image.tmdb.org/t/p/w185/cq0ai4W5uMDmPs3yjN61VO2Qjti.jpg"},{"name":"Nancy Morgan","avatar":"https://image.tmdb.org/t/p/w185/2wurne3qJ3OuDAM9S6rxNgpqghb.jpg"},{"name":"Jeff Winkless","avatar":""},{"name":"Steve Tannen","avatar":""}]', '[{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"}]', 
  '["Voyage au bout de l''horreur","Das Nest - Brutstätte des Grauens","Гнездо","The Nest"]', '{"id":"87710","type":"movie","vote_average":5.2,"vote_count":100,"logo_url":"https://image.tmdb.org/t/p/original/aGwhIrolnTo03LJgnRXKrmfa7F6.png","backdrop_url":"https://image.tmdb.org/t/p/original/uKVz2h6oRz7ws0M1f3RUIWpZvyZ.jpg","poster_url":"https://image.tmdb.org/t/p/original/suRyQyDDRNPErMM53dYb7ynPiwk.jpg","aspect_ratio":1.999}', '{"id":"tt0095719","vote_average":5.3}', 
  1789378914633, '2026-09-10T09:22:27.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gian-dot-bien', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gian-dot-bien', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gian-dot-bien', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gian-dot-bien', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gian-dot-bien', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'gian-dot-bien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('gian-dot-bien', 'Gián Đột Biến', 'The Nest', 'gián đột biến the nest robert lansing lisa langlois franc luz terri treas stephen davies diana bellamy jack collins nancy morgan jeff winkless steve tannen', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dua-tre-mo-coi-2-nan-nhan-dau-tien', 'Đứa Trẻ Mồ Côi 2: Nạn Nhân Đầu Tiên', 'Orphan: First Kill', 'https://phimimg.com/uploads/movies/20260910/dua-tre-mo-coi-2-nan-nhan-dau-tien-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/dua-tre-mo-coi-2-nan-nhan-dau-tien-poster.webp', '<p>Phần phim này sẽ khai thác nguồn gốc của Esther hay đúng hơn là kẻ tâm thần Leena Klammer. Theo chân quá trình Leena tẩu thoát thành công khỏi trại tâm thần Estonian và lân la sang Mỹ, tại đây cô mạo danh Esther, cô con gái nuôi mất tích của gia đình giàu có. Nhưng dưới cuộc sống mới trong vai "Esther" cô ta đã trải qua những biến chuyển không ngờ và khiến cô chống lại người mẹ, người đang cố gắng bảo vệ gia đình bằng mọi giá.</p>', 
  'Full', 1, 'single', 'completed', 123, 2022, 
  'Vietsub', 'FHD', 'Canada', 0, 
  '[{"name":"Isabelle Fuhrman","avatar":"https://image.tmdb.org/t/p/w185/borthNRiTGa7oKZjLKHuUGUrZdq.jpg"},{"name":"Julia Stiles","avatar":"https://image.tmdb.org/t/p/w185/okcblz7pqeapHorLvxtxd3iNNic.jpg"},{"name":"Rossif Sutherland","avatar":"https://image.tmdb.org/t/p/w185/3ZBXM6CqZutyWWR6vbGvLcm8HDk.jpg"},{"name":"ヒロ・カナガワ","avatar":"https://image.tmdb.org/t/p/w185/oXpKxlNED8KApjGOK75q8OF3zMs.jpg"},{"name":"Matthew Finlan","avatar":"https://image.tmdb.org/t/p/w185/eAyxxChemfnTDcWOFNDXxr5Zeh8.jpg"},{"name":"Samantha Walkes","avatar":"https://image.tmdb.org/t/p/w185/hs7W2su2cbgmrzuQACAIU4zlbur.jpg"},{"name":"David Lawrence Brown","avatar":"https://image.tmdb.org/t/p/w185/aQEVuW5IWam68nWajc7ij6xTyoN.jpg"},{"name":"Lauren Cochrane","avatar":"https://image.tmdb.org/t/p/w185/haOurV7B4Vh35TousTqNtwHnDfm.jpg"},{"name":"Gwendolyn Collins","avatar":"https://image.tmdb.org/t/p/w185/rd2RHG9lj8fAE0HpwX1CZDNx9Pu.jpg"},{"name":"Kristen Sawatzky","avatar":""}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Esther","Orphan 2","היתומה 2: הרצח הראשון","孤疑前傳","Orphan 2 - First Kill","Órfã: A Origem","Sierota. Narodziny zła","オーファン：ファースト・キル","La huérfana: El origen","Orphan: First Kill"]', '{"id":"760161","type":"movie","vote_average":6.6,"vote_count":2349,"logo_url":"https://image.tmdb.org/t/p/original/yEEZJUbgfCAHt8kEixaGdfu7U2Q.png","backdrop_url":"https://image.tmdb.org/t/p/original/e77LAFvZq5KteWsKxuc5nP9B6OD.jpg","poster_url":"https://image.tmdb.org/t/p/original/pHkKbIRoCe7zIFvqan9LFSaQAde.jpg","aspect_ratio":2.32}', '{"id":"tt11851548","vote_average":5.9}', 
  1789378914632, '2026-09-10T09:20:18.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dua-tre-mo-coi-2-nan-nhan-dau-tien', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dua-tre-mo-coi-2-nan-nhan-dau-tien', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dua-tre-mo-coi-2-nan-nhan-dau-tien', 'chinh-kich');
DELETE FROM movies_fts WHERE slug = 'dua-tre-mo-coi-2-nan-nhan-dau-tien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dua-tre-mo-coi-2-nan-nhan-dau-tien', 'Đứa Trẻ Mồ Côi 2: Nạn Nhân Đầu Tiên', 'Orphan: First Kill', 'đứa trẻ mồ côi 2: nạn nhân đầu tiên orphan: first kill isabelle fuhrman julia stiles rossif sutherland ヒロ・カナガワ matthew finlan samantha walkes david lawrence brown lauren cochrane gwendolyn collins kristen sawatzky', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dua-tre-mo-coi', 'Đứa Trẻ Mồ Côi', 'Orphan', 'https://phimimg.com/uploads/movies/20260910/dua-tre-mo-coi-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/dua-tre-mo-coi-poster.webp', '<p>Việc sẩy thai khiến Kate và John, đặc biệt là Kate trở nên trầm cảm và bị ám ảnh bởi những cơn ác mộng khủng khiếp. Trong những nỗ lực để tìm lại cuộc sống bình thường, họ quyết định sẽ nhận con nuôi. Tại trại trẻ mồ côi địa phương, cả John và Kate rồi cảm thấy họ bị thu hút một cách kỳ lạ bởi cô bé Esther (Isabelle Fuhrman). Tuy nhiên, ngay khi họ chào đón Esther về nhà, thì một thuỗi các sự kiện lạ xảy ra, khiến Kate tin rằng có điều gì đó không ổn với Esther, rằng cô bé ấy không đơn giản như những gì cô bé thể hiện. Lo lắng về sự an nguy của gia đình, Kate cố gắng thuyết phục John và những người khác tìm hiểu bộ mặt thật của Esther. Nhưng chẳng ai chú ý đến lời cảnh báo của cô, cho đến khi mọi việc quá muộn.</p>', 
  'Full', 1, 'single', 'completed', 176, 2009, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Vera Farmiga","avatar":"https://image.tmdb.org/t/p/w185/5Vs7huBmTKftwlsc2BPAntyaQYj.jpg"},{"name":"Peter Sarsgaard","avatar":"https://image.tmdb.org/t/p/w185/5UANyM4co2nwYPgSEmGeNlZRm7V.jpg"},{"name":"Isabelle Fuhrman","avatar":"https://image.tmdb.org/t/p/w185/borthNRiTGa7oKZjLKHuUGUrZdq.jpg"},{"name":"CCH Pounder","avatar":"https://image.tmdb.org/t/p/w185/yLOU0qA5MwJyoKMc0e4HyZz4oFV.jpg"},{"name":"Jimmy Bennett","avatar":"https://image.tmdb.org/t/p/w185/8ktMwTxDqgyiYKdIB5dWEuX2zG1.jpg"},{"name":"Margo Martindale","avatar":"https://image.tmdb.org/t/p/w185/6ANuYnZZJTuQLL4bbt8vH1qDYje.jpg"},{"name":"Karel Roden","avatar":"https://image.tmdb.org/t/p/w185/zfxaI9n2kjlDyJUpSFvawQGV1Hg.jpg"},{"name":"Aryana Engineer","avatar":"https://image.tmdb.org/t/p/w185/rVKtsVvYacIR1S2BLNis1XKG9kN.jpg"},{"name":"Rosemary Dunsmore","avatar":"https://image.tmdb.org/t/p/w185/jqu948f0Rwu6OZ2NDU72Hk6OklX.jpg"},{"name":"Jamie Young","avatar":"https://image.tmdb.org/t/p/w185/c8loTafCIYaTvrYGbagt3uGtw31.jpg"}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Дитя темряви","Сирота","เด็กนรก","יתומה 1","エスター","エスター：2009","Đứa Con Của Quỷ","孤疑","孤儿怨","La Huérfana","Orphan"]', '{"id":"21208","type":"movie","vote_average":7,"vote_count":5755,"logo_url":"https://image.tmdb.org/t/p/original/cz9PongGbf2Z6LWxE8QjuXRN5Gm.png","backdrop_url":"https://image.tmdb.org/t/p/original/hHlFspcHTLGFo8BwOSCsX9eHtbY.jpg","poster_url":"https://image.tmdb.org/t/p/original/lCGpOgoTOGLtZnBiGY9HRg5Xnjd.jpg","aspect_ratio":2.53}', '{"id":"tt1148204","vote_average":7}', 
  1789378914631, '2026-09-10T09:19:05.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dua-tre-mo-coi', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dua-tre-mo-coi', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dua-tre-mo-coi', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dua-tre-mo-coi', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'dua-tre-mo-coi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dua-tre-mo-coi', 'Đứa Trẻ Mồ Côi', 'Orphan', 'đứa trẻ mồ côi orphan vera farmiga peter sarsgaard isabelle fuhrman cch pounder jimmy bennett margo martindale karel roden aryana engineer rosemary dunsmore jamie young', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dao-quat-vuong-vua-trom-mo', 'Đạo Quật Vương (Vua Trộm Mộ)', 'Tomb Raider King', 'https://phimimg.com/uploads/movies/20260709/dao-quat-vuong-vua-trom-mo-thumb.webp', 'https://phimimg.com/uploads/movies/20260709/dao-quat-vuong-vua-trom-mo-poster.webp', '<p>Một ngày nọ, những lăng mộ bí ẩn đồng loạt xuất hiện trên khắp thế giới, mang theo những cổ vật ban cho chủ sở hữu những năng lực siêu nhiên phi thường. Seo Joo-heon là một nhà thám hiểm, chuyên gia khai quật và cũng là một tay trộm mộ khét tiếng.Sau khi bị chính chủ nhân của mình phản bội, Joo-heon tưởng chừng đã phải bỏ mạng dưới sức mạnh của một cổ vật mới đầy quyền năng. Thế nhưng, định mệnh đã cho anh cơ hội thứ hai: anh đột ngột tỉnh dậy ở thời điểm 15 năm trước, khi mà những lăng mộ và cổ vật còn chưa hề xuất hiện.Được thôi thúc bởi ngọn lửa trả thù, Joo-heon sẽ tận dụng những kiến thức từ tương lai như thế nào để chinh phục mọi lăng mộ và trở thành Đạo Quật Vương?</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 914, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"황창영","avatar":"https://image.tmdb.org/t/p/w185/6SlUgdqSGTfbvoesJIFOHOePR4V.jpg"},{"name":"이유리","avatar":"https://image.tmdb.org/t/p/w185/6QLQIysqTEXbBcyEOyZmpxfTQEA.jpg"},{"name":"민응식","avatar":"https://image.tmdb.org/t/p/w185/dCSfPanv1ypOpWBCWhDXXfhcXWX.jpg"},{"name":"심규혁","avatar":"https://image.tmdb.org/t/p/w185/lBVs5csB5GsUnWjICiDX2W5geDO.jpg"},{"name":"木暮晃石","avatar":"https://image.tmdb.org/t/p/w185/a4nQ5seWDMMSDzW37MkRpk0ZnTE.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["我独自盗墓","Toukutsuou","Tōkutsuō","Toukutsu Ou","Dogul Wang","Dogul-wang","盜墓王","Vua Trộm Mộ","도굴왕"]', '{"id":"297826","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/vwsmcW7DIazShvfdzgqKtuBR6W8.png","backdrop_url":"https://image.tmdb.org/t/p/original/efo2pV1xzSIyd35jXixoB2WJM3u.jpg","poster_url":"https://image.tmdb.org/t/p/original/xDW6cor12UD0b2IqboQWnrIn0UO.jpg","aspect_ratio":1.824}', '{"id":"tt32869308","vote_average":null}', 
  1789378914630, '2026-09-10T09:17:37.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-quat-vuong-vua-trom-mo', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-quat-vuong-vua-trom-mo', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-quat-vuong-vua-trom-mo', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-quat-vuong-vua-trom-mo', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-quat-vuong-vua-trom-mo', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-quat-vuong-vua-trom-mo', 'bo_han');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-quat-vuong-vua-trom-mo', 'hoat_hinh');
DELETE FROM movies_fts WHERE slug = 'dao-quat-vuong-vua-trom-mo';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dao-quat-vuong-vua-trom-mo', 'Đạo Quật Vương (Vua Trộm Mộ)', 'Tomb Raider King', 'đạo quật vương (vua trộm mộ) tomb raider king 황창영 이유리 민응식 심규혁 木暮晃石', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'Mắc Kẹt Trong Game Hẹn Hò: Thế Giới Game Otome Thật Khắc Nghiệt Với Nhân Vật Quần Chúng (Phần 2)', 'Trapped In A Dating Sim: The World of Otome Games Is Tough For Mobs (Season 2)', 'https://phimimg.com/uploads/movies/20260708/the-gioi-otome-game-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/the-gioi-otome-game-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2-poster.webp', '<p>Leon, người từng làm công nhân ở Nhật Bản, được chuyển sinh vào thế giới "Otome", và tuyệt vọng khi nhận ra quy luật của thế giới này- là nơi mà phụ nữ mới là những người nắm quyền. Đàn ông dường như chỉ là vật nuôi, phục vụ như những hòn đá tảng cho phụ nữ ở nơi đây.Ngoại lệ duy nhất là những mục tiêu trong trò chơi, một nhóm ikemen được dẫn đầu bởi thái tử điện hạ. Và trong tình huống quái dị này, Leon sở hữu một vũ khí bí mật. Đó chính là kí ức từ kiếp trước, khi mà đứa em gái trơ tráo bắt anh ta hoàn thành trò chơi này. Và Leon - Một người chỉ muốn sống một cách yên bình nơi chốn đồng quê, phải sử dụng những kiến thức ấy để chống lại phụ nữ và đám ikemen. Và đây là câu chuyện đầy bất ngờ trong việc đánh bại nữ chính độc ác ở thế giới Otome...</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 601, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"大塚剛央","avatar":"https://image.tmdb.org/t/p/w185/wqeAMR0HOGUPBXz0TCNxDR51cQy.jpg"},{"name":"市ノ瀬加那","avatar":"https://image.tmdb.org/t/p/w185/hBJx5tpLA2vkXqfkPZosGjW4e8C.jpg"},{"name":"ファイルーズあい","avatar":"https://image.tmdb.org/t/p/w185/coFu6WOVBZvqd1fw89vbHkiC0zB.jpg"},{"name":"佐倉綾音","avatar":"https://image.tmdb.org/t/p/w185/yPbTmntASE9psPIMhNGU5oo6vIH.jpg"},{"name":"鈴村健一","avatar":"https://image.tmdb.org/t/p/w185/vFqjmIjxfgBkh3ZmUin7QETV0sy.jpg"},{"name":"鳥海浩輔","avatar":"https://image.tmdb.org/t/p/w185/vlRQ77taCCKh7itCZn3IWJUiYQr.jpg"},{"name":"立花慎之介","avatar":"https://image.tmdb.org/t/p/w185/uPw2IDfXyndFDQ8vtdA69WDSnrz.jpg"},{"name":"遊佐浩二","avatar":"https://image.tmdb.org/t/p/w185/vBo8dHvZvbG4kax0LcaWvrXUZuX.jpg"},{"name":"檜山修之","avatar":"https://image.tmdb.org/t/p/w185/yxAzBPZGSzec9rtulmORY84ijzT.jpg"},{"name":"石田彰","avatar":"https://image.tmdb.org/t/p/w185/jnW2Gn2NlR2uwOCeyOuzypnTmkH.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Trapped in a Dating Sim","乙女游戏的世界对路人角色很不友好","乙女游戏世界对路人角色很不友好","女性向游戏世界对路人角色很不友好","乙女游戏世界对路人角色太严厉","Pris au piège dans un monde de rencontres: Un monde difficile pour les foules","Otomege Sekai wa Mob ni Kibishii Sekai desu","女性向遊戲世界對路人角色很不友好","Otome Game Sekai wa Mob ni Kibishii Sekai Desu","MobSeka","Thế Giới Otome Game Thật Khắc Nghiệt Với Nhân Vật Quần Chúng","⼄⼥ゲー世界はモブに厳しい世界です"]', '{"id":"139512","type":"tv","vote_average":7.4,"vote_count":89,"logo_url":"https://image.tmdb.org/t/p/original/hJ1HdeAZGlUfDa6ucBUpogNjbzV.png","backdrop_url":"https://image.tmdb.org/t/p/original/c0oFoz7PttzMLsQOQn54Lcu8V9d.jpg","poster_url":"https://image.tmdb.org/t/p/original/xgRsfKkVmxt2wKVr8923fJZW9qW.jpg","aspect_ratio":2.632}', '{"id":"tt16255458","vote_average":7.3}', 
  1789378914629, '2026-09-10T09:15:21.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('mac-ket-trong-game-hen-ho-the-gioi-game-otome-that-khac-nghiet-voi-nhan-vat-quan-chung-phan-2', 'Mắc Kẹt Trong Game Hẹn Hò: Thế Giới Game Otome Thật Khắc Nghiệt Với Nhân Vật Quần Chúng (Phần 2)', 'Trapped In A Dating Sim: The World of Otome Games Is Tough For Mobs (Season 2)', 'mắc kẹt trong game hẹn hò: thế giới game otome thật khắc nghiệt với nhân vật quần chúng (phần 2) trapped in a dating sim: the world of otome games is tough for mobs (season 2) 大塚剛央 市ノ瀬加那 ファイルーズあい 佐倉綾音 鈴村健一 鳥海浩輔 立花慎之介 遊佐浩二 檜山修之 石田彰', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thunder-3', 'Thunder 3', 'Thunder 3', 'https://phimimg.com/uploads/movies/20260710/thunder-3-thumb.webp', 'https://phimimg.com/uploads/movies/20260710/thunder-3-poster.webp', '<p>Là những học sinh cấp hai bình thường đến mức không có gì nổi bật, Pyontaro, Hiroshi và Tsubame bỗng chốc bước chân vào một cuộc phiêu lưu phi thường khi cô em gái nhỏ của Pyontaro đột nhiên mất tích.</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 640, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"鈴代紗弓","avatar":"https://image.tmdb.org/t/p/w185/7wEX0bXCs2djnp0dKsCqmMKZpZV.jpg"},{"name":"川井田夏海","avatar":"https://image.tmdb.org/t/p/w185/bdsKRWdB14DAAZzJnRjquWbqNYR.jpg"},{"name":"秋山絵理","avatar":"https://image.tmdb.org/t/p/w185/tsHg9DFtmhBe5zQ96RzozXUPIDR.jpg"},{"name":"蜜蜂ほのか","avatar":""},{"name":"坂田将吾","avatar":"https://image.tmdb.org/t/p/w185/fRRPNBz3OCNRdmLdUTdpq7dGqxM.jpg"},{"name":"坂泰斗","avatar":"https://image.tmdb.org/t/p/w185/pSExEOVmjAujKUyJJJSxC1WEzOM.jpg"},{"name":"広瀬ゆうき","avatar":"https://image.tmdb.org/t/p/w185/nLkHDUioXgQtQ74thpY2PfzFx6V.jpg"},{"name":"前川涼子","avatar":"https://image.tmdb.org/t/p/w185/xhnUNtx8c8tBxJL3KknZEVElG7G.jpg"},{"name":"石谷春貴","avatar":"https://image.tmdb.org/t/p/w185/5bugNo9kjEpzotXLkvMZ2pJ212h.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["サンダー３"]', '{"id":"326119","type":"tv","vote_average":7,"vote_count":1,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/7HTP5m1BTMMHhBpLqkjfGvHbVZJ.jpg","poster_url":"https://image.tmdb.org/t/p/original/dEpcSbbxtKrhRlK2LKIcsIbLPXK.jpg","aspect_ratio":null}', '{"id":"tt43589481","vote_average":null}', 
  1789378914628, '2026-09-10T09:15:02.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thunder-3', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thunder-3', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thunder-3', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thunder-3', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thunder-3', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thunder-3', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'thunder-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thunder-3', 'Thunder 3', 'Thunder 3', 'thunder 3 thunder 3 鈴代紗弓 川井田夏海 秋山絵理 蜜蜂ほのか 坂田将吾 坂泰斗 広瀬ゆうき 前川涼子 石谷春貴', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tay-du-ky-dai-nao', 'Tây Du Ký Đại Náo', 'The Monkey Hero', 'https://phimimg.com/uploads/movies/20260910/tay-du-ky-dai-nao-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/tay-du-ky-dai-nao-poster.webp', '<p>Trên đường sang Tây Trúc thỉnh kinh, 4 thầy trò Đường Tăng bất ngờ bị nhóm yêu quái gồm Ngưu Ma Vương, Thiết Phiến Công Chúa, Hồ Ly Tinh và Nhện Tinh phục kích. Trong lúc giao tranh, Ngộ Không bị quạt Ba Tiêu thổi bay sang một vết nứt không gian, rơi xuống một bãi rác lớn tại Thái Lan thời hiện đại. Tại đây, trong tình trạng mất đi gậy Như Ý, Mỹ Hầu Vương tình cờ được một gia đình nghèo khó cưu mang. Hành trình mới bắt đầu khi Ngộ Không vừa phải thích nghi với thế giới xa lạ, vừa tìm đường quay về cứu sư phụ, đồng thời đối mặt với những thử thách đầy cảm xúc ở thời hiện đại.</p>', 
  'Full', 1, 'single', 'completed', 70, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ผดุง ทรงแสง","avatar":"https://image.tmdb.org/t/p/w185/7kSSfwkf9o83kR5pvfA84mdTgkQ.jpg"},{"name":"ชูศักดิ์ เอี่ยมสุข","avatar":"https://image.tmdb.org/t/p/w185/8v7OnwLJO4QBe2we3l1PInJFa4H.jpg"},{"name":"กาจบัณฑิต ใจดี","avatar":"https://image.tmdb.org/t/p/w185/ubGLQ55DQEfEJaKbjBHEB6xQdqg.jpg"},{"name":"จักริน  ภูริพัฒน์","avatar":"https://image.tmdb.org/t/p/w185/1V7jiYQ1905NDSThtRU2iNxWyiB.jpg"},{"name":"นิภาภรณ์ ฐิติธนการ","avatar":"https://image.tmdb.org/t/p/w185/rMUTEhzKpXbXsmsEj6U7SJMhRED.jpg"},{"name":"องอาจ เจียมเจริญพรกุล","avatar":"https://image.tmdb.org/t/p/w185/i3e4IuDngcByoViRZ8HMwNMNdRw.jpg"},{"name":"พีจัง กฤษณะ ปันใจ","avatar":"https://image.tmdb.org/t/p/w185/1kkEnawrAS30T8T8p39vaU1KYkm.jpg"},{"name":"กฤตนัย อาสาฬห์ประกิต","avatar":"https://image.tmdb.org/t/p/w185/hFRq3nLmfJWdP7VxEs39ppoJS0N.jpg"},{"name":"Mark Thuwanon Traikup","avatar":"https://image.tmdb.org/t/p/w185/qh0g1oFJjZLkG9RqIUBTUDbdxB1.jpg"},{"name":"Wanvayla Boonnithipaisit","avatar":""}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Heng Jia Jazz","Wukong Jazz","เห้งเจียแจ๊ส"]', '{"id":"1532494","type":"movie","vote_average":5,"vote_count":1,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/9qu3iKGeayx6u9DUzu9dN6SYOpJ.jpg","poster_url":"https://image.tmdb.org/t/p/original/5XsZR3x1sBET2RPcuC5K4XPzaK5.jpg","aspect_ratio":null}', '{"id":"tt42004417","vote_average":3}', 
  1789378914627, '2026-09-10T09:14:02.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tay-du-ky-dai-nao', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tay-du-ky-dai-nao', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tay-du-ky-dai-nao', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tay-du-ky-dai-nao', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tay-du-ky-dai-nao', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tay-du-ky-dai-nao', 'le_thai');
DELETE FROM movies_fts WHERE slug = 'tay-du-ky-dai-nao';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tay-du-ky-dai-nao', 'Tây Du Ký Đại Náo', 'The Monkey Hero', 'tây du ký đại náo the monkey hero ผดุง ทรงแสง ชูศักดิ์ เอี่ยมสุข กาจบัณฑิต ใจดี จักริน  ภูริพัฒน์ นิภาภรณ์ ฐิติธนการ องอาจ เจียมเจริญพรกุล พีจัง กฤษณะ ปันใจ กฤตนัย อาสาฬห์ประกิต mark thuwanon traikup wanvayla boonnithipaisit', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tanya-chien-ky-phan-2', 'Tanya Chiến Ký (Phần 2)', 'Saga Of Tanya The Evil (Season 2)', 'https://phimimg.com/upload/vod/20260703-1/8be73977810615aa8477fe5d99def74f.jpg', 'https://phimimg.com/upload/vod/20260703-1/e95b02d3e2e34eaa97b8acf51468a5d6.jpg', '<p>Trên tiền tuyến giữa cuộc chiến, một cô gái nhỏ bé, tóc vàng, đôi mắt xanh kiên định, và làn da trắng nhuốm màu khói chiến tranh, bằng chất giọng lanh lảnh của mình, cô điều khiển cả sư đoàn pháp thuật của Đế Quốc. Cô chính là Thiếu Úy Tanya Degurechaff. Nhưng bản chất thật đằng sau hình hài cô gái 9 tuổi này là gì đây? Quả thật, cô chính là một chàng nhân viên ưu tú 30 tuổi, tái sinh dưới hình dạng một cô gái nhỏ, vì vậy anh đã kiêu ngạo mà nói phạm đến Chúa Trời nên phải chịu hình phạt này. Dù hình dáng nhỏ bé, nhưng Tanya vẫn không giấu được bản chất của một người chiến binh tàn bạo, coi trọng sự nghiệp của mình hơn bất cứ thứ gì khác, thậm chí cả mạng sống của những người dưới cô.</p>', 
  'Tập 10', 16, 'hoathinh', 'ongoing', 596, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"悠木碧","avatar":"https://image.tmdb.org/t/p/w185/a5Mkd66GV1l3c9bZZtnvjUf33T2.jpg"},{"name":"早見沙織","avatar":"https://image.tmdb.org/t/p/w185/gLv9lO7dlUbIsmyJUvgegqAAXki.jpg"},{"name":"三木眞一郎","avatar":"https://image.tmdb.org/t/p/w185/49Mg6xn69XlVDPPBDwxtNxes5zJ.jpg"},{"name":"玄田哲章","avatar":"https://image.tmdb.org/t/p/w185/7eJeYv2OCHKAadeFVdabVkpWldo.jpg"},{"name":"大塚芳忠","avatar":"https://image.tmdb.org/t/p/w185/3RHQcrsWnAFK6AifSis1lMq08cR.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["谭雅战记","幼女战记 沙漠意面大作战","Youjo Senki","Yōjo Senki","ようじょしぇんき","Военная хроника маленькой девочки","The Saga of Tanya the Evil","The Military Chronicles of a Little Girl","A Little Girl''s Military Record","幼女戦記"]', '{"id":"69346","type":"tv","vote_average":8.2,"vote_count":443,"logo_url":"https://image.tmdb.org/t/p/original/z84oc36IcdrvW97StnJXFved9lf.png","backdrop_url":"https://image.tmdb.org/t/p/original/xe2IkfzpGFObODJLTpBB9bdRpbB.jpg","poster_url":"https://image.tmdb.org/t/p/original/5nwiHomKZBBF9DLrolfZapi3fDm.jpg","aspect_ratio":3.751}', '{"id":"tt6455986","vote_average":7.6}', 
  1789378914626, '2026-09-10T09:12:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tanya-chien-ky-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tanya-chien-ky-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tanya-chien-ky-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tanya-chien-ky-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tanya-chien-ky-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tanya-chien-ky-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tanya-chien-ky-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'tanya-chien-ky-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tanya-chien-ky-phan-2', 'Tanya Chiến Ký (Phần 2)', 'Saga Of Tanya The Evil (Season 2)', 'tanya chiến ký (phần 2) saga of tanya the evil (season 2) 悠木碧 早見沙織 三木眞一郎 玄田哲章 大塚芳忠', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tai-sao-toi-lai-ket-hon-nua', 'Tại Sao Tôi Lại Kết Hôn Nữa?', 'Why Did I Get Married Again?', 'https://phimimg.com/uploads/movies/20260910/tai-sao-toi-lai-ket-hon-nua-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/tai-sao-toi-lai-ket-hon-nua-poster.webp', '<p>Các cặp đôi tái ngộ trong đám cưới của con gái của Marcus và Angela tại một điểm du lịch. Những rắc rối cũ lẫn mới lại kéo đến, khiến họ tự hỏi: "Tại sao chúng ta lại kết hôn nhỉ?"</p>', 
  'Full', 1, 'single', 'completed', 75, 2026, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Tyler Perry","avatar":"https://image.tmdb.org/t/p/w185/8KU0OizemVLrERXt5HJIa0PAkIN.jpg"},{"name":"Taraji P. Henson","avatar":"https://image.tmdb.org/t/p/w185/jUU2X9mDwJaAniEmJOfvImBS9qb.jpg"},{"name":"Jill Scott","avatar":"https://image.tmdb.org/t/p/w185/vfq3acT3sWG1b2M4ior10zqXFd1.jpg"},{"name":"Richard T. Jones","avatar":"https://image.tmdb.org/t/p/w185/hdko2C45Wr5G03Z8JwGjWMynP84.jpg"},{"name":"Tasha Smith","avatar":"https://image.tmdb.org/t/p/w185/viJnHL3BjQ5oqisXklQWGlh29Hx.jpg"},{"name":"Michael Jai White","avatar":"https://image.tmdb.org/t/p/w185/YPoHYuzR37wFpPpwEXZYQlhLln.jpg"},{"name":"Sharon Leal","avatar":"https://image.tmdb.org/t/p/w185/3dJCnAZDG2ZN7Hxct8UAdPePpuz.jpg"},{"name":"Lamman Rucker","avatar":"https://image.tmdb.org/t/p/w185/97JGsO3FR13MLa3hrs9A0cIzGBo.jpg"},{"name":"Armani Greer","avatar":""},{"name":"Everett Osborne","avatar":"https://image.tmdb.org/t/p/w185/mDBkxdX8p0fc1wEFNyAF5MFTHGG.jpg"}]', '[{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Why Did I Get Married 3","Tyler Perry''s Why Did I Get Married Again?","Neden Tekrar Evlendim?","Auch Liebe macht mal Ferien 3","Why Did I Get Married Again?"]', '{"id":"1522689","type":"movie","vote_average":8.3,"vote_count":3,"logo_url":"https://image.tmdb.org/t/p/original/zYeotZSMpPCRCp6xgvuq9xha5Km.png","backdrop_url":"https://image.tmdb.org/t/p/original/lJYniNRM2i9wXnfWVHOB4PxygFZ.jpg","poster_url":"https://image.tmdb.org/t/p/original/dCpFtRBCKKpy3oG6B1oXqaRagZv.jpg","aspect_ratio":9.313}', '{"id":"tt38061210","vote_average":null}', 
  1789378914625, '2026-09-10T09:12:40.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-sao-toi-lai-ket-hon-nua', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-sao-toi-lai-ket-hon-nua', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-sao-toi-lai-ket-hon-nua', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-sao-toi-lai-ket-hon-nua', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tai-sao-toi-lai-ket-hon-nua', 'le_au_my');
DELETE FROM movies_fts WHERE slug = 'tai-sao-toi-lai-ket-hon-nua';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tai-sao-toi-lai-ket-hon-nua', 'Tại Sao Tôi Lại Kết Hôn Nữa?', 'Why Did I Get Married Again?', 'tại sao tôi lại kết hôn nữa? why did i get married again? tyler perry taraji p. henson jill scott richard t. jones tasha smith michael jai white sharon leal lamman rucker armani greer everett osborne', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'su-nghien-ngap-hoan-hao', 'Sự Nghiện Ngập Hoàn Hảo', 'Perfect Addiction', 'https://phimimg.com/uploads/movies/20260709/su-nghien-ngap-hoan-hao-thumb.webp', 'https://phimimg.com/uploads/movies/20260709/su-nghien-ngap-hoan-hao-poster.webp', '<p>Akihito, một nam sinh đại học lăng nhăng và cuồng ngoại hình, cực kỳ ghét Sae — kẻ sở hữu gương mặt cực phẩm cùng thái độ ngạo mạn. Khi nhận ra cô gái mà mình đang tăm tia trong buổi xem mắt nhóm lại chủ động tiếp cận Sae, sự ức chế của Akihito đã chạm đỉnh. Đúng lúc đó, Akihito vô tình bắt gặp Sae đang cãi vã với một người đàn ông trước cửa khách sạn, từ đó phát hiện ra bí mật động trời: Sae thực chất là người đồng tính và đóng vai "dưới" (bottom). Sae thú nhận những rắc rối của bản thân khi không thể tìm được cảm giác hòa hợp trong chuyện chăn gối, một khía cạnh hoàn toàn tương phản với vẻ ngoài hoàn hảo thường ngày của anh. Bị kích động bởi lời khiêu khích, Akihito đã dùng vũ lực đè Sae xuống, thế nhưng chính Sae lúc này cũng không thể kìm nén bản thân thêm được nữa...?!</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 613, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Saito Soma","avatar":"https://image.tmdb.org/t/p/w185/8W8Y02Jmjivw0kk5PDih9dqiyd9.jpg"},{"name":"阿座上洋平","avatar":"https://image.tmdb.org/t/p/w185/rLIqw8pIjVIxPb5engrTbu9iOex.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["パーフェクトアディクション"]', '{"id":"314561","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/aMq3d2Jcmn1rwiech94kmjFzXDk.png","backdrop_url":"https://image.tmdb.org/t/p/original/3AoWp9dHpZHZuhYvAJaW4pEjIkP.jpg","poster_url":"https://image.tmdb.org/t/p/original/yvqBzg1YHek499OQP2k6MWWI23X.jpg","aspect_ratio":2.539}', '{"id":"tt43587112","vote_average":null}', 
  1789378914624, '2026-09-10T09:10:58.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-nghien-ngap-hoan-hao', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-nghien-ngap-hoan-hao', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-nghien-ngap-hoan-hao', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-nghien-ngap-hoan-hao', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-nghien-ngap-hoan-hao', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-nghien-ngap-hoan-hao', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'su-nghien-ngap-hoan-hao';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('su-nghien-ngap-hoan-hao', 'Sự Nghiện Ngập Hoàn Hảo', 'Perfect Addiction', 'sự nghiện ngập hoàn hảo perfect addiction saito soma 阿座上洋平', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'ReZERO - Bắt Đầu Lại Ở Thế Giới Khác (Phần 4)', 'ReZERO - Starting Life In Another World (Season 4)', 'https://phimimg.com/upload/vod/20260423-1/b2ee47fa752ddfa5793c46ae57537dde.jpg', 'https://phimimg.com/upload/vod/20260423-1/ffd6a732d5b223183fdcde2169e43b61.jpg', '<p>Re:Zero Mùa 4 sẽ tập trung vào Arc 6 (Hành lang ký ức), đưa Subaru và nhóm bạn tiến về phía đông đến Tháp canh Pleiades giữa sa mạc cát chết chóc để tìm cách giải cứu những người bị ăn mất &quot;tên&quot; và &quot;ký ức&quot;. Tại đây, họ phải đối mặt với 5 thử thách khắc nghiệt từ người canh giữ tòa tháp là Shaula và huyền thoại Reid Astrea, đồng thời Subaru sẽ rơi vào trạng thái tuyệt vọng tột cùng khi chính bản thân anh bị mất trí nhớ, không còn nhớ mình là ai hay khả năng &quot;Trở về từ cõi chết&quot;. Đây được đánh giá là phần nội dung đen tối và kịch tính nhất từ trước đến nay, nơi ranh giới giữa cái chết và sự điên loạn trở nên mong manh hơn bao giờ hết.</p>', 
  'Tập 16', 19, 'hoathinh', 'ongoing', 432, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"小林裕介","avatar":"https://image.tmdb.org/t/p/w185/y4ukKDSobZJNuB4H3k89hkrKCDC.jpg"},{"name":"高橋李依","avatar":"https://image.tmdb.org/t/p/w185/aeB7z0cBTASdjKOjQriBAO6hYq4.jpg"},{"name":"内山夕実","avatar":"https://image.tmdb.org/t/p/w185/JvavoF3YOLCf4LHfl4XvYobANE.jpg"},{"name":"村川梨衣","avatar":"https://image.tmdb.org/t/p/w185/pawIx7uhV1a2fAHjvTnrCP0KcHX.jpg"},{"name":"水瀬いのり","avatar":"https://image.tmdb.org/t/p/w185/cqOrQDUbbQLKpujzcK47YqjFdNp.jpg"},{"name":"新井里美","avatar":"https://image.tmdb.org/t/p/w185/v95wU1gpSLAOJS5yKFTxyheXAW2.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"}]', 
  '["Re:Zero -Começando uma Vida em Outro Mundo-","Re:ZERO -Começando a Vida em Outro Mundo-","从零开始的异世界生活","Re Zero Starting Life in Another World 2nd Season Part 2","Each One''s Promise","Re Zero Empezar de cero en un mundo diferente","RE:ZERO - Re:vivre dans un autre monde à partir de zéro","ReZERO - Starting Life in Another World","Re ZERO - Starting Life in Another World","Re Zero Starting Life in Another World","विषय: शून्य - एक दूसरी दुनिया में जीवन की शुरुआत","دوباره: هیچ، شروع زندگی در دنیایی دیگر","دوباره: صفر، شروع زندگی در دنیایی دیگر","Re zero Ricominciare in un altro mondo","Re:Zero kara Hajimeru Isekai Seikatsu","ReZero kara Hajimeru Isekai Seikatsu","Re:ゼロから始める異世界生活 2nd season","Re:ゼロから始める異世界生活 新編集版","Re:ゼロから始める異世界生活 3rd season 襲撃編","Re:ゼロから始める異世界生活 3rd season 反撃編","リゼロ","리제로","Re Zero","Re:Zero","ReZero","Re Zero Empezar de cero en un mundo diferente Temporada 2","Re: Жизнь в другом мире с нуля","Re: Жизнь в альтернативном мире с нуля","Re:Zero — жизнь с нуля в другом мире","Re:Zero. Жизнь с нуля в альтернативном мире","С нуля: Жизнь с нуля в альтернативном мире","Жизнь с нуля в альтернативном мире","Жизнь в альтернативном мире с нуля","Re:Zero.  Жизнь в aльтepнaтивнoм мире c нyля","Жизнь в другом мире с нуля","Ре Зеро Жизнь с нуля в альтернативном мире","Re：從零開始的異世界生活","Re:0","Re: Life in a Different World From Zero","Re:ゼロから始める異世界生活"]', '{"id":"65942","type":"tv","vote_average":7.9,"vote_count":683,"logo_url":"https://image.tmdb.org/t/p/original/tUZB6M02Dmh2WbfWBbE5l7Fnd0v.png","backdrop_url":"https://image.tmdb.org/t/p/original/7ZruEnSnHD6Jx5mF0hBt1E306Vt.jpg","poster_url":"https://image.tmdb.org/t/p/original/oHqYrPAsIiTD5m4DuxumV4er8BU.jpg","aspect_ratio":2.28}', '{"id":"tt5607616","vote_average":8.1}', 
  1789378914623, '2026-09-10T09:10:16.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'rezero-bat-dau-lai-o-the-gioi-khac-phan-4';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('rezero-bat-dau-lai-o-the-gioi-khac-phan-4', 'ReZERO - Bắt Đầu Lại Ở Thế Giới Khác (Phần 4)', 'ReZERO - Starting Life In Another World (Season 4)', 'rezero - bắt đầu lại ở thế giới khác (phần 4) rezero - starting life in another world (season 4) 小林裕介 高橋李依 内山夕実 村川梨衣 水瀬いのり 新井里美', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'phuong-trinh-tinh-yeu-2026', 'Phương Trình Tình Yêu', 'Love Algorithm', 'https://phimimg.com/uploads/movies/20260716/phuong-trinh-tinh-yeu-thumb.webp', 'https://phimimg.com/uploads/movies/20260716/phuong-trinh-tinh-yeu-poster.webp', '<p>Để cứu vãn tỷ suất người xem của một chương trình hẹn hò thực tế, biên kịch Cole mời ngôi sao mạng Phil tham gia mùa mới. Khi hai người bạn thân từng chia xa vì một hiểu lầm gặp lại nhau, ranh giới giữa kịch bản và cảm xúc thật dần trở nên mong manh.</p>', 
  'Tập 9', 10, 'series', 'ongoing', 586, 2026, 
  'Vietsub', 'FHD', 'Malaysia', 0, 
  '[{"name":"吴清年","avatar":"https://image.tmdb.org/t/p/w185/rPTy3jMWWtaLHy8VJFNUCqqtkxT.jpg"},{"name":"杨振宁","avatar":"https://image.tmdb.org/t/p/w185/bAHIwvzJePxBM4pjDfQwmyHanHm.jpg"},{"name":"美好","avatar":"https://image.tmdb.org/t/p/w185/QrEVIoFUQsjs6NBKXz0mBoLOHN.jpg"},{"name":"Lynn Lim","avatar":"https://image.tmdb.org/t/p/w185/ozdnR7onNQG7doi1Rw5ONhDE5Uv.jpg"},{"name":"舒森","avatar":"https://image.tmdb.org/t/p/w185/oSYXUvNjbSOVWKR1Xt2OLO1qMO5.jpg"},{"name":"刘利诚","avatar":"https://image.tmdb.org/t/p/w185/wpQ5ivK07AFYRbKwCxZvpsymZzh.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["戀愛演算法","Love Algorithm"]', '{"id":"328150","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/pxz9A2x6RO7BQxgGBuyrGtJ0e0w.png","backdrop_url":"https://image.tmdb.org/t/p/original/rtfuNfy7LUyfHceV7iaq8aoSk8X.jpg","poster_url":"https://image.tmdb.org/t/p/original/pcWWZ2St0HwU1YxwhivdUGmDtMZ.jpg","aspect_ratio":2.332}', '{"id":null,"vote_average":null}', 
  1789378914622, '2026-09-10T09:08:30.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phuong-trinh-tinh-yeu-2026', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('phuong-trinh-tinh-yeu-2026', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'phuong-trinh-tinh-yeu-2026';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('phuong-trinh-tinh-yeu-2026', 'Phương Trình Tình Yêu', 'Love Algorithm', 'phương trình tình yêu love algorithm 吴清年 杨振宁 美好 lynn lim 舒森 刘利诚', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nguoi-bien-mat', 'Người Biến Mất', 'Vanishing Point', 'https://phimimg.com/uploads/movies/20260910/nguoi-bien-mat-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/nguoi-bien-mat-poster.webp', '<p>Một thi thể bị che giấu, một đứa trẻ bị thất lạc và một vụ hành hung chưa có lời giải làm chấn động cả khu chung cư. Ba bi kịch này có mối liên hệ bí ẩn như thế nào?</p>', 
  'Full', 1, 'single', 'completed', 91, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Trịnh Khải","avatar":"https://image.tmdb.org/t/p/w185/wHUCaZAe8KkpXs6sXmPUr9B6C82.jpg"},{"name":"Lưu Hạo Tồn","avatar":"https://image.tmdb.org/t/p/w185/glcRdoV5329rX4mfoEBJDbFTdNw.jpg"},{"name":"Khưu Trạch","avatar":"https://image.tmdb.org/t/p/w185/6T4V9lzPyGgteHmTEBbAr8se5sT.jpg"},{"name":"Lý Thần","avatar":"https://image.tmdb.org/t/p/w185/29SF639O4mzp3dhIuIFcaux0Te9.jpg"},{"name":"姜妍","avatar":"https://image.tmdb.org/t/p/w185/o5TZh9UN3h4tlGgCIMQWf4kW23m.jpg"},{"name":"Tất Văn Quân","avatar":"https://image.tmdb.org/t/p/w185/l5660lRS4dzmsFZwX6KXKinSi53.jpg"},{"name":"Phùng Binh","avatar":"https://image.tmdb.org/t/p/w185/bJD6iFzBxR5o23umSFxAniXBP7B.jpg"},{"name":"Huỳnh Tiểu Lội","avatar":"https://image.tmdb.org/t/p/w185/4PrbAr5Hj0ZHubA3o9H0W0Z72GN.jpg"},{"name":"Lý Mộng","avatar":"https://image.tmdb.org/t/p/w185/uMOoic1tyHlzFFG4NdCsiDXZKE1.jpg"},{"name":"张琪","avatar":"https://image.tmdb.org/t/p/w185/551lK9R9EQBQh7bLlP5EPu1biRb.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Vanishing Point","คดี ลึก ตึก ลับ","消失的人"]', '{"id":"1658653","type":"movie","vote_average":6.6,"vote_count":10,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/49CFmJAkesNKgSr8YZHcOiwT0ks.jpg","poster_url":"https://image.tmdb.org/t/p/original/v6Wq7P2UvgkEIczgS1fiHBzoJ1m.jpg","aspect_ratio":null}', '{"id":"tt34885279","vote_average":6.6}', 
  1789378914621, '2026-09-10T09:07:38.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-bien-mat', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-bien-mat', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-bien-mat', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-bien-mat', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nguoi-bien-mat', 'le_trung');
DELETE FROM movies_fts WHERE slug = 'nguoi-bien-mat';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nguoi-bien-mat', 'Người Biến Mất', 'Vanishing Point', 'người biến mất vanishing point trịnh khải lưu hạo tồn khưu trạch lý thần 姜妍 tất văn quân phùng binh huỳnh tiểu lội lý mộng 张琪', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nghich-thien-ta-than', 'Nghịch Thiên Tà Thần', 'Against The Gods', 'https://phimimg.com/upload/vod/20260420-1/a00de874909fb1bfb7f7749f926081a3.jpg', 'https://phimimg.com/upload/vod/20260420-1/0a4c1589001cf10c879d5b8c4f7e75d6.jpg', '<p>Trên đại lục Thương Vân, Đại Thổ Y Tông đã bị sát hại tàn nhẫn vì giữ một trong bảy viên Thần Dược Thiên Không. Việc này đã khiến cho cả thiên hạ đều thèm muốn viên Thần Dược này, dẫn đến cái chết đau đớn của ông. Người trò truyện của ông, Vân Triệt, đã mang viên Thần Dược này để báo thù cho thầy, và trong quá trình này đã gieo ra biết bao sóng gió và chết chóc. Cuối cùng, anh đã bị các cao thủ võ lâm đẩy đến bước đường cùng tại Thiên Huyền Dã. Dẫu vậy, Vân Triệt đã không chịu khuất phục, anh nuốt viên Thần Dược đó và nhảy xuống vực tự tử. Tuy nhiên, ý thức của anh không biết bởi một lực lượng bí ẩn đã hướng dẫn, anh đã tự mình vượt thời gian và tỉnh dậy trong thế giới Thiên Huyền Lục Lâm, trên cơ thể của một thiếu niên tên là Tiêu Triệt</p>', 
  'Tập 54', 80, 'hoathinh', 'ongoing', 524, 2023, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"郭鸿博","avatar":"https://image.tmdb.org/t/p/w185/kTEy2Gvj2uI1MwCC0BjoYfItGFS.jpg"},{"name":"沈达威","avatar":"https://image.tmdb.org/t/p/w185/4waVqoZINWqElh32KqEAT6vSfM9.jpg"},{"name":"謝添天","avatar":"https://image.tmdb.org/t/p/w185/3RS6TsYil8pbdt4hlD2HHeVwYKz.jpg"},{"name":"冯骏骅","avatar":"https://image.tmdb.org/t/p/w185/xGx9YUyaOTDcvxHlu2CXq08FOW9.jpg"},{"name":"文晓依","avatar":"https://image.tmdb.org/t/p/w185/pztsEIp8rbXSBJfdcddBs6jyxFf.jpg"},{"name":"冯骏骅","avatar":"https://image.tmdb.org/t/p/w185/xGx9YUyaOTDcvxHlu2CXq08FOW9.jpg"},{"name":"Wang Rui Qi","avatar":""},{"name":"Xiao zheng","avatar":"https://image.tmdb.org/t/p/w185/xvEK96KhitfEpja7I5L4zG9DKIn.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["逆天邪神3D","Ni Tian Xie Shen","Contra los dioses malvados","Against the Gods","Nghịch Thiên Tà Thần","逆天邪神"]', '{"id":"235643","type":"tv","vote_average":8.8,"vote_count":5,"logo_url":"https://image.tmdb.org/t/p/original/8udB7ooyGi6rSNxsJCcIZ5CdXOZ.png","backdrop_url":"https://image.tmdb.org/t/p/original/8hj0mxCTJkgVWkagdxzfYdVXHVc.jpg","poster_url":"https://image.tmdb.org/t/p/original/5tkrlTCmx2G3lUUdiXFNxSxmelo.jpg","aspect_ratio":1.87}', '{"id":"tt27517921","vote_average":8.6}', 
  1789378914620, '2026-09-10T09:05:52.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nghich-thien-ta-than', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'nghich-thien-ta-than';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nghich-thien-ta-than', 'Nghịch Thiên Tà Thần', 'Against The Gods', 'nghịch thiên tà thần against the gods 郭鸿博 沈达威 謝添天 冯骏骅 文晓依 冯骏骅 wang rui qi xiao zheng', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'mua-he-nam-ay-2026', 'Mùa Hè Năm Ấy', 'That Summer', 'https://phimimg.com/uploads/movies/20260808/mua-he-nam-ay-2026-thumb.webp', 'https://phimimg.com/uploads/movies/20260808/mua-he-nam-ay-2026-poster.webp', '<p>Lấy bối cảnh trải dài giữa những năm tháng thanh xuân và hiện tại sau gần một thập kỷ, Mùa hè năm ấy kể câu chuyện về tình bạn, tình yêu và những biến cố khi còn trên ghế nhà trường.</p>', 
  'Tập 15', 40, 'series', 'ongoing', 727, 2026, 
  'Vietsub', 'FHD', 'Việt Nam', 0, 
  '[{"name":"Long Vũ","avatar":"https://image.tmdb.org/t/p/w185/74gVCajySJmcEDO5xqPHIDlK6yJ.jpg"},{"name":"Lưu Ly","avatar":""},{"name":"Hà Thành","avatar":""},{"name":"Nguyễn Hoàng Hải","avatar":""},{"name":"Nguyễn Trinh","avatar":""},{"name":"Tô Dũng","avatar":"https://image.tmdb.org/t/p/w185/apvCDZZ9wUvc4BE2AEKJOjmPZkJ.jpg"},{"name":"Minh Thu","avatar":"https://image.tmdb.org/t/p/w185/cqAUKs8N6UTaSt0VfWL5QhsqpwG.jpg"},{"name":"Vân Dung","avatar":"https://image.tmdb.org/t/p/w185/sHA1scCcuVvDBvzo1y6W4JeFHb.jpg"},{"name":"Anh Tuấn","avatar":"https://image.tmdb.org/t/p/w185/ju6yn3xFTsyqrXiT5HQMSWRSxQV.jpg"},{"name":"Hồng Hạnh","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Mùa hè năm ấy"]', '{"id":"331035","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/1IOm7aIUKB93DrfmCsXElP4UZ45.jpg","poster_url":"https://image.tmdb.org/t/p/original/wduCYoh4FA4EzW9awgGRi9nPF4J.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914619, '2026-09-10T09:04:24.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mua-he-nam-ay-2026', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mua-he-nam-ay-2026', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mua-he-nam-ay-2026', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('mua-he-nam-ay-2026', 'bo_vn');
DELETE FROM movies_fts WHERE slug = 'mua-he-nam-ay-2026';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('mua-he-nam-ay-2026', 'Mùa Hè Năm Ấy', 'That Summer', 'mùa hè năm ấy that summer long vũ lưu ly hà thành nguyễn hoàng hải nguyễn trinh tô dũng minh thu vân dung anh tuấn hồng hạnh', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'Nữ Anh Hùng? Thánh Nữ? Không, Tôi Chỉ Là Một Hầu Gái Đảm Đang (Và Tự Hào Về Điều Đó)!', 'Heroine? Saint? No, I''m an All-Works Maid (and Proud of It)!', 'https://phimimg.com/upload/vod/20260624-1/7ff159a01fa1e15897bb6280436b6ce8.jpg', 'https://phimimg.com/upload/vod/20260624-1/7522d87508d184b3d5ecf8e292b5b41a.jpg', '<p>Melody có thể là vị nữ anh hùng và thánh nữ mang thiên mệnh giải cứu thế giới khỏi sự trỗi dậy của ma vương — thế nhưng ước muốn duy nhất của cô lại là trở thành một hầu gái hoàn hảo! Sau khi chuyển sinh vào một trò chơi điện tử cốt truyện, Melody đã rẽ hướng khỏi lộ trình định sẵn, thẳng thừng từ chối lời kêu gọi dấn thân vào cuộc chiến, thay vào đó cô lại dùng chính sức mạnh thần thánh của mình để... dọn dẹp nhà cửa. Quyết định này khiến thế giới mới của cô ngày càng trở nên hỗn loạn, còn cốt truyện gốc thì sao? Hoàn toàn đảo lộn và không cách nào lường trước được.</p>', 
  'Hoàn Tất (12/12)', 12, 'hoathinh', 'completed', 505, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"宮本侑芽","avatar":"https://image.tmdb.org/t/p/w185/8PzHX7owawEZKq7Eg9WwcmWYx9s.jpg"},{"name":"大久保瑠美","avatar":"https://image.tmdb.org/t/p/w185/cf4cnFMllu1yO3X0gCGGDdl8GXW.jpg"},{"name":"日笠陽子","avatar":"https://image.tmdb.org/t/p/w185/mP3bj0s1gqJ6tCKFLhu4b1CkJj7.jpg"},{"name":"天﨑滉平","avatar":"https://image.tmdb.org/t/p/w185/tnN5jLiLjcDa7qn88uLb1iAfivL.jpg"},{"name":"小野友樹","avatar":"https://image.tmdb.org/t/p/w185/oEx13CbNLsHzURdYafkFJYXDjfm.jpg"},{"name":"堀江瞬","avatar":"https://image.tmdb.org/t/p/w185/1OFi5ofRX0B2ldTPF8ThzLI2wKa.jpg"},{"name":"仲村宗悟","avatar":"https://image.tmdb.org/t/p/w185/x3StSWtwrq909arQAIDnONZwNb8.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Heroine? Seijo? Iie, All Works Maid desu (Ko)!","Heroine? Seijo? Iie, All Works Maid desu (Hokori)!","ヒロイン？聖女？いいえ、オールワークスメイドです（誇）！","Heroine Seijo Iie All Works Maid desu Ko","히로인？ 성녀？ 아니요, 올 워크스 메이드입니다(자랑)!"]', '{"id":"286346","type":"tv","vote_average":8,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/kT2fq7MIk1g9wqoePaKBAngitbn.png","backdrop_url":"https://image.tmdb.org/t/p/original/yHJ9hkkOmvTnPF6BzDYffFV09OI.jpg","poster_url":"https://image.tmdb.org/t/p/original/hEczt3q4aLcacC3QJaaj2CG9VsP.jpg","aspect_ratio":3.595}', '{"id":"tt41276835","vote_average":null}', 
  1789378914618, '2026-09-10T09:03:16.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nu-anh-hung-thanh-nu-khong-toi-chi-la-mot-hau-gai-dam-dang-va-tu-hao-ve-dieu-do', 'Nữ Anh Hùng? Thánh Nữ? Không, Tôi Chỉ Là Một Hầu Gái Đảm Đang (Và Tự Hào Về Điều Đó)!', 'Heroine? Saint? No, I''m an All-Works Maid (and Proud of It)!', 'nữ anh hùng? thánh nữ? không, tôi chỉ là một hầu gái đảm đang (và tự hào về điều đó)! heroine? saint? no, i''m an all-works maid (and proud of it)! 宮本侑芽 大久保瑠美 日笠陽子 天﨑滉平 小野友樹 堀江瞬 仲村宗悟', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'Kẻ Mang Cấp 999 Từ Làng Quê (Dân Làng Cấp 999)', 'The Villager Of Level 999', 'https://phimimg.com/upload/vod/20260702-1/371a851fe264aba5ba792e50dbc7e8bd.jpg', 'https://phimimg.com/upload/vod/20260702-1/d6636feba0735a0b093f8c0cae118f01.jpg', '<p>Tại thế giới Earthclear, mọi người đều sinh ra với một vai trò cố định, và &quot;dân làng&quot; là những kẻ yếu ớt nhất trong số đó. Hầu hết họ không bao giờ có thể vượt qua Cấp độ 5 — ngoại trừ Koji Kagami, một dân làng sở hữu Cấp độ lên tới... 999?! Trong một cuộc săn lùng quái vật, anh tình cờ gặp gỡ Alice, con gái của Ma Vương, và phát hiện ra rằng cả hai cùng chia sẻ một giấc mơ tưởng chừng như không tưởng: sự chung sống hòa bình giữa loài người và ma tộc. Giữa một thế giới vốn được định sẵn cho những xung đột tàn khốc, họ đã cùng nhau lao vào trận chiến để thách thức số phận và đập tan những quy luật bất công.</p>', 
  'Hoàn Tất (12/12)', 12, 'hoathinh', 'completed', 557, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"猪股慧士","avatar":"https://image.tmdb.org/t/p/w185/hAoRLGuberMhFY1f6ULJGiIu1e.jpg"},{"name":"東山奈央","avatar":"https://image.tmdb.org/t/p/w185/6WJDd1z946yFfZBgpC7dWi0FyQw.jpg"},{"name":"江頭宏哉","avatar":"https://image.tmdb.org/t/p/w185/fgcbBLbYNqy4JfVZ5MX8AKrJJl7.jpg"},{"name":"Manaka Iwami","avatar":"https://image.tmdb.org/t/p/w185/leKMaCBswXG8u4mfQNQ7J3y6Xow.jpg"},{"name":"島﨑信長","avatar":"https://image.tmdb.org/t/p/w185/qke5rZusHsjSlvB0NKlJ5dQF5D.jpg"},{"name":"古賀葵","avatar":"https://image.tmdb.org/t/p/w185/uVpwheVV4aPROyY1toYv3v5HSPD.jpg"},{"name":"Lynn","avatar":"https://image.tmdb.org/t/p/w185/eJ2NqgzpnzNbT6Nt9EpDfzqNeZM.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Lv999 no Murabito","The Villager of Level 999","The Level 999 Villager","Dân Làng Cấp 999","LV999の村人"]', '{"id":"298994","type":"tv","vote_average":9,"vote_count":4,"logo_url":"https://image.tmdb.org/t/p/original/otwUTnSUwwEc1D0t4YctXkvYykY.png","backdrop_url":"https://image.tmdb.org/t/p/original/ydWwc4NOeDb7t8pcR3tf6n12rLB.jpg","poster_url":"https://image.tmdb.org/t/p/original/pXnQuQyt7LUb62ZF9J6vDAcymIW.jpg","aspect_ratio":1.077}', '{"id":"tt38262097","vote_average":null}', 
  1789378914617, '2026-09-10T09:00:51.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'ke-mang-cap-999-tu-lang-que-dan-lang-cap-999';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ke-mang-cap-999-tu-lang-que-dan-lang-cap-999', 'Kẻ Mang Cấp 999 Từ Làng Quê (Dân Làng Cấp 999)', 'The Villager Of Level 999', 'kẻ mang cấp 999 từ làng quê (dân làng cấp 999) the villager of level 999 猪股慧士 東山奈央 江頭宏哉 manaka iwami 島﨑信長 古賀葵 lynn', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'Vua Ma Thú, Đứa Trẻ Định Mệnh Và Anh Hùng Bất Tử (Phần 2)', 'Clevatess (Season 2)', 'https://phimimg.com/uploads/movies/20260709/vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260709/vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2-poster.webp', '<p>Một nhóm anh hùng lên đường tiêu diệt Cleavatess, vua của các loài thú. Nhưng họ vấp phải một âm mưu hủy diệt thế giới và phải nhờ Cleavatess giúp đỡ.</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 460, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"白石晴香","avatar":"https://image.tmdb.org/t/p/w185/hrQxTVNGLi3jXC7v4kETArpA0dV.jpg"},{"name":"田村睦心","avatar":"https://image.tmdb.org/t/p/w185/uvbBIRiBK6GDLEESiYSFWOVlaE4.jpg"},{"name":"Nakamura Yuichi","avatar":"https://image.tmdb.org/t/p/w185/wb8behVKjBHX9XXrEydvNINCYwH.jpg"},{"name":"会沢紗弥","avatar":"https://image.tmdb.org/t/p/w185/3QoVKl1w7uBMf5ivJ4MccYkt4zR.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Clevatess - O Rei das Feras Diabólicas, O bebê e a Valente Heróina Morta-Viva","Clevatess-魔兽之王与婴儿与尸之勇者-","克雷瓦提斯-魔兽之王与婴儿与尸之勇者-","Clevatess.Majuu.no.Ou.to.Akago.to.Kabane.no.Yuusha","魔獸之王與嬰兒與屍之勇者","－魔獸之王與嬰兒與屍之勇者－","Clevatess: Majuu no Ou to Akago to Shikabane no Yuusha","Clevatess Majuu no Ou to Akago to Kabane no Yuusha","Clevatess Majuu no Ou to Itsuwari no Yuusha Denshou","Clevatess Ⅱ－魔獸之王與虛假的勇者傳承－","Clevatess: The King of Devil Beasts, The Baby and the Brave of Undead","Clevatess - The King of Magical Beasts, the Baby, and the Corpse Hero","クレバテス-魔獣の王と赤子と屍の勇者"]', '{"id":"258348","type":"tv","vote_average":8,"vote_count":85,"logo_url":"https://image.tmdb.org/t/p/original/sSoQShcfjlAUeWhXoHXtFNFNgfl.png","backdrop_url":"https://image.tmdb.org/t/p/original/5nmg2cEZxA09VyDvioAuqd5jOW0.jpg","poster_url":"https://image.tmdb.org/t/p/original/8D13BxQUrtU6ORMpl8loY6Pukq7.jpg","aspect_ratio":3.06}', '{"id":"tt32991344","vote_average":7.7}', 
  1789378914616, '2026-09-10T09:00:03.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('vua-ma-thu-dua-tre-dinh-menh-va-anh-hung-bat-tu-phan-2', 'Vua Ma Thú, Đứa Trẻ Định Mệnh Và Anh Hùng Bất Tử (Phần 2)', 'Clevatess (Season 2)', 'vua ma thú, đứa trẻ định mệnh và anh hùng bất tử (phần 2) clevatess (season 2) 白石晴香 田村睦心 nakamura yuichi 会沢紗弥', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bong-duoi-trang', 'Bóng Dưới Trăng', 'Moonshadow', 'https://phimimg.com/uploads/movies/20260813/bong-duoi-trang-thumb.webp', 'https://phimimg.com/uploads/movies/20260813/bong-duoi-trang-poster.webp', '<p>Một thỏa thuận không giống ai sau tình một đêm dần phát triển thành tình yêu chân thành giữa hai người phụ nữ. Thế nhưng, mối quan hệ của họ gặp phải thử thách lớn khi mối tình đầu của một trong hai người bất ngờ quay trở lại.</p>', 
  'Tập 5', 10, 'series', 'ongoing', 268, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ทสร กลิ่นเนียม","avatar":"https://image.tmdb.org/t/p/w185/hILhes1WJz7orgrrAjfTJKDd24c.jpg"},{"name":"ภัทราภัสร์ โบรัชตะสุวรรณ์","avatar":"https://image.tmdb.org/t/p/w185/cJ3XCrxJRkRgyWmxDN4PyxF7Di4.jpg"},{"name":"รชานันท์ มหาวรรณ์","avatar":"https://image.tmdb.org/t/p/w185/torptlDTdmoGy8UCaKjl0s0MlLC.jpg"},{"name":"จุฑาพิชญ์ อินทร์จันทร์","avatar":"https://image.tmdb.org/t/p/w185/ftXypjQ9xqs0WX02WlCNwwX74S7.jpg"},{"name":"เค เลิศสิทธิชัย","avatar":"https://image.tmdb.org/t/p/w185/ysx73YbaMskHvQoI6TwpnnnwpQ4.jpg"},{"name":"ชยพล จุฑามาศ","avatar":"https://image.tmdb.org/t/p/w185/ujsdysEnKlfQI04TqHWNLM6ch31.jpg"},{"name":"Pete Thongchua","avatar":"https://image.tmdb.org/t/p/w185/xUG408gAffC1VDiOfQaOnYrsXJA.jpg"},{"name":"Supranee Charoenpol","avatar":"https://image.tmdb.org/t/p/w185/1qLzg4uZNq0QiU8ES8t0jNnysGf.jpg"},{"name":"สโรชา วาทิตตพันธ์","avatar":"https://image.tmdb.org/t/p/w185/hmNxh6uufKcwOkq14L0DwKbvTPr.jpg"},{"name":"อาภาศิริ นิติพน","avatar":"https://image.tmdb.org/t/p/w185/yGuaZcWRowFq5E7ws0vCReikoR8.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Ngao Tai Phrajan","Ngao Tai Phrachan","A Shadow Underneath the Moon","Moon Shadow","เงาใต้พระจันทร์"]', '{"id":"307433","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/iStVmw4L0qIgOozuEUGHdHF6Bds.png","backdrop_url":"https://image.tmdb.org/t/p/original/x0Pecpi3psUsJWdvjPdLr9YkjSY.jpg","poster_url":"https://image.tmdb.org/t/p/original/nnLefz2jRdfEZrkZgl8J4rG2H9v.jpg","aspect_ratio":2.689}', '{"id":"tt39044683","vote_average":null}', 
  1789378914615, '2026-09-10T08:59:36.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bong-duoi-trang', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bong-duoi-trang', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bong-duoi-trang', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bong-duoi-trang', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'bong-duoi-trang';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bong-duoi-trang', 'Bóng Dưới Trăng', 'Moonshadow', 'bóng dưới trăng moonshadow ทสร กลิ่นเนียม ภัทราภัสร์ โบรัชตะสุวรรณ์ รชานันท์ มหาวรรณ์ จุฑาพิชญ์ อินทร์จันทร์ เค เลิศสิทธิชัย ชยพล จุฑามาศ pete thongchua supranee charoenpol สโรชา วาทิตตพันธ์ อาภาศิริ นิติพน', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'me-ke-chi-ke-khong-he-khat-khe', 'Mẹ Kế, Chị Kế Không Hề Khắt Khe', 'My Stepmother And Stepsisters Aren''t Wicked', 'https://phimimg.com/uploads/movies/20260709/me-ke-chi-ke-khong-he-khat-khe-thumb.webp', 'https://phimimg.com/uploads/movies/20260709/me-ke-chi-ke-khong-he-khat-khe-poster.webp', '<p>Khi người mẹ yêu dấu qua đời vì bạo bệnh, Miya Nakamura, cô con gái riêng của một gia tộc danh giá, được đưa về phủ chính của gia đình Kounokura. Nghĩ rằng bản thân sẽ chỉ nhận lại sự khinh miệt và tàn nhẫn vì là con của phòng nhì, Miya đã chuẩn bị tâm lý cho tình huống tồi tệ nhất... Thế nhưng, thứ đón chờ cô tại đây lại là một điều mà cô chưa từng dám nghĩ tới...!</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 466, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"鈴木日菜","avatar":""},{"name":"くじら","avatar":"https://image.tmdb.org/t/p/w185/dL2u3VyRBswwTEW4E8lbsHbqzeZ.jpg"},{"name":"芹澤優","avatar":"https://image.tmdb.org/t/p/w185/mQITB0XYHCZjYef39xsHnSHIH56.jpg"},{"name":"貫井柚佳","avatar":"https://image.tmdb.org/t/p/w185/bTFcrrgj9B8QAXa1NKqlsrdwWka.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Ibitte Konai Gibo to Gishi","My mother-in-law and sister-in-law who don''t bully me.","いびってこない義母と義姉"]', '{"id":"298103","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/y7vn7XmzvQVfc4AmL0yRfQhDqht.png","backdrop_url":"https://image.tmdb.org/t/p/original/g6sczqCMA7vROHUOMmT5Jt8ZEjz.jpg","poster_url":"https://image.tmdb.org/t/p/original/2YNWQmksDyz14XWSlNNVdjwQdIG.jpg","aspect_ratio":1}', '{"id":"tt37674481","vote_average":null}', 
  1789378914614, '2026-09-10T08:59:14.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-ke-chi-ke-khong-he-khat-khe', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-ke-chi-ke-khong-he-khat-khe', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-ke-chi-ke-khong-he-khat-khe', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-ke-chi-ke-khong-he-khat-khe', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-ke-chi-ke-khong-he-khat-khe', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-ke-chi-ke-khong-he-khat-khe', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'me-ke-chi-ke-khong-he-khat-khe';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('me-ke-chi-ke-khong-he-khat-khe', 'Mẹ Kế, Chị Kế Không Hề Khắt Khe', 'My Stepmother And Stepsisters Aren''t Wicked', 'mẹ kế, chị kế không hề khắt khe my stepmother and stepsisters aren''t wicked 鈴木日菜 くじら 芹澤優 貫井柚佳', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'de-che-dai-han-phan-2', 'Đế Chế Đại Hàn (Phần 2)', 'Made in Korea (Season 2)', 'https://phimimg.com/uploads/movies/20260910/de-che-dai-han-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260910/de-che-dai-han-phan-2-poster.webp', '<p>Phần 2 tiếp tục xoáy sâu vào những cuộc đấu đá quyền lực căng thẳng, lòng tham, sự trả thù và phản bội gia đình, đặt hai nhân vật chính ở các chiến tuyến đối lập giữa một bên là khát vọng quyền lực/tiền tài và một bên là công lý.</p>', 
  'Tập 2', 6, 'series', 'ongoing', 230, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"현빈","avatar":"https://image.tmdb.org/t/p/w185/JQFzhO9j8HRiyr7leGPj6cqhvM.jpg"},{"name":"정우성","avatar":"https://image.tmdb.org/t/p/w185/tI0ANQSwcOBfQUeHgfcwn7VmHRO.jpg"},{"name":"차희","avatar":"https://image.tmdb.org/t/p/w185/bZBjbIBxYj2uiLivLluOk5Lcd5R.jpg"},{"name":"이세호","avatar":"https://image.tmdb.org/t/p/w185/75a945zgCaCP6Mib6EynICgZO6b.jpg"}]', '[{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["Made in Korea","Me-i-deu.in.Ko-ri-a","صنع في كوريا","Made in Korea 2","메이드 인 코리아"]', '{"id":"246473","type":"tv","vote_average":8.1,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/sYnPiZTw8VqB2gOyncrgusDNQCI.png","backdrop_url":"https://image.tmdb.org/t/p/original/3GmRS3efCTp6jumogKOxYBrV5mO.jpg","poster_url":"https://image.tmdb.org/t/p/original/zmEl8it47YgwPHe0BD1gep5EGdG.jpg","aspect_ratio":8.017}', '{"id":"tt33298903","vote_average":null}', 
  1789378914613, '2026-09-10T04:22:51.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('de-che-dai-han-phan-2', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('de-che-dai-han-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('de-che-dai-han-phan-2', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'de-che-dai-han-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('de-che-dai-han-phan-2', 'Đế Chế Đại Hàn (Phần 2)', 'Made in Korea (Season 2)', 'đế chế đại hàn (phần 2) made in korea (season 2) 현빈 정우성 차희 이세호', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'manh-moi-cuoi-cung-phan-1', 'Manh Mối Cuối Cùng (Phần 1)', 'Last Seen (Season 1)', 'https://phimimg.com/uploads/movies/20260909/manh-moi-cuoi-cung-phan-1-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/manh-moi-cuoi-cung-phan-1-poster.webp', '<p>Khi nhân viên trực tổng đài khẩn cấp Ian Ridley nhận được cuộc gọi hoảng loạn từ một cô bé tuổi teen mà anh tin có thể là cô con gái mất tích từ lâu của mình, anh bất chấp tất cả để tìm ra cô bé.</p>', 
  'Tập 2', 6, 'series', 'ongoing', 129, 2026, 
  'Vietsub', 'FHD', 'Úc', 0, 
  '[{"name":"Patrick Brammall","avatar":"https://image.tmdb.org/t/p/w185/l4IlGBxkYcCwqtfuKfWyHa9JCn6.jpg"},{"name":"Brendan Cowell","avatar":"https://image.tmdb.org/t/p/w185/9Bjc4wYjqAJXMwmy6rKsYq2PeWV.jpg"},{"name":"Maxine Peake","avatar":"https://image.tmdb.org/t/p/w185/uChlrL5WyeXhvGFaNvbzw1KqMgP.jpg"},{"name":"Daniel Henshall","avatar":"https://image.tmdb.org/t/p/w185/spfdesJvIoPTmZWMe5ncyMbnOV5.jpg"},{"name":"Jessica Wren","avatar":"https://image.tmdb.org/t/p/w185/99Ap2TU7x1x8kQwA5LJryiooO9T.jpg"},{"name":"Zahra Newman","avatar":"https://image.tmdb.org/t/p/w185/auBhD3wWucl5PuDaftnXmBPcSeL.jpg"},{"name":"Tobias Muhafidin","avatar":"https://image.tmdb.org/t/p/w185/7on1hTZFxmG6pjoUKr2hhEPZajn.jpg"},{"name":"Chloe Jean Lourdes","avatar":"https://image.tmdb.org/t/p/w185/8mz5srBk7RdOPeOzY0RmeHA0Oln.jpg"}]', '[{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"}]', 
  '["Last Seen"]', '{"id":"258230","type":"tv","vote_average":9,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/bNEhlcDm6D5c3qVD7TFty80Uq3B.png","backdrop_url":"https://image.tmdb.org/t/p/original/7bLffQv1ZhD22PFlhBXzb0RBqC0.jpg","poster_url":"https://image.tmdb.org/t/p/original/yU6DEUb9gC8bWpKgVrnkit0QVXz.jpg","aspect_ratio":3.745}', '{"id":"tt6037988","vote_average":null}', 
  1789378914612, '2026-09-09T23:40:23.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('manh-moi-cuoi-cung-phan-1', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('manh-moi-cuoi-cung-phan-1', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('manh-moi-cuoi-cung-phan-1', 'bi-an');
DELETE FROM movies_fts WHERE slug = 'manh-moi-cuoi-cung-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('manh-moi-cuoi-cung-phan-1', 'Manh Mối Cuối Cùng (Phần 1)', 'Last Seen (Season 1)', 'manh mối cuối cùng (phần 1) last seen (season 1) patrick brammall brendan cowell maxine peake daniel henshall jessica wren zahra newman tobias muhafidin chloe jean lourdes', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-phi-pham', 'Bác Sĩ Phi Phàm', 'Fantastic Doctors', 'https://phimimg.com/uploads/movies/20260908/bac-si-phi-pham-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/bac-si-phi-pham-poster.webp', '<p>Bác sĩ trẻ Trần Huy (Trương Vãn Ý thủ vai) là một thiên tài y học mắc "Hội chứng Asperger". Anh sở hữu khả năng chẩn đoán và kiến thức y khoa kinh ngạc, nhưng lại gặp rào cản xã hội, không thể hiểu được nhân tình thế thái nên rất khó giao tiếp với bệnh nhân và đồng nghiệp. Sau khi vào làm việc tại khoa Ngoại tổng hợp Bệnh viện Tụng Hòa, cách diễn đạt không chút kiêng nể của anh liên tục gây ra hiểu nhầm và khiếu nại, khiến hội đồng bệnh viện nghi ngờ nghiêm trọng về năng lực hành nghề và đưa ra một "thời gian thử thách" ngắn hạn. Trong thời gian thử thách, Viện trưởng Phan Văn Bân (Vương Chí Phi thủ vai) tận tình hướng dẫn, đồng nghiệp Hạ Đồng (Trịnh Vân Long thủ vai) nỗ lực giúp anh hòa nhập với tập thể, còn bác sĩ Viên Dã (Khương Bội Dao thủ vai) chuyển từ nghi ngờ ban đầu sang từng bước hiểu và hỗ trợ anh. Dưới áp lực khổng lồ, Trần Huy bắt đầu hành trình gian khổ học cách giao tiếp với bệnh nhân, nuôi dưỡng lòng trắc ẩn, đồng thời dùng tài năng y học kiệt xuất của mình để cứu chữa hàng loạt bệnh nhân nguy kịch. Cuối cùng, anh dùng cả "nhân tâm" lẫn "nhân thuật" để chứng minh giá trị của một người thầy thuốc "phi thường", giành lấy sự tin tưởng của bệnh viện, tình bạn của đồng nghiệp và thu hoạch được một tình yêu trân quý.</p>', 
  'Hoàn Tất (16/16)', 16, 'series', 'completed', 179, 2023, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Trương Vãn Ý","avatar":"https://image.tmdb.org/t/p/w185/wG7GZ5XRUgwTMiAQS1gvgJEABKl.jpg"},{"name":"Khương Bội Dao","avatar":"https://image.tmdb.org/t/p/w185/dPXXxRNpU8r1V0vpFpEmdIspkPU.jpg"},{"name":"郑云龙","avatar":"https://image.tmdb.org/t/p/w185/zKlCAobEntJ3ANg1WgshCutj08U.jpg"},{"name":"呂曉霖","avatar":"https://image.tmdb.org/t/p/w185/mY06Aa7UuBTbjTZ8Gab7DFD9UH0.jpg"},{"name":"Liu Xiaohai","avatar":"https://image.tmdb.org/t/p/w185/khq3kP5tWfRyXekA7BPsBn54o8L.jpg"},{"name":"王志飞","avatar":"https://image.tmdb.org/t/p/w185/p5A1cWUaoCkL4yRnoyKOG6mvfNb.jpg"},{"name":"杨皓宇","avatar":"https://image.tmdb.org/t/p/w185/ckiQnxLBzpHEl1hDpkMQcwZEySN.jpg"},{"name":"馮雪雅","avatar":"https://image.tmdb.org/t/p/w185/tYY7R4zmbFRZfib1Y6bxnRaodPg.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"}]', 
  '["Fei Fan","Фантастические врачи","非凡醫者","Fantastic Doctors","非凡医者"]', '{"id":"239479","type":"tv","vote_average":8,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/obPC8enMerRA0SHjyLy3T9T5AjL.png","backdrop_url":"https://image.tmdb.org/t/p/original/q2NFO23QwssZKrz0X4XGPFWaCxL.jpg","poster_url":"https://image.tmdb.org/t/p/original/oeFNz5n6OTyMTYorvs4T1MJ5OW2.jpg","aspect_ratio":20.482}', '{"id":"tt27951248","vote_average":null}', 
  1789378914611, '2026-09-09T19:17:25.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-phi-pham', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-phi-pham', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-phi-pham', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-phi-pham', 'bo_trung');
DELETE FROM movies_fts WHERE slug = 'bac-si-phi-pham';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-phi-pham', 'Bác Sĩ Phi Phàm', 'Fantastic Doctors', 'bác sĩ phi phàm fantastic doctors trương vãn ý khương bội dao 郑云龙 呂曉霖 liu xiaohai 王志飞 杨皓宇 馮雪雅', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'pete-ke-mao-danh-phan-3', 'Pete: Kẻ Mạo Danh (Phần 3)', 'Sneaky Pete (Season 3)', 'https://phimimg.com/uploads/movies/20260909/pete-ke-mao-danh-phan-3-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/pete-ke-mao-danh-phan-3-poster.webp', '<p>Vừa ra tù, Marius giả danh bạn cùng phòng giam để trốn một tên xã hội đen, nhưng bữa tối với gia đình giả mới nhận có nguy cơ làm bại lộ vỏ bọc của anh.</p>', 
  'Hoàn Tất (10/10)', 10, 'series', 'completed', 108, 2019, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Giovanni Ribisi","avatar":"https://image.tmdb.org/t/p/w185/8EAiS9D3YtGOrwNM0OrwmDpWK7s.jpg"},{"name":"Marin Ireland","avatar":"https://image.tmdb.org/t/p/w185/jAIOQNraHjvIAdqk81QDV5Phupp.jpg"},{"name":"Margo Martindale","avatar":"https://image.tmdb.org/t/p/w185/6ANuYnZZJTuQLL4bbt8vH1qDYje.jpg"},{"name":"Peter Gerety","avatar":"https://image.tmdb.org/t/p/w185/sE9fH3OxrmDflTSM3ac4ALzCjpa.jpg"},{"name":"Shane McRae","avatar":"https://image.tmdb.org/t/p/w185/ixNSdZDJ6fZzZc2Pdx4Dwr8wHir.jpg"},{"name":"Libe Barer","avatar":"https://image.tmdb.org/t/p/w185/peA4FQ9y8vImDrjEPrq6XlqYY5P.jpg"},{"name":"אפרת דור","avatar":"https://image.tmdb.org/t/p/w185/zFm6FZ7cKq9hODKqfvNc4d4zuRi.jpg"},{"name":"Lindsey Pearlman","avatar":"https://image.tmdb.org/t/p/w185/eKzK2nEjA2TlcvybituCh6HtKmF.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["以黑制黑","冒牌货","סניקי פיט","Огидний Піт","Підлий Піт","Sneaky Pete"]', '{"id":"64199","type":"tv","vote_average":7.5,"vote_count":429,"logo_url":"https://image.tmdb.org/t/p/original/p9K4WlP6nXdWAsGArSltEin4Yvo.png","backdrop_url":"https://image.tmdb.org/t/p/original/f1Z5X3iCCKK5FGu5VvzPkXO7eOl.jpg","poster_url":"https://image.tmdb.org/t/p/original/nNpcea9lLHI4iv8QpOIvHveVnT9.jpg","aspect_ratio":3.983}', '{"id":"tt5011816","vote_average":8}', 
  1789378914610, '2026-09-09T16:14:55.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-3', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-3', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-3', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-3', 'bo_au_my');
DELETE FROM movies_fts WHERE slug = 'pete-ke-mao-danh-phan-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('pete-ke-mao-danh-phan-3', 'Pete: Kẻ Mạo Danh (Phần 3)', 'Sneaky Pete (Season 3)', 'pete: kẻ mạo danh (phần 3) sneaky pete (season 3) giovanni ribisi marin ireland margo martindale peter gerety shane mcrae libe barer אפרת דור lindsey pearlman', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'pete-ke-mao-danh-phan-2', 'Pete: Kẻ Mạo Danh (Phần 2)', 'Sneaky Pete (Season 2)', 'https://phimimg.com/uploads/movies/20260909/pete-ke-mao-danh-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/pete-ke-mao-danh-phan-2-poster.webp', '<p>Vừa ra tù, Marius giả danh bạn cùng phòng giam để trốn một tên xã hội đen, nhưng bữa tối với gia đình giả mới nhận có nguy cơ làm bại lộ vỏ bọc của anh.</p>', 
  'Hoàn Tất (10/10)', 10, 'series', 'completed', 99, 2018, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Giovanni Ribisi","avatar":"https://image.tmdb.org/t/p/w185/8EAiS9D3YtGOrwNM0OrwmDpWK7s.jpg"},{"name":"Marin Ireland","avatar":"https://image.tmdb.org/t/p/w185/jAIOQNraHjvIAdqk81QDV5Phupp.jpg"},{"name":"Margo Martindale","avatar":"https://image.tmdb.org/t/p/w185/6ANuYnZZJTuQLL4bbt8vH1qDYje.jpg"},{"name":"Peter Gerety","avatar":"https://image.tmdb.org/t/p/w185/sE9fH3OxrmDflTSM3ac4ALzCjpa.jpg"},{"name":"Shane McRae","avatar":"https://image.tmdb.org/t/p/w185/ixNSdZDJ6fZzZc2Pdx4Dwr8wHir.jpg"},{"name":"Libe Barer","avatar":"https://image.tmdb.org/t/p/w185/peA4FQ9y8vImDrjEPrq6XlqYY5P.jpg"},{"name":"אפרת דור","avatar":"https://image.tmdb.org/t/p/w185/zFm6FZ7cKq9hODKqfvNc4d4zuRi.jpg"},{"name":"Lindsey Pearlman","avatar":"https://image.tmdb.org/t/p/w185/eKzK2nEjA2TlcvybituCh6HtKmF.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["以黑制黑","冒牌货","סניקי פיט","Огидний Піт","Підлий Піт","Sneaky Pete"]', '{"id":"64199","type":"tv","vote_average":7.5,"vote_count":429,"logo_url":"https://image.tmdb.org/t/p/original/p9K4WlP6nXdWAsGArSltEin4Yvo.png","backdrop_url":"https://image.tmdb.org/t/p/original/f1Z5X3iCCKK5FGu5VvzPkXO7eOl.jpg","poster_url":"https://image.tmdb.org/t/p/original/nNpcea9lLHI4iv8QpOIvHveVnT9.jpg","aspect_ratio":3.983}', '{"id":"tt5011816","vote_average":8}', 
  1789378914609, '2026-09-09T16:13:32.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-2', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-2', 'bo_au_my');
DELETE FROM movies_fts WHERE slug = 'pete-ke-mao-danh-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('pete-ke-mao-danh-phan-2', 'Pete: Kẻ Mạo Danh (Phần 2)', 'Sneaky Pete (Season 2)', 'pete: kẻ mạo danh (phần 2) sneaky pete (season 2) giovanni ribisi marin ireland margo martindale peter gerety shane mcrae libe barer אפרת דור lindsey pearlman', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'pete-ke-mao-danh-phan-1', 'Pete: Kẻ Mạo Danh (Phần 1)', 'Sneaky Pete (Season 1)', 'https://phimimg.com/uploads/movies/20260909/pete-ke-mao-danh-phan-1-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/pete-ke-mao-danh-phan-1-poster.webp', '<p>Vừa ra tù, Marius giả danh bạn cùng phòng giam để trốn một tên xã hội đen, nhưng bữa tối với gia đình giả mới nhận có nguy cơ làm bại lộ vỏ bọc của anh.</p>', 
  'Hoàn Tất (10/10)', 10, 'series', 'completed', 128, 2015, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Giovanni Ribisi","avatar":"https://image.tmdb.org/t/p/w185/8EAiS9D3YtGOrwNM0OrwmDpWK7s.jpg"},{"name":"Marin Ireland","avatar":"https://image.tmdb.org/t/p/w185/jAIOQNraHjvIAdqk81QDV5Phupp.jpg"},{"name":"Margo Martindale","avatar":"https://image.tmdb.org/t/p/w185/6ANuYnZZJTuQLL4bbt8vH1qDYje.jpg"},{"name":"Peter Gerety","avatar":"https://image.tmdb.org/t/p/w185/sE9fH3OxrmDflTSM3ac4ALzCjpa.jpg"},{"name":"Shane McRae","avatar":"https://image.tmdb.org/t/p/w185/ixNSdZDJ6fZzZc2Pdx4Dwr8wHir.jpg"},{"name":"Libe Barer","avatar":"https://image.tmdb.org/t/p/w185/peA4FQ9y8vImDrjEPrq6XlqYY5P.jpg"},{"name":"אפרת דור","avatar":"https://image.tmdb.org/t/p/w185/zFm6FZ7cKq9hODKqfvNc4d4zuRi.jpg"},{"name":"Lindsey Pearlman","avatar":"https://image.tmdb.org/t/p/w185/eKzK2nEjA2TlcvybituCh6HtKmF.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["以黑制黑","冒牌货","סניקי פיט","Огидний Піт","Підлий Піт","Sneaky Pete"]', '{"id":"64199","type":"tv","vote_average":7.5,"vote_count":429,"logo_url":"https://image.tmdb.org/t/p/original/p9K4WlP6nXdWAsGArSltEin4Yvo.png","backdrop_url":"https://image.tmdb.org/t/p/original/f1Z5X3iCCKK5FGu5VvzPkXO7eOl.jpg","poster_url":"https://image.tmdb.org/t/p/original/nNpcea9lLHI4iv8QpOIvHveVnT9.jpg","aspect_ratio":3.983}', '{"id":"tt5011816","vote_average":8}', 
  1789378914608, '2026-09-09T16:12:20.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-1', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-1', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-1', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('pete-ke-mao-danh-phan-1', 'bo_au_my');
DELETE FROM movies_fts WHERE slug = 'pete-ke-mao-danh-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('pete-ke-mao-danh-phan-1', 'Pete: Kẻ Mạo Danh (Phần 1)', 'Sneaky Pete (Season 1)', 'pete: kẻ mạo danh (phần 1) sneaky pete (season 1) giovanni ribisi marin ireland margo martindale peter gerety shane mcrae libe barer אפרת דור lindsey pearlman', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-x-ngoai-khoa-daimon-michiko-phan-7', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 7)', 'Doctor X Surgeon Michiko Daimon (Season 7)', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-7-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-7-poster.webp', '<p>Daimon Michiko là một bác sĩ phẫu thuật tự do 37 tuổi, làm việc thông qua một "dịch vụ giới thiệu bác sĩ" đầy hoài nghi, khiến cô phải luân chuyển từ bệnh viện này sang bệnh viện khác. Môi trường khắc nghiệt tại các bệnh viện khiến nhiều bác sĩ phải xin nghỉ việc, buộc các cơ sở y tế phải dùng đến chương trình này để lấp chỗ trống tạm thời. Tuy nhiên, Michiko hoàn toàn không giống một bác sĩ bình thường với phong cách ăn mặc sành điệu, ngông cuồng cùng thái độ kỳ lạ. Ngay trong tập đầu tiên, cô đã phản đối một ca phẫu thuật do chính giám đốc bệnh viện — người đã lâu không cầm dao mổ — dự định thực hiện. Điều này khiến Michiko gánh chịu sự ghét bỏ tại bệnh viện, nhưng tất cả đều phải "đóng băng" kinh ngạc khi cô thẳng thắn chỉ ra tay nghề lạc hậu của vị giám đốc. Cô tuân thủ nghiêm ngặt giờ làm việc của mình, không bao giờ làm bất kỳ công việc lặt vặt nào không yêu cầu bằng bác sĩ, và hoàn toàn không bận tâm đến cuộc chiến quyền lực nội bộ. Không ai biết cô làm thế nào để sở hữu kỹ năng phẫu thuật thượng thừa cho phép cô đòi hỏi mức thù lao đắt đỏ, và cuộc sống riêng tư của cô lại càng là một ẩn số lớn đối với mọi người xung quanh.</p>', 
  'Hoàn Tất (10/10)', 10, 'series', 'completed', 161, 2021, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"米倉涼子","avatar":"https://image.tmdb.org/t/p/w185/ia388U4HEvnpQ5ATYkIMqdiAqgV.jpg"},{"name":"Uchida Yuki","avatar":"https://image.tmdb.org/t/p/w185/2p0lPJqOmm6N4Xd3vnUuvlh3sG6.jpg"},{"name":"遠藤憲一","avatar":"https://image.tmdb.org/t/p/w185/5NyLtChKpQ0KLiYjZ3aSDylBIou.jpg"},{"name":"岸部一徳","avatar":"https://image.tmdb.org/t/p/w185/znOMfIwxlgnAs1mXqHJ1h7pihCB.jpg"},{"name":"西田敏行","avatar":"https://image.tmdb.org/t/p/w185/hsZZE7KBwjWbsa5tP2HVws34my8.jpg"},{"name":"鈴木浩介","avatar":"https://image.tmdb.org/t/p/w185/y4NqOnvH7ABslzuBU3eQXf8QGHW.jpg"},{"name":"勝村政信","avatar":"https://image.tmdb.org/t/p/w185/hFBAKiDX43rSFTDXsd3SXgGSC9L.jpg"},{"name":"今田美桜","avatar":"https://image.tmdb.org/t/p/w185/1RiNJI6v9rBvATZ59m0CAZCFOpI.jpg"},{"name":"二世野村萬斎","avatar":"https://image.tmdb.org/t/p/w185/2ckdbJKCF7hE1rE2J4364gdklOh.jpg"},{"name":"小籔千豊","avatar":"https://image.tmdb.org/t/p/w185/ApL4kKZGcExt3bXHDKZcMiBIBSO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Doctor-X~外科医·大门未知子~","Dokuta X Gekai Daimon Michiko","ドクターX 〜外科医・大門未知子〜 スペシャル","닥터 X~외과의 다이몬 미치코~","닥터 X","Doctor X ~ Gekai Daimon Michiko ~","Doctor X Surgeon Michiko Daimon","Doctor-X: Surgeon Michiko Daimon Special","Doctor-X Surgeon Michiko Daimon","Doctor X","ドクターX ～外科医・大門未知子～"]', '{"id":"46052","type":"tv","vote_average":7.5,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/m0qfOfHJnefsSylBB62GYjMbq9m.png","backdrop_url":"https://image.tmdb.org/t/p/original/le8QyslLxUVN5VeFLPoMPqfO1nm.jpg","poster_url":"https://image.tmdb.org/t/p/original/5DjPvjvhDCyy6fH8Ko7Fkq0Zbiw.jpg","aspect_ratio":2.091}', '{"id":"tt2349912","vote_average":7.5}', 
  1789378914607, '2026-09-09T16:02:40.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-7', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-7', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-7', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-7', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'bac-si-x-ngoai-khoa-daimon-michiko-phan-7';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-7', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 7)', 'Doctor X Surgeon Michiko Daimon (Season 7)', 'bác sĩ x ngoại khoa: daimon michiko (phần 7) doctor x surgeon michiko daimon (season 7) 米倉涼子 uchida yuki 遠藤憲一 岸部一徳 西田敏行 鈴木浩介 勝村政信 今田美桜 二世野村萬斎 小籔千豊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-x-ngoai-khoa-daimon-michiko-phan-6', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 6)', 'Doctor X Surgeon Michiko Daimon (Season 6)', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-6-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-6-poster.webp', '<p>Daimon Michiko là một bác sĩ phẫu thuật tự do 37 tuổi, làm việc thông qua một "dịch vụ giới thiệu bác sĩ" đầy hoài nghi, khiến cô phải luân chuyển từ bệnh viện này sang bệnh viện khác. Môi trường khắc nghiệt tại các bệnh viện khiến nhiều bác sĩ phải xin nghỉ việc, buộc các cơ sở y tế phải dùng đến chương trình này để lấp chỗ trống tạm thời. Tuy nhiên, Michiko hoàn toàn không giống một bác sĩ bình thường với phong cách ăn mặc sành điệu, ngông cuồng cùng thái độ kỳ lạ. Ngay trong tập đầu tiên, cô đã phản đối một ca phẫu thuật do chính giám đốc bệnh viện — người đã lâu không cầm dao mổ — dự định thực hiện. Điều này khiến Michiko gánh chịu sự ghét bỏ tại bệnh viện, nhưng tất cả đều phải "đóng băng" kinh ngạc khi cô thẳng thắn chỉ ra tay nghề lạc hậu của vị giám đốc. Cô tuân thủ nghiêm ngặt giờ làm việc của mình, không bao giờ làm bất kỳ công việc lặt vặt nào không yêu cầu bằng bác sĩ, và hoàn toàn không bận tâm đến cuộc chiến quyền lực nội bộ. Không ai biết cô làm thế nào để sở hữu kỹ năng phẫu thuật thượng thừa cho phép cô đòi hỏi mức thù lao đắt đỏ, và cuộc sống riêng tư của cô lại càng là một ẩn số lớn đối với mọi người xung quanh.</p>', 
  'Hoàn Tất (10/10)', 10, 'series', 'completed', 203, 2019, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"米倉涼子","avatar":"https://image.tmdb.org/t/p/w185/ia388U4HEvnpQ5ATYkIMqdiAqgV.jpg"},{"name":"Uchida Yuki","avatar":"https://image.tmdb.org/t/p/w185/2p0lPJqOmm6N4Xd3vnUuvlh3sG6.jpg"},{"name":"遠藤憲一","avatar":"https://image.tmdb.org/t/p/w185/5NyLtChKpQ0KLiYjZ3aSDylBIou.jpg"},{"name":"岸部一徳","avatar":"https://image.tmdb.org/t/p/w185/znOMfIwxlgnAs1mXqHJ1h7pihCB.jpg"},{"name":"西田敏行","avatar":"https://image.tmdb.org/t/p/w185/hsZZE7KBwjWbsa5tP2HVws34my8.jpg"},{"name":"鈴木浩介","avatar":"https://image.tmdb.org/t/p/w185/y4NqOnvH7ABslzuBU3eQXf8QGHW.jpg"},{"name":"勝村政信","avatar":"https://image.tmdb.org/t/p/w185/hFBAKiDX43rSFTDXsd3SXgGSC9L.jpg"},{"name":"今田美桜","avatar":"https://image.tmdb.org/t/p/w185/1RiNJI6v9rBvATZ59m0CAZCFOpI.jpg"},{"name":"二世野村萬斎","avatar":"https://image.tmdb.org/t/p/w185/2ckdbJKCF7hE1rE2J4364gdklOh.jpg"},{"name":"小籔千豊","avatar":"https://image.tmdb.org/t/p/w185/ApL4kKZGcExt3bXHDKZcMiBIBSO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Doctor-X~外科医·大门未知子~","Dokuta X Gekai Daimon Michiko","ドクターX 〜外科医・大門未知子〜 スペシャル","닥터 X~외과의 다이몬 미치코~","닥터 X","Doctor X ~ Gekai Daimon Michiko ~","Doctor X Surgeon Michiko Daimon","Doctor-X: Surgeon Michiko Daimon Special","Doctor-X Surgeon Michiko Daimon","Doctor X","ドクターX ～外科医・大門未知子～"]', '{"id":"46052","type":"tv","vote_average":7.5,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/m0qfOfHJnefsSylBB62GYjMbq9m.png","backdrop_url":"https://image.tmdb.org/t/p/original/le8QyslLxUVN5VeFLPoMPqfO1nm.jpg","poster_url":"https://image.tmdb.org/t/p/original/5DjPvjvhDCyy6fH8Ko7Fkq0Zbiw.jpg","aspect_ratio":2.091}', '{"id":"tt2349912","vote_average":7.5}', 
  1789378914606, '2026-09-09T16:00:35.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-6', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-6', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-6', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-6', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'bac-si-x-ngoai-khoa-daimon-michiko-phan-6';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-6', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 6)', 'Doctor X Surgeon Michiko Daimon (Season 6)', 'bác sĩ x ngoại khoa: daimon michiko (phần 6) doctor x surgeon michiko daimon (season 6) 米倉涼子 uchida yuki 遠藤憲一 岸部一徳 西田敏行 鈴木浩介 勝村政信 今田美桜 二世野村萬斎 小籔千豊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-x-ngoai-khoa-daimon-michiko-phan-5', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 5)', 'Doctor X Surgeon Michiko Daimon (Season 5)', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-5-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-5-poster.webp', '<p>Daimon Michiko là một bác sĩ phẫu thuật tự do 37 tuổi, làm việc thông qua một "dịch vụ giới thiệu bác sĩ" đầy hoài nghi, khiến cô phải luân chuyển từ bệnh viện này sang bệnh viện khác. Môi trường khắc nghiệt tại các bệnh viện khiến nhiều bác sĩ phải xin nghỉ việc, buộc các cơ sở y tế phải dùng đến chương trình này để lấp chỗ trống tạm thời. Tuy nhiên, Michiko hoàn toàn không giống một bác sĩ bình thường với phong cách ăn mặc sành điệu, ngông cuồng cùng thái độ kỳ lạ. Ngay trong tập đầu tiên, cô đã phản đối một ca phẫu thuật do chính giám đốc bệnh viện — người đã lâu không cầm dao mổ — dự định thực hiện. Điều này khiến Michiko gánh chịu sự ghét bỏ tại bệnh viện, nhưng tất cả đều phải "đóng băng" kinh ngạc khi cô thẳng thắn chỉ ra tay nghề lạc hậu của vị giám đốc. Cô tuân thủ nghiêm ngặt giờ làm việc của mình, không bao giờ làm bất kỳ công việc lặt vặt nào không yêu cầu bằng bác sĩ, và hoàn toàn không bận tâm đến cuộc chiến quyền lực nội bộ. Không ai biết cô làm thế nào để sở hữu kỹ năng phẫu thuật thượng thừa cho phép cô đòi hỏi mức thù lao đắt đỏ, và cuộc sống riêng tư của cô lại càng là một ẩn số lớn đối với mọi người xung quanh.</p>', 
  'Hoàn Tất (10/10)', 10, 'series', 'completed', 116, 2017, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"米倉涼子","avatar":"https://image.tmdb.org/t/p/w185/ia388U4HEvnpQ5ATYkIMqdiAqgV.jpg"},{"name":"Uchida Yuki","avatar":"https://image.tmdb.org/t/p/w185/2p0lPJqOmm6N4Xd3vnUuvlh3sG6.jpg"},{"name":"遠藤憲一","avatar":"https://image.tmdb.org/t/p/w185/5NyLtChKpQ0KLiYjZ3aSDylBIou.jpg"},{"name":"岸部一徳","avatar":"https://image.tmdb.org/t/p/w185/znOMfIwxlgnAs1mXqHJ1h7pihCB.jpg"},{"name":"西田敏行","avatar":"https://image.tmdb.org/t/p/w185/hsZZE7KBwjWbsa5tP2HVws34my8.jpg"},{"name":"鈴木浩介","avatar":"https://image.tmdb.org/t/p/w185/y4NqOnvH7ABslzuBU3eQXf8QGHW.jpg"},{"name":"勝村政信","avatar":"https://image.tmdb.org/t/p/w185/hFBAKiDX43rSFTDXsd3SXgGSC9L.jpg"},{"name":"今田美桜","avatar":"https://image.tmdb.org/t/p/w185/1RiNJI6v9rBvATZ59m0CAZCFOpI.jpg"},{"name":"二世野村萬斎","avatar":"https://image.tmdb.org/t/p/w185/2ckdbJKCF7hE1rE2J4364gdklOh.jpg"},{"name":"小籔千豊","avatar":"https://image.tmdb.org/t/p/w185/ApL4kKZGcExt3bXHDKZcMiBIBSO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Doctor-X~外科医·大门未知子~","Dokuta X Gekai Daimon Michiko","ドクターX 〜外科医・大門未知子〜 スペシャル","닥터 X~외과의 다이몬 미치코~","닥터 X","Doctor X ~ Gekai Daimon Michiko ~","Doctor X Surgeon Michiko Daimon","Doctor-X: Surgeon Michiko Daimon Special","Doctor-X Surgeon Michiko Daimon","Doctor X","ドクターX ～外科医・大門未知子～"]', '{"id":"46052","type":"tv","vote_average":7.5,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/m0qfOfHJnefsSylBB62GYjMbq9m.png","backdrop_url":"https://image.tmdb.org/t/p/original/le8QyslLxUVN5VeFLPoMPqfO1nm.jpg","poster_url":"https://image.tmdb.org/t/p/original/5DjPvjvhDCyy6fH8Ko7Fkq0Zbiw.jpg","aspect_ratio":2.091}', '{"id":"tt2349912","vote_average":7.5}', 
  1789378914605, '2026-09-09T15:58:58.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-5', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-5', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-5', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-5', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'bac-si-x-ngoai-khoa-daimon-michiko-phan-5';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-5', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 5)', 'Doctor X Surgeon Michiko Daimon (Season 5)', 'bác sĩ x ngoại khoa: daimon michiko (phần 5) doctor x surgeon michiko daimon (season 5) 米倉涼子 uchida yuki 遠藤憲一 岸部一徳 西田敏行 鈴木浩介 勝村政信 今田美桜 二世野村萬斎 小籔千豊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-x-ngoai-khoa-daimon-michiko-phan-4', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 4)', 'Doctor X Surgeon Michiko Daimon (Season 4)', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-4-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-4-poster.webp', '<p>Daimon Michiko là một bác sĩ phẫu thuật tự do 37 tuổi, làm việc thông qua một "dịch vụ giới thiệu bác sĩ" đầy hoài nghi, khiến cô phải luân chuyển từ bệnh viện này sang bệnh viện khác. Môi trường khắc nghiệt tại các bệnh viện khiến nhiều bác sĩ phải xin nghỉ việc, buộc các cơ sở y tế phải dùng đến chương trình này để lấp chỗ trống tạm thời. Tuy nhiên, Michiko hoàn toàn không giống một bác sĩ bình thường với phong cách ăn mặc sành điệu, ngông cuồng cùng thái độ kỳ lạ. Ngay trong tập đầu tiên, cô đã phản đối một ca phẫu thuật do chính giám đốc bệnh viện — người đã lâu không cầm dao mổ — dự định thực hiện. Điều này khiến Michiko gánh chịu sự ghét bỏ tại bệnh viện, nhưng tất cả đều phải "đóng băng" kinh ngạc khi cô thẳng thắn chỉ ra tay nghề lạc hậu của vị giám đốc. Cô tuân thủ nghiêm ngặt giờ làm việc của mình, không bao giờ làm bất kỳ công việc lặt vặt nào không yêu cầu bằng bác sĩ, và hoàn toàn không bận tâm đến cuộc chiến quyền lực nội bộ. Không ai biết cô làm thế nào để sở hữu kỹ năng phẫu thuật thượng thừa cho phép cô đòi hỏi mức thù lao đắt đỏ, và cuộc sống riêng tư của cô lại càng là một ẩn số lớn đối với mọi người xung quanh.</p>', 
  'Full', 11, 'series', 'completed', 111, 2016, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"米倉涼子","avatar":"https://image.tmdb.org/t/p/w185/ia388U4HEvnpQ5ATYkIMqdiAqgV.jpg"},{"name":"Uchida Yuki","avatar":"https://image.tmdb.org/t/p/w185/2p0lPJqOmm6N4Xd3vnUuvlh3sG6.jpg"},{"name":"遠藤憲一","avatar":"https://image.tmdb.org/t/p/w185/5NyLtChKpQ0KLiYjZ3aSDylBIou.jpg"},{"name":"岸部一徳","avatar":"https://image.tmdb.org/t/p/w185/znOMfIwxlgnAs1mXqHJ1h7pihCB.jpg"},{"name":"西田敏行","avatar":"https://image.tmdb.org/t/p/w185/hsZZE7KBwjWbsa5tP2HVws34my8.jpg"},{"name":"鈴木浩介","avatar":"https://image.tmdb.org/t/p/w185/y4NqOnvH7ABslzuBU3eQXf8QGHW.jpg"},{"name":"勝村政信","avatar":"https://image.tmdb.org/t/p/w185/hFBAKiDX43rSFTDXsd3SXgGSC9L.jpg"},{"name":"今田美桜","avatar":"https://image.tmdb.org/t/p/w185/1RiNJI6v9rBvATZ59m0CAZCFOpI.jpg"},{"name":"二世野村萬斎","avatar":"https://image.tmdb.org/t/p/w185/2ckdbJKCF7hE1rE2J4364gdklOh.jpg"},{"name":"小籔千豊","avatar":"https://image.tmdb.org/t/p/w185/ApL4kKZGcExt3bXHDKZcMiBIBSO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Doctor-X~外科医·大门未知子~","Dokuta X Gekai Daimon Michiko","ドクターX 〜外科医・大門未知子〜 スペシャル","닥터 X~외과의 다이몬 미치코~","닥터 X","Doctor X ~ Gekai Daimon Michiko ~","Doctor X Surgeon Michiko Daimon","Doctor-X: Surgeon Michiko Daimon Special","Doctor-X Surgeon Michiko Daimon","Doctor X","ドクターX ～外科医・大門未知子～"]', '{"id":"46052","type":"tv","vote_average":7.5,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/m0qfOfHJnefsSylBB62GYjMbq9m.png","backdrop_url":"https://image.tmdb.org/t/p/original/le8QyslLxUVN5VeFLPoMPqfO1nm.jpg","poster_url":"https://image.tmdb.org/t/p/original/5DjPvjvhDCyy6fH8Ko7Fkq0Zbiw.jpg","aspect_ratio":2.091}', '{"id":"tt2349912","vote_average":7.5}', 
  1789378914604, '2026-09-09T15:57:27.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-4', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-4', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-4', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-4', 'le_nhat');
DELETE FROM movies_fts WHERE slug = 'bac-si-x-ngoai-khoa-daimon-michiko-phan-4';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-4', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 4)', 'Doctor X Surgeon Michiko Daimon (Season 4)', 'bác sĩ x ngoại khoa: daimon michiko (phần 4) doctor x surgeon michiko daimon (season 4) 米倉涼子 uchida yuki 遠藤憲一 岸部一徳 西田敏行 鈴木浩介 勝村政信 今田美桜 二世野村萬斎 小籔千豊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-x-ngoai-khoa-daimon-michiko-phan-3', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 3)', 'Doctor X Surgeon Michiko Daimon (Season 3)', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-3-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-3-poster.webp', '<p>Daimon Michiko là một bác sĩ phẫu thuật tự do 37 tuổi, làm việc thông qua một "dịch vụ giới thiệu bác sĩ" đầy hoài nghi, khiến cô phải luân chuyển từ bệnh viện này sang bệnh viện khác. Môi trường khắc nghiệt tại các bệnh viện khiến nhiều bác sĩ phải xin nghỉ việc, buộc các cơ sở y tế phải dùng đến chương trình này để lấp chỗ trống tạm thời. Tuy nhiên, Michiko hoàn toàn không giống một bác sĩ bình thường với phong cách ăn mặc sành điệu, ngông cuồng cùng thái độ kỳ lạ. Ngay trong tập đầu tiên, cô đã phản đối một ca phẫu thuật do chính giám đốc bệnh viện — người đã lâu không cầm dao mổ — dự định thực hiện. Điều này khiến Michiko gánh chịu sự ghét bỏ tại bệnh viện, nhưng tất cả đều phải "đóng băng" kinh ngạc khi cô thẳng thắn chỉ ra tay nghề lạc hậu của vị giám đốc. Cô tuân thủ nghiêm ngặt giờ làm việc của mình, không bao giờ làm bất kỳ công việc lặt vặt nào không yêu cầu bằng bác sĩ, và hoàn toàn không bận tâm đến cuộc chiến quyền lực nội bộ. Không ai biết cô làm thế nào để sở hữu kỹ năng phẫu thuật thượng thừa cho phép cô đòi hỏi mức thù lao đắt đỏ, và cuộc sống riêng tư của cô lại càng là một ẩn số lớn đối với mọi người xung quanh.</p>', 
  'Full', 11, 'series', 'completed', 100, 2014, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"米倉涼子","avatar":"https://image.tmdb.org/t/p/w185/ia388U4HEvnpQ5ATYkIMqdiAqgV.jpg"},{"name":"Uchida Yuki","avatar":"https://image.tmdb.org/t/p/w185/2p0lPJqOmm6N4Xd3vnUuvlh3sG6.jpg"},{"name":"遠藤憲一","avatar":"https://image.tmdb.org/t/p/w185/5NyLtChKpQ0KLiYjZ3aSDylBIou.jpg"},{"name":"岸部一徳","avatar":"https://image.tmdb.org/t/p/w185/znOMfIwxlgnAs1mXqHJ1h7pihCB.jpg"},{"name":"西田敏行","avatar":"https://image.tmdb.org/t/p/w185/hsZZE7KBwjWbsa5tP2HVws34my8.jpg"},{"name":"鈴木浩介","avatar":"https://image.tmdb.org/t/p/w185/y4NqOnvH7ABslzuBU3eQXf8QGHW.jpg"},{"name":"勝村政信","avatar":"https://image.tmdb.org/t/p/w185/hFBAKiDX43rSFTDXsd3SXgGSC9L.jpg"},{"name":"今田美桜","avatar":"https://image.tmdb.org/t/p/w185/1RiNJI6v9rBvATZ59m0CAZCFOpI.jpg"},{"name":"二世野村萬斎","avatar":"https://image.tmdb.org/t/p/w185/2ckdbJKCF7hE1rE2J4364gdklOh.jpg"},{"name":"小籔千豊","avatar":"https://image.tmdb.org/t/p/w185/ApL4kKZGcExt3bXHDKZcMiBIBSO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Doctor-X~外科医·大门未知子~","Dokuta X Gekai Daimon Michiko","ドクターX 〜外科医・大門未知子〜 スペシャル","닥터 X~외과의 다이몬 미치코~","닥터 X","Doctor X ~ Gekai Daimon Michiko ~","Doctor X Surgeon Michiko Daimon","Doctor-X: Surgeon Michiko Daimon Special","Doctor-X Surgeon Michiko Daimon","Doctor X","ドクターX ～外科医・大門未知子～"]', '{"id":"46052","type":"tv","vote_average":7.5,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/m0qfOfHJnefsSylBB62GYjMbq9m.png","backdrop_url":"https://image.tmdb.org/t/p/original/le8QyslLxUVN5VeFLPoMPqfO1nm.jpg","poster_url":"https://image.tmdb.org/t/p/original/5DjPvjvhDCyy6fH8Ko7Fkq0Zbiw.jpg","aspect_ratio":2.091}', '{"id":"tt2349912","vote_average":7.5}', 
  1789378914603, '2026-09-09T15:55:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-3', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-3', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-3', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-3', 'le_nhat');
DELETE FROM movies_fts WHERE slug = 'bac-si-x-ngoai-khoa-daimon-michiko-phan-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-3', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 3)', 'Doctor X Surgeon Michiko Daimon (Season 3)', 'bác sĩ x ngoại khoa: daimon michiko (phần 3) doctor x surgeon michiko daimon (season 3) 米倉涼子 uchida yuki 遠藤憲一 岸部一徳 西田敏行 鈴木浩介 勝村政信 今田美桜 二世野村萬斎 小籔千豊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-x-ngoai-khoa-daimon-michiko-phan-2', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 2)', 'Doctor X Surgeon Michiko Daimon (Season 2)', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-2-poster.webp', '<p>Daimon Michiko là một bác sĩ phẫu thuật tự do 37 tuổi, làm việc thông qua một "dịch vụ giới thiệu bác sĩ" đầy hoài nghi, khiến cô phải luân chuyển từ bệnh viện này sang bệnh viện khác. Môi trường khắc nghiệt tại các bệnh viện khiến nhiều bác sĩ phải xin nghỉ việc, buộc các cơ sở y tế phải dùng đến chương trình này để lấp chỗ trống tạm thời. Tuy nhiên, Michiko hoàn toàn không giống một bác sĩ bình thường với phong cách ăn mặc sành điệu, ngông cuồng cùng thái độ kỳ lạ. Ngay trong tập đầu tiên, cô đã phản đối một ca phẫu thuật do chính giám đốc bệnh viện — người đã lâu không cầm dao mổ — dự định thực hiện. Điều này khiến Michiko gánh chịu sự ghét bỏ tại bệnh viện, nhưng tất cả đều phải "đóng băng" kinh ngạc khi cô thẳng thắn chỉ ra tay nghề lạc hậu của vị giám đốc. Cô tuân thủ nghiêm ngặt giờ làm việc của mình, không bao giờ làm bất kỳ công việc lặt vặt nào không yêu cầu bằng bác sĩ, và hoàn toàn không bận tâm đến cuộc chiến quyền lực nội bộ. Không ai biết cô làm thế nào để sở hữu kỹ năng phẫu thuật thượng thừa cho phép cô đòi hỏi mức thù lao đắt đỏ, và cuộc sống riêng tư của cô lại càng là một ẩn số lớn đối với mọi người xung quanh.</p>', 
  'Hoàn Tất (9/9)', 9, 'series', 'completed', 101, 2013, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"米倉涼子","avatar":"https://image.tmdb.org/t/p/w185/ia388U4HEvnpQ5ATYkIMqdiAqgV.jpg"},{"name":"Uchida Yuki","avatar":"https://image.tmdb.org/t/p/w185/2p0lPJqOmm6N4Xd3vnUuvlh3sG6.jpg"},{"name":"遠藤憲一","avatar":"https://image.tmdb.org/t/p/w185/5NyLtChKpQ0KLiYjZ3aSDylBIou.jpg"},{"name":"岸部一徳","avatar":"https://image.tmdb.org/t/p/w185/znOMfIwxlgnAs1mXqHJ1h7pihCB.jpg"},{"name":"西田敏行","avatar":"https://image.tmdb.org/t/p/w185/hsZZE7KBwjWbsa5tP2HVws34my8.jpg"},{"name":"鈴木浩介","avatar":"https://image.tmdb.org/t/p/w185/y4NqOnvH7ABslzuBU3eQXf8QGHW.jpg"},{"name":"勝村政信","avatar":"https://image.tmdb.org/t/p/w185/hFBAKiDX43rSFTDXsd3SXgGSC9L.jpg"},{"name":"今田美桜","avatar":"https://image.tmdb.org/t/p/w185/1RiNJI6v9rBvATZ59m0CAZCFOpI.jpg"},{"name":"二世野村萬斎","avatar":"https://image.tmdb.org/t/p/w185/2ckdbJKCF7hE1rE2J4364gdklOh.jpg"},{"name":"小籔千豊","avatar":"https://image.tmdb.org/t/p/w185/ApL4kKZGcExt3bXHDKZcMiBIBSO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Doctor-X~外科医·大门未知子~","Dokuta X Gekai Daimon Michiko","ドクターX 〜外科医・大門未知子〜 スペシャル","닥터 X~외과의 다이몬 미치코~","닥터 X","Doctor X ~ Gekai Daimon Michiko ~","Doctor X Surgeon Michiko Daimon","Doctor-X: Surgeon Michiko Daimon Special","Doctor-X Surgeon Michiko Daimon","Doctor X","ドクターX ～外科医・大門未知子～"]', '{"id":"46052","type":"tv","vote_average":7.5,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/m0qfOfHJnefsSylBB62GYjMbq9m.png","backdrop_url":"https://image.tmdb.org/t/p/original/le8QyslLxUVN5VeFLPoMPqfO1nm.jpg","poster_url":"https://image.tmdb.org/t/p/original/5DjPvjvhDCyy6fH8Ko7Fkq0Zbiw.jpg","aspect_ratio":2.091}', '{"id":"tt2349912","vote_average":7.5}', 
  1789378914602, '2026-09-09T15:54:39.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-2', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-2', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'bac-si-x-ngoai-khoa-daimon-michiko-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-2', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 2)', 'Doctor X Surgeon Michiko Daimon (Season 2)', 'bác sĩ x ngoại khoa: daimon michiko (phần 2) doctor x surgeon michiko daimon (season 2) 米倉涼子 uchida yuki 遠藤憲一 岸部一徳 西田敏行 鈴木浩介 勝村政信 今田美桜 二世野村萬斎 小籔千豊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bac-si-x-ngoai-khoa-daimon-michiko-phan-1', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 1)', 'Doctor X Surgeon Michiko Daimon (Season 1)', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-1-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bac-si-x-ngoai-khoa-daimon-michiko-phan-1-poster.webp', '<p>Daimon Michiko là một bác sĩ phẫu thuật tự do 37 tuổi, làm việc thông qua một "dịch vụ giới thiệu bác sĩ" đầy hoài nghi, khiến cô phải luân chuyển từ bệnh viện này sang bệnh viện khác. Môi trường khắc nghiệt tại các bệnh viện khiến nhiều bác sĩ phải xin nghỉ việc, buộc các cơ sở y tế phải dùng đến chương trình này để lấp chỗ trống tạm thời. Tuy nhiên, Michiko hoàn toàn không giống một bác sĩ bình thường với phong cách ăn mặc sành điệu, ngông cuồng cùng thái độ kỳ lạ. Ngay trong tập đầu tiên, cô đã phản đối một ca phẫu thuật do chính giám đốc bệnh viện — người đã lâu không cầm dao mổ — dự định thực hiện. Điều này khiến Michiko gánh chịu sự ghét bỏ tại bệnh viện, nhưng tất cả đều phải "đóng băng" kinh ngạc khi cô thẳng thắn chỉ ra tay nghề lạc hậu của vị giám đốc. Cô tuân thủ nghiêm ngặt giờ làm việc của mình, không bao giờ làm bất kỳ công việc lặt vặt nào không yêu cầu bằng bác sĩ, và hoàn toàn không bận tâm đến cuộc chiến quyền lực nội bộ. Không ai biết cô làm thế nào để sở hữu kỹ năng phẫu thuật thượng thừa cho phép cô đòi hỏi mức thù lao đắt đỏ, và cuộc sống riêng tư của cô lại càng là một ẩn số lớn đối với mọi người xung quanh.</p>', 
  'Hoàn Tất (8/8)', 8, 'series', 'completed', 113, 2012, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"米倉涼子","avatar":"https://image.tmdb.org/t/p/w185/ia388U4HEvnpQ5ATYkIMqdiAqgV.jpg"},{"name":"Uchida Yuki","avatar":"https://image.tmdb.org/t/p/w185/2p0lPJqOmm6N4Xd3vnUuvlh3sG6.jpg"},{"name":"遠藤憲一","avatar":"https://image.tmdb.org/t/p/w185/5NyLtChKpQ0KLiYjZ3aSDylBIou.jpg"},{"name":"岸部一徳","avatar":"https://image.tmdb.org/t/p/w185/znOMfIwxlgnAs1mXqHJ1h7pihCB.jpg"},{"name":"西田敏行","avatar":"https://image.tmdb.org/t/p/w185/hsZZE7KBwjWbsa5tP2HVws34my8.jpg"},{"name":"鈴木浩介","avatar":"https://image.tmdb.org/t/p/w185/y4NqOnvH7ABslzuBU3eQXf8QGHW.jpg"},{"name":"勝村政信","avatar":"https://image.tmdb.org/t/p/w185/hFBAKiDX43rSFTDXsd3SXgGSC9L.jpg"},{"name":"今田美桜","avatar":"https://image.tmdb.org/t/p/w185/1RiNJI6v9rBvATZ59m0CAZCFOpI.jpg"},{"name":"二世野村萬斎","avatar":"https://image.tmdb.org/t/p/w185/2ckdbJKCF7hE1rE2J4364gdklOh.jpg"},{"name":"小籔千豊","avatar":"https://image.tmdb.org/t/p/w185/ApL4kKZGcExt3bXHDKZcMiBIBSO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Doctor-X~外科医·大门未知子~","Dokuta X Gekai Daimon Michiko","ドクターX 〜外科医・大門未知子〜 スペシャル","닥터 X~외과의 다이몬 미치코~","닥터 X","Doctor X ~ Gekai Daimon Michiko ~","Doctor X Surgeon Michiko Daimon","Doctor-X: Surgeon Michiko Daimon Special","Doctor-X Surgeon Michiko Daimon","Doctor X","ドクターX ～外科医・大門未知子～"]', '{"id":"46052","type":"tv","vote_average":7.5,"vote_count":31,"logo_url":"https://image.tmdb.org/t/p/original/m0qfOfHJnefsSylBB62GYjMbq9m.png","backdrop_url":"https://image.tmdb.org/t/p/original/le8QyslLxUVN5VeFLPoMPqfO1nm.jpg","poster_url":"https://image.tmdb.org/t/p/original/5DjPvjvhDCyy6fH8Ko7Fkq0Zbiw.jpg","aspect_ratio":2.091}', '{"id":"tt2349912","vote_average":7.5}', 
  1789378914601, '2026-09-09T15:53:20.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-1', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-1', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-1', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-1', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'bac-si-x-ngoai-khoa-daimon-michiko-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bac-si-x-ngoai-khoa-daimon-michiko-phan-1', 'Bác Sĩ X Ngoại Khoa: Daimon Michiko (Phần 1)', 'Doctor X Surgeon Michiko Daimon (Season 1)', 'bác sĩ x ngoại khoa: daimon michiko (phần 1) doctor x surgeon michiko daimon (season 1) 米倉涼子 uchida yuki 遠藤憲一 岸部一徳 西田敏行 鈴木浩介 勝村政信 今田美桜 二世野村萬斎 小籔千豊', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nhip-dieu-hip-hop-phap-phan-5', 'Nhịp Điệu Hip Hop Pháp (Phần 5)', 'Rhythm + Flow France (Season 5)', 'https://phimimg.com/uploads/movies/20260909/nouvelle-ecole-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/nouvelle-ecole-poster.webp', '<p>Trong cuộc thi âm nhạc có Niska, Shay và SCH làm giám khảo, rapper Pháp rap tự do, rap chiến và sáng tác để cạnh tranh giải thưởng 100.000 euro giúp thay đổi cuộc chơi.</p>', 
  'Hoàn Tất (6/6)', 6, 'tvshows', 'completed', 98, 2026, 
  'Vietsub', 'FHD', 'Pháp', 0, 
  '[{"name":"SCH","avatar":"https://image.tmdb.org/t/p/w185/9sFnc3RDXa1LsPKaFYrrq0pUCuN.jpg"},{"name":"SDM","avatar":"https://image.tmdb.org/t/p/w185/ze5SVR0J4qsWbXB8g39qWXRXm9m.jpg"},{"name":"Olivio Ordonez","avatar":"https://image.tmdb.org/t/p/w185/muEOf15XhzNCG92z2nxHnUV7bDW.jpg"},{"name":"Theodora","avatar":"https://image.tmdb.org/t/p/w185/p3UojPyS1yAmtAC0YzLEN4cAoOo.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Rhythm + Flow : Nouvelle École","Rhythm and Flow: France","Nouvelle École"]', '{"id":"133784","type":"tv","vote_average":7.2,"vote_count":18,"logo_url":"https://image.tmdb.org/t/p/original/14pDONrStRcIOE3BzhjN94GctsQ.png","backdrop_url":"https://image.tmdb.org/t/p/original/6qlfBwASsbzQCw6U2JEBIjTUoN1.jpg","poster_url":"https://image.tmdb.org/t/p/original/fywhrJNTWC70f4xzUKGqLOS8dkD.jpg","aspect_ratio":6.646}', '{"id":"tt20192132","vote_average":6.4}', 
  1789378914600, '2026-09-09T15:46:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-5', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-5', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-5', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'nhip-dieu-hip-hop-phap-phan-5';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nhip-dieu-hip-hop-phap-phan-5', 'Nhịp Điệu Hip Hop Pháp (Phần 5)', 'Rhythm + Flow France (Season 5)', 'nhịp điệu hip hop pháp (phần 5) rhythm + flow france (season 5) sch sdm olivio ordonez theodora', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nhip-dieu-hip-hop-phap-phan-4', 'Nhịp Điệu Hip Hop Pháp (Phần 4)', 'Rhythm + Flow France (Season 4)', 'https://phimimg.com/upload/vod/20251105-1/b83cefddb79fe3c336a6b005ff5299d3.jpg', 'https://phimimg.com/upload/vod/20251105-1/a5c82a23107e68ba00d4bcdb98894d5a.jpg', '<p>Trong cuộc thi âm nhạc có Niska, Shay và SCH làm giám khảo, rapper Pháp rap tự do, rap chiến và sáng tác để cạnh tranh giải thưởng 100.000 euro giúp thay đổi cuộc chơi.</p>', 
  'Hoàn Tất (9/9)', 9, 'tvshows', 'completed', 182, 2025, 
  'Vietsub', 'FHD', 'Pháp', 0, 
  '[{"name":"SCH","avatar":"https://image.tmdb.org/t/p/w185/9sFnc3RDXa1LsPKaFYrrq0pUCuN.jpg"},{"name":"SDM","avatar":"https://image.tmdb.org/t/p/w185/ze5SVR0J4qsWbXB8g39qWXRXm9m.jpg"},{"name":"Olivio Ordonez","avatar":"https://image.tmdb.org/t/p/w185/muEOf15XhzNCG92z2nxHnUV7bDW.jpg"},{"name":"Theodora","avatar":"https://image.tmdb.org/t/p/w185/p3UojPyS1yAmtAC0YzLEN4cAoOo.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Rhythm + Flow : Nouvelle École","Rhythm and Flow: France","Nouvelle École"]', '{"id":"133784","type":"tv","vote_average":7.1,"vote_count":17,"logo_url":"https://image.tmdb.org/t/p/original/14pDONrStRcIOE3BzhjN94GctsQ.png","backdrop_url":"https://image.tmdb.org/t/p/original/6qlfBwASsbzQCw6U2JEBIjTUoN1.jpg","poster_url":"https://image.tmdb.org/t/p/original/fywhrJNTWC70f4xzUKGqLOS8dkD.jpg","aspect_ratio":6.646}', '{"id":"tt20192132","vote_average":6.4}', 
  1789378914599, '2026-09-09T15:44:00.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-4', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-4', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-4', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'nhip-dieu-hip-hop-phap-phan-4';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nhip-dieu-hip-hop-phap-phan-4', 'Nhịp Điệu Hip Hop Pháp (Phần 4)', 'Rhythm + Flow France (Season 4)', 'nhịp điệu hip hop pháp (phần 4) rhythm + flow france (season 4) sch sdm olivio ordonez theodora', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nhip-dieu-hip-hop-phap-phan-3', 'Nhịp Điệu Hip Hop Pháp (Phần 3)', 'Rhythm + Flow France (Season 3)', 'https://phimimg.com/upload/vod/20251105-1/b8c6bd5f582c67ff2aae6b722095859d.jpg', 'https://phimimg.com/upload/vod/20251105-1/9ab2f48f59c72c601378663033d9e0d6.jpg', '<p>Trong cuộc thi âm nhạc có Niska, Shay và SCH làm giám khảo, rapper Pháp rap tự do, rap chiến và sáng tác để cạnh tranh giải thưởng 100.000 euro giúp thay đổi cuộc chơi.</p>', 
  'Hoàn Tất (10/10)', 10, 'tvshows', 'completed', 187, 2024, 
  'Vietsub', 'FHD', 'Pháp', 0, 
  '[{"name":"SCH","avatar":"https://image.tmdb.org/t/p/w185/9sFnc3RDXa1LsPKaFYrrq0pUCuN.jpg"},{"name":"SDM","avatar":"https://image.tmdb.org/t/p/w185/ze5SVR0J4qsWbXB8g39qWXRXm9m.jpg"},{"name":"Olivio Ordonez","avatar":"https://image.tmdb.org/t/p/w185/muEOf15XhzNCG92z2nxHnUV7bDW.jpg"},{"name":"Theodora","avatar":"https://image.tmdb.org/t/p/w185/p3UojPyS1yAmtAC0YzLEN4cAoOo.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Rhythm + Flow : Nouvelle École","Rhythm and Flow: France","Nouvelle École"]', '{"id":"133784","type":"tv","vote_average":7.1,"vote_count":17,"logo_url":"https://image.tmdb.org/t/p/original/14pDONrStRcIOE3BzhjN94GctsQ.png","backdrop_url":"https://image.tmdb.org/t/p/original/6qlfBwASsbzQCw6U2JEBIjTUoN1.jpg","poster_url":"https://image.tmdb.org/t/p/original/fywhrJNTWC70f4xzUKGqLOS8dkD.jpg","aspect_ratio":6.646}', '{"id":"tt20192132","vote_average":6.4}', 
  1789378914598, '2026-09-09T15:43:54.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-3', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-3', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-3', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'nhip-dieu-hip-hop-phap-phan-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nhip-dieu-hip-hop-phap-phan-3', 'Nhịp Điệu Hip Hop Pháp (Phần 3)', 'Rhythm + Flow France (Season 3)', 'nhịp điệu hip hop pháp (phần 3) rhythm + flow france (season 3) sch sdm olivio ordonez theodora', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nhip-dieu-hip-hop-phap-phan-2', 'Nhịp Điệu Hip Hop Pháp (Phần 2)', 'Rhythm + Flow France (Season 2)', 'https://phimimg.com/upload/vod/20251105-1/103ff764d6d2c1354c91aa3fdeb3181c.jpg', 'https://phimimg.com/upload/vod/20251105-1/14f640b72c89f779ba1a93e6a58a6ee5.jpg', '<p>Trong cuộc thi âm nhạc có Niska, Shay và SCH làm giám khảo, rapper Pháp rap tự do, rap chiến và sáng tác để cạnh tranh giải thưởng 100.000 euro giúp thay đổi cuộc chơi.</p>', 
  'Hoàn Tất (8/8)', 8, 'tvshows', 'completed', 190, 2023, 
  'Vietsub', 'FHD', 'Pháp', 0, 
  '[{"name":"SCH","avatar":"https://image.tmdb.org/t/p/w185/9sFnc3RDXa1LsPKaFYrrq0pUCuN.jpg"},{"name":"SDM","avatar":"https://image.tmdb.org/t/p/w185/ze5SVR0J4qsWbXB8g39qWXRXm9m.jpg"},{"name":"Olivio Ordonez","avatar":"https://image.tmdb.org/t/p/w185/muEOf15XhzNCG92z2nxHnUV7bDW.jpg"},{"name":"Theodora","avatar":"https://image.tmdb.org/t/p/w185/p3UojPyS1yAmtAC0YzLEN4cAoOo.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Rhythm + Flow : Nouvelle École","Rhythm and Flow: France","Nouvelle École"]', '{"id":"133784","type":"tv","vote_average":7.1,"vote_count":17,"logo_url":"https://image.tmdb.org/t/p/original/14pDONrStRcIOE3BzhjN94GctsQ.png","backdrop_url":"https://image.tmdb.org/t/p/original/6qlfBwASsbzQCw6U2JEBIjTUoN1.jpg","poster_url":"https://image.tmdb.org/t/p/original/fywhrJNTWC70f4xzUKGqLOS8dkD.jpg","aspect_ratio":6.646}', '{"id":"tt20192132","vote_average":6.4}', 
  1789378914597, '2026-09-09T15:43:49.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-2', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'nhip-dieu-hip-hop-phap-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nhip-dieu-hip-hop-phap-phan-2', 'Nhịp Điệu Hip Hop Pháp (Phần 2)', 'Rhythm + Flow France (Season 2)', 'nhịp điệu hip hop pháp (phần 2) rhythm + flow france (season 2) sch sdm olivio ordonez theodora', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nhip-dieu-hip-hop-phap-phan-1', 'Nhịp Điệu Hip Hop Pháp (Phần 1)', 'Rhythm + Flow France (Season 1)', 'https://phimimg.com/upload/vod/20251105-1/d2630651c7a89232b4b03c76bc45b061.jpg', 'https://phimimg.com/upload/vod/20251105-1/fc0fffe0988d9828afc073d3fc839a33.jpg', '<p>Trong cuộc thi âm nhạc có Niska, Shay và SCH làm giám khảo, rapper Pháp rap tự do, rap chiến và sáng tác để cạnh tranh giải thưởng 100.000 euro giúp thay đổi cuộc chơi.</p>', 
  'Hoàn Tất (8/8)', 8, 'tvshows', 'completed', 190, 2022, 
  'Vietsub', 'FHD', 'Pháp', 0, 
  '[{"name":"SCH","avatar":"https://image.tmdb.org/t/p/w185/9sFnc3RDXa1LsPKaFYrrq0pUCuN.jpg"},{"name":"SDM","avatar":"https://image.tmdb.org/t/p/w185/ze5SVR0J4qsWbXB8g39qWXRXm9m.jpg"},{"name":"Olivio Ordonez","avatar":"https://image.tmdb.org/t/p/w185/muEOf15XhzNCG92z2nxHnUV7bDW.jpg"},{"name":"Theodora","avatar":"https://image.tmdb.org/t/p/w185/p3UojPyS1yAmtAC0YzLEN4cAoOo.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Rhythm + Flow : Nouvelle École","Rhythm and Flow: France","Nouvelle École"]', '{"id":"133784","type":"tv","vote_average":7.1,"vote_count":17,"logo_url":"https://image.tmdb.org/t/p/original/14pDONrStRcIOE3BzhjN94GctsQ.png","backdrop_url":"https://image.tmdb.org/t/p/original/6qlfBwASsbzQCw6U2JEBIjTUoN1.jpg","poster_url":"https://image.tmdb.org/t/p/original/fywhrJNTWC70f4xzUKGqLOS8dkD.jpg","aspect_ratio":6.646}', '{"id":"tt20192132","vote_average":6.4}', 
  1789378914596, '2026-09-09T15:43:42.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-1', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-1', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhip-dieu-hip-hop-phap-phan-1', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'nhip-dieu-hip-hop-phap-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nhip-dieu-hip-hop-phap-phan-1', 'Nhịp Điệu Hip Hop Pháp (Phần 1)', 'Rhythm + Flow France (Season 1)', 'nhịp điệu hip hop pháp (phần 1) rhythm + flow france (season 1) sch sdm olivio ordonez theodora', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'earle-buoc-ra-the-gioi', 'Earle Bước Ra Thế Giới', 'Earle Meets World', 'https://phimimg.com/uploads/movies/20260909/earle-buoc-ra-the-gioi-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/earle-buoc-ra-the-gioi-poster.webp', '<p>Alix Earle — biểu tượng "It Girl" hàng đầu của Thế hệ Z — sẽ mang đến những góc nhìn chân thực, không kịch bản và không lọc chỉnh trong series thực tế hậu trường xoay quanh cuộc sống cá nhân cùng gia đình đa dạng, đầy màu sắc của cô.</p>', 
  'Hoàn Tất (8/8)', 8, 'tvshows', 'completed', 99, 2026, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Alix Earle","avatar":"https://image.tmdb.org/t/p/w185/dT4Up3XztHhPeEfyEOHSNejEBVb.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["阿利克斯·厄尔：真我闯世界","阿丽克丝·厄尔：真我闯世界","Earle Meets World"]', '{"id":"330371","type":"tv","vote_average":5,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/tRIIuFh9f7qxiZWx9L3Hd8mDT8A.png","backdrop_url":"https://image.tmdb.org/t/p/original/hh7gTtE7QRAoNFma84N8dHNN3UB.jpg","poster_url":"https://image.tmdb.org/t/p/original/wbU6JeOVw30CRXNFwu8AuCdhXW0.jpg","aspect_ratio":5.444}', '{"id":"tt42654265","vote_average":null}', 
  1789378914595, '2026-09-09T15:42:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('earle-buoc-ra-the-gioi', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('earle-buoc-ra-the-gioi', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('earle-buoc-ra-the-gioi', 'bo_au_my');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('earle-buoc-ra-the-gioi', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'earle-buoc-ra-the-gioi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('earle-buoc-ra-the-gioi', 'Earle Bước Ra Thế Giới', 'Earle Meets World', 'earle bước ra thế giới earle meets world alix earle', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'huyen-huyen-ta-thien-menh-trum-phan-dien', 'Huyền Huyễn: Ta! Thiên Mệnh Trùm Phản Diện', 'The Heavenly Fate Villain', 'https://phimimg.com/uploads/movies/20260726/huyen-huyen-ta-thien-menh-trum-phan-dien-thumb.webp', 'https://phimimg.com/uploads/movies/20260726/huyen-huyen-ta-thien-menh-trum-phan-dien-poster.webp', '<p>Bộ phim được chuyển thể từ tiểu thuyết cùng tên trên trang web Faloo, kể về anh chàng Cố Trường Ca xuyên không đến một thế giới huyền ảo và phát hiện mình trở thành Cố Trường Ca - phản diện độc ác, kẻ vốn định sẵn sẽ bị nhân vật chính đánh bại. Để tự bảo vệ bản thân và thay đổi số phận, anh buộc phải tận dụng hệ thống cùng lợi thế biết trước mô-típ của dòng truyện "vả mặt", liên tục mưu tính, cướp cơ duyên và chèn ép các nhân vật chính, nhờ đó, anh liên tục nhận được phần thưởng, từng bước vươn lên đỉnh cao.</p>', 
  'Tập 19', 60, 'hoathinh', 'ongoing', 426, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"578f80eb493b08d175c7a0c29687cbdf","name":"Võ Thuật","slug":"vo-thuat"}]', 
  '[]', '{"id":null,"type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914594, '2026-09-09T13:59:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huyen-huyen-ta-thien-menh-trum-phan-dien', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huyen-huyen-ta-thien-menh-trum-phan-dien', 'vo-thuat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huyen-huyen-ta-thien-menh-trum-phan-dien', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huyen-huyen-ta-thien-menh-trum-phan-dien', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huyen-huyen-ta-thien-menh-trum-phan-dien', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'huyen-huyen-ta-thien-menh-trum-phan-dien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('huyen-huyen-ta-thien-menh-trum-phan-dien', 'Huyền Huyễn: Ta! Thiên Mệnh Trùm Phản Diện', 'The Heavenly Fate Villain', 'huyền huyễn: ta! thiên mệnh trùm phản diện the heavenly fate villain đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tinh-yeu-lap-lanh-phan-1', 'Tình Yêu Lấp Lánh (Phần 1)', 'Strobe Edge (Season 1)', 'https://phimimg.com/uploads/movies/20260909/tinh-yeu-lap-lanh-phan-1-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/tinh-yeu-lap-lanh-phan-1-poster.webp', '<p>Phim xoay quanh nữ sinh trung học Kinoshita Ninako – người chưa từng biết yêu là gì. Sau một lần tình cờ gặp gỡ Ichinose Ren trên chuyến tàu về nhà, cô dần bị thu hút bởi sự dịu dàng và nụ cười của cậu, từ đó nhận ra những rung động đơn phương thuở đầu và mối quan hệ ngày càng gắn bó giữa hai người.</p>', 
  'Hoàn Tất (6/6)', 6, 'series', 'completed', 95, 2025, 
  'Vietsub + Thuyết Minh', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"福本莉子","avatar":"https://image.tmdb.org/t/p/w185/kn57QYPmigWihRaSOtsRmjglbN4.jpg"},{"name":"高橋恭平","avatar":"https://image.tmdb.org/t/p/w185/bmROKeoNttvNsPLwUqbbI8dHSV1.jpg"},{"name":"山下幸輝","avatar":"https://image.tmdb.org/t/p/w185/j7C9n4VQo5hooPxjUssduvSCbcm.jpg"},{"name":"中沢元紀","avatar":"https://image.tmdb.org/t/p/w185/q9Y9uPyb7J47kWJcZeK3n398iOS.jpg"},{"name":"小坂菜緒","avatar":"https://image.tmdb.org/t/p/w185/eio1nG3szaJJvMnc7SxMsOlxQ92.jpg"},{"name":"中川翼","avatar":"https://image.tmdb.org/t/p/w185/c0XAHzQbnHS757xLo9gD40bJuGc.jpg"},{"name":"井上想良","avatar":"https://image.tmdb.org/t/p/w185/lnKcOZkuThPCrsBvVZBiLOMOZld.jpg"},{"name":"井上音生","avatar":"https://image.tmdb.org/t/p/w185/iYfg0XzVwMrT92ziwORqd19nkMB.jpg"},{"name":"小栗有以","avatar":"https://image.tmdb.org/t/p/w185/irHsarvGkTUxbKH3VJ9n4Klbs9z.jpg"},{"name":"田鍋梨々花","avatar":"https://image.tmdb.org/t/p/w185/95Ry88SNQGQat18uZB62Q94pcpP.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["連続ドラマW-30 ストロボ・エッジ","ストロボ・エッジ"]', '{"id":"299679","type":"tv","vote_average":5.8,"vote_count":4,"logo_url":"https://image.tmdb.org/t/p/original/5K04yiSrF0sNWkSmreCWRIq6DOD.png","backdrop_url":"https://image.tmdb.org/t/p/original/kUzQhsyhgLARUyEWXsMyeMaCUHI.jpg","poster_url":"https://image.tmdb.org/t/p/original/6gf5C0LUcLjEffIJE8d26AuNwhb.jpg","aspect_ratio":3.126}', '{"id":"tt38354090","vote_average":null}', 
  1789378914593, '2026-09-09T13:47:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-lap-lanh-phan-1', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-lap-lanh-phan-1', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-lap-lanh-phan-1', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-lap-lanh-phan-1', 'bo_nhat');
DELETE FROM movies_fts WHERE slug = 'tinh-yeu-lap-lanh-phan-1';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tinh-yeu-lap-lanh-phan-1', 'Tình Yêu Lấp Lánh (Phần 1)', 'Strobe Edge (Season 1)', 'tình yêu lấp lánh (phần 1) strobe edge (season 1) 福本莉子 高橋恭平 山下幸輝 中沢元紀 小坂菜緒 中川翼 井上想良 井上音生 小栗有以 田鍋梨々花', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'huan-luyen-vien-ted-lasso-phan-4', 'Huấn Luyện Viên Ted Lasso (Phần 4)', 'Ted Lasso (Season 4)', 'https://phimimg.com/uploads/movies/20260816/huan-luyen-vien-ted-lasso-phan-4-thumb.webp', 'https://phimimg.com/uploads/movies/20260816/huan-luyen-vien-ted-lasso-phan-4-poster.webp', '<p>Ted Lasso là một huấn luyện viên bóng bầu dục đang dẫn dắt một đội bóng đá của Anh. Lỗ hổng kiến thức của anh được bù đắp bằng sự lạc quan... và bánh quy.</p>', 
  'Tập 6', 10, 'series', 'ongoing', 275, 2026, 
  'Vietsub', 'FHD', 'Âu Mỹ', 0, 
  '[{"name":"Jason Sudeikis","avatar":"https://image.tmdb.org/t/p/w185/uuacnP9DOHMsmj8FhBi0cWWDgrn.jpg"},{"name":"Hannah Waddingham","avatar":"https://image.tmdb.org/t/p/w185/eHAICyhvjiRZCgzKyJCk9hWnnjr.jpg"},{"name":"Jeremy Swift","avatar":"https://image.tmdb.org/t/p/w185/muRh4WbyEE4S2763bv777ywpKP3.jpg"},{"name":"Brett Goldstein","avatar":"https://image.tmdb.org/t/p/w185/xYdFNE7EkncE8uiPJzT3RrkqcAQ.jpg"},{"name":"Brendan Hunt","avatar":"https://image.tmdb.org/t/p/w185/7Z8q2WUop3q5BdyaBD6YvweGWrZ.jpg"},{"name":"Juno Temple","avatar":"https://image.tmdb.org/t/p/w185/vwCjlWQLQWbmcUT2Lwn9G0O8r2.jpg"},{"name":"Tanya Reynolds","avatar":"https://image.tmdb.org/t/p/w185/m5FP6lzbxYon8W6hEvj9d4h21i4.jpg"},{"name":"Jude Mack","avatar":"https://image.tmdb.org/t/p/w185/iZbW7IkBCFkt164Hh3Oa2PBpNr8.jpg"},{"name":"Rex Hayes","avatar":""},{"name":"Sophie Simnett","avatar":"https://image.tmdb.org/t/p/w185/7J57MF1xaLfKHcod4b0U6b1biAX.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["足球教练","טד לאסו","테드 래소","泰德拉索","Ted Lasso: The Richmond Way","Ted Lasso"]', '{"id":"97546","type":"tv","vote_average":8.4,"vote_count":2539,"logo_url":"https://image.tmdb.org/t/p/original/iYTc96rNiAPm1Q2AwsHX79KfWvG.svg","backdrop_url":"https://image.tmdb.org/t/p/original/nE94ejEbzNCU48bW1oju0dqBONz.jpg","poster_url":"https://image.tmdb.org/t/p/original/uRHsiw1wLxPHFXkkv4Ix1s0O6f4.jpg","aspect_ratio":6.897}', '{"id":"tt10986410","vote_average":8.7}', 
  1789378914592, '2026-09-09T13:23:10.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huan-luyen-vien-ted-lasso-phan-4', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huan-luyen-vien-ted-lasso-phan-4', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huan-luyen-vien-ted-lasso-phan-4', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('huan-luyen-vien-ted-lasso-phan-4', 'bo_au_my');
DELETE FROM movies_fts WHERE slug = 'huan-luyen-vien-ted-lasso-phan-4';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('huan-luyen-vien-ted-lasso-phan-4', 'Huấn Luyện Viên Ted Lasso (Phần 4)', 'Ted Lasso (Season 4)', 'huấn luyện viên ted lasso (phần 4) ted lasso (season 4) jason sudeikis hannah waddingham jeremy swift brett goldstein brendan hunt juno temple tanya reynolds jude mack rex hayes sophie simnett', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'meitantei-precure', 'Meitantei Precure!', 'Star Detective Precure!', 'https://phimimg.com/upload/vod/20260607-1/9369fb0b1a0db1c015470c105d065ba0.jpg', 'https://phimimg.com/upload/vod/20260607-1/0d46f3ca0500b986fda2df9d94ab9efa.jpg', '<p>Cốt truyện xoay quanh Anna Akechi, một nữ sinh 14 tuổi sống tại thành phố Makoto Mirai vào năm 2027. Vào ngày sinh nhật của mình, Anna được dẫn dắt bởi một tiên nữ tên là Pochitan và một chiếc mặt dây chuyền bí ẩn, khiến cô bị du hành ngược thời gian về thành phố Makoto Mirai của năm 1999. Tại đây, Anna gặp gỡ Mikuru Kobayashi, một cô gái trẻ đầy nhiệt huyết với ước mơ trở thành thám tử lừng danh. Khi một vụ trộm kỳ lạ xảy ra do những kẻ được gọi là &quot;Băng trộm bóng đêm&quot; (Phantom Thieves) thực hiện, cả hai đã cùng nhau biến hình thành các chiến binh nòng cốt</p>', 
  'Tập 32', 40, 'hoathinh', 'ongoing', 395, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"千賀光莉","avatar":"https://image.tmdb.org/t/p/w185/mjyriDKbzXRo5IicBnvIokDWtFH.jpg"},{"name":"本渡楓","avatar":"https://image.tmdb.org/t/p/w185/11BcHnuJYrOZhIftgUiQqfm7TK6.jpg"},{"name":"東山奈央","avatar":"https://image.tmdb.org/t/p/w185/6WJDd1z946yFfZBgpC7dWi0FyQw.jpg"},{"name":"長谷川育美","avatar":"https://image.tmdb.org/t/p/w185/aHLid4WeTafrtfqDRAZSw5K7dTj.jpg"},{"name":"Kaji Yuki","avatar":"https://image.tmdb.org/t/p/w185/8wKdPV11IwowfwoqGqMMNt9hmp6.jpg"},{"name":"加藤英美里","avatar":"https://image.tmdb.org/t/p/w185/m0zqjeg65sEe5TTy4mKqgwXVipI.jpg"},{"name":"羊宮妃那","avatar":"https://image.tmdb.org/t/p/w185/tOy21NTNnKuZG48JCL673tTP16z.jpg"},{"name":"礒部花凜","avatar":"https://image.tmdb.org/t/p/w185/rZnJV3Pa3ykf03n7UEW12TVKH6E.jpg"},{"name":"Hino Satoshi","avatar":"https://image.tmdb.org/t/p/w185/8ZJIiwIVF2zDyyFr7oXewj0eEuu.jpg"},{"name":"松岡禎丞","avatar":"https://image.tmdb.org/t/p/w185/ugDwdWEXnmv43jcbnfAi4XwiQ8C.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"0c853f6238e0997ee318b646bb1978bc","name":"Trẻ Em","slug":"tre-em"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["名侦探光之美少女！","名侦探光之美少女","名侦探偶像光之美少女♪","名偵探光之美少女","Star Detective Precure!","Meitantei Pretty Cure!","Great Detective Pretty Cure!","Star Detective Pretty Cure!","Star Detective PreCure!","名探偵プリキュア！"]', '{"id":"306721","type":"tv","vote_average":6.8,"vote_count":5,"logo_url":"https://image.tmdb.org/t/p/original/j0QGp7ZpB1Fpwrz24JVtJ8H73Tc.png","backdrop_url":"https://image.tmdb.org/t/p/original/bOgsRcvQcetWXtVnPgKtYYf9aSV.jpg","poster_url":"https://image.tmdb.org/t/p/original/hvCZ64xKMJvFQDgW3RypLnzzS32.jpg","aspect_ratio":2.797}', '{"id":"tt39047437","vote_average":8}', 
  1789378914591, '2026-09-09T13:16:56.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'tre-em');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('meitantei-precure', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'meitantei-precure';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('meitantei-precure', 'Meitantei Precure!', 'Star Detective Precure!', 'meitantei precure! star detective precure! 千賀光莉 本渡楓 東山奈央 長谷川育美 kaji yuki 加藤英美里 羊宮妃那 礒部花凜 hino satoshi 松岡禎丞', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'me-la-dung-nhat', 'Mẹ Là Đúng Nhất?', 'Mom Knows Best?', 'https://phimimg.com/uploads/movies/20260831/me-la-dung-nhat-thumb.webp', 'https://phimimg.com/uploads/movies/20260831/me-la-dung-nhat-poster.webp', '<p>Trong khi chín người tham gia tự giới thiệu và chia sẻ những câu chuyện của mình tại Nhà chung, các bà mẹ của họ lặng lẽ quan sát và bắt đầu đặt cược ở lượt đầu tiên.</p>', 
  'Hoàn Tất (7/7)', 7, 'series', 'completed', 108, 2026, 
  'Vietsub', 'FHD', 'Brazil', 0, 
  '[{"name":"Cláudia Raia","avatar":"https://image.tmdb.org/t/p/w185/8CtXg9ZbsggMCMIFTyn02wsQYE4.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["¿Tu madre te conoce bien?","Anya ismer a legjobban?","Mom Knows Best","Sua Mae Te Conhece","Sua Mãe Te Conhece?"]', '{"id":"331796","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/NlcTfpNZbjTE1mHWwsw6f6GIa.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt39161228","vote_average":null}', 
  1789378914590, '2026-09-09T13:16:32.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-la-dung-nhat', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('me-la-dung-nhat', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'me-la-dung-nhat';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('me-la-dung-nhat', 'Mẹ Là Đúng Nhất?', 'Mom Knows Best?', 'mẹ là đúng nhất? mom knows best? cláudia raia', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'co-gi-lai-di-leo-nui', 'Cớ Gì Lại Đi Leo Núi?', 'Take A Hike!', 'https://phimimg.com/uploads/movies/20260819/co-gi-lai-di-leo-nui-thumb.webp', 'https://phimimg.com/uploads/movies/20260819/co-gi-lai-di-leo-nui-poster.webp', '<p>Bốn nghệ sĩ nổi tiếng mới tập tễnh bước vào bộ môn leo núi lập thành một câu lạc bộ để chinh phục những đỉnh núi phủ đầy tuyết của Hàn Quốc. Liệu họ có thể tìm ra lý do vì sao người ta lại đam mê leo núi đến vậy?</p>', 
  'Hoàn Tất (10/10)', 10, 'tvshows', 'completed', 255, 2026, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"카더가든","avatar":"https://image.tmdb.org/t/p/w185/bMlyqSAIrOg4ghrfdtA9SePO2mH.jpg"},{"name":"도운","avatar":"https://image.tmdb.org/t/p/w185/mUSbxzVTEyZpkbFvj6lut4zbB9B.jpg"},{"name":"이채민","avatar":"https://image.tmdb.org/t/p/w185/1StfxIzOn8Fgvoiap7ppXLp2ymF.jpg"},{"name":"타잔","avatar":"https://image.tmdb.org/t/p/w185/29WE9KX6aw2Zlr4patgEuuQ92Bh.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["你为什么要爬山？","¿Qué hacemos escalando montañas?","대체 등산을 왜 하는 건데?","Take a Hike!"]', '{"id":"326901","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/mwzUeJo80O5D8jWfaDN4TDLEqjZ.png","backdrop_url":"https://image.tmdb.org/t/p/original/giJzZvC9p6QdSi9tCgcOJZcw2hY.jpg","poster_url":"https://image.tmdb.org/t/p/original/ya3p0meUJJ92gjFRFcZ1C3TJ0nO.jpg","aspect_ratio":2.476}', '{"id":"tt39387594","vote_average":null}', 
  1789378914589, '2026-09-09T13:10:58.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-gi-lai-di-leo-nui', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-gi-lai-di-leo-nui', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-gi-lai-di-leo-nui', 'bo_han');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('co-gi-lai-di-leo-nui', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'co-gi-lai-di-leo-nui';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('co-gi-lai-di-leo-nui', 'Cớ Gì Lại Đi Leo Núi?', 'Take A Hike!', 'cớ gì lại đi leo núi? take a hike! 카더가든 도운 이채민 타잔', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'bi-mat-gioi-the-thao-mr-t', 'Bí Mật Giới Thể Thao: Mr T', 'Untold Mr. T: I Pity the Fool', 'https://phimimg.com/uploads/movies/20260909/bi-mat-gioi-the-thao-mr-t-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/bi-mat-gioi-the-thao-mr-t-poster.webp', '<p>Mr. T từng gây bão toàn cầu như một biểu tượng thập niên 80. Bộ phim tài liệu hé lộ toàn bộ câu chuyện đằng sau mái tóc mohawk, sợi dây chuyền và câu cửa miệng, qua lời kể của ông.</p>', 
  'Full', 1, 'single', 'completed', 40, 2026, 
  'Vietsub', 'FHD', 'Mỹ', 0, 
  '[{"name":"Mr. T","avatar":"https://image.tmdb.org/t/p/w185/oblysKmIpP7fg5iW5P212s8LGAg.jpg"},{"name":"Terry Crews","avatar":"https://image.tmdb.org/t/p/w185/pxTY4SglLo5hFcMH00MxPeC5u55.jpg"},{"name":"Dirk Benedict","avatar":"https://image.tmdb.org/t/p/w185/lQG0YpiHdhQgs5DKS0185JA60mr.jpg"},{"name":"Sylvester Stallone","avatar":"https://image.tmdb.org/t/p/w185/gn3pDWthJqR0VDYGViGD3048og7.jpg"},{"name":"Ronald Reagan","avatar":"https://image.tmdb.org/t/p/w185/tuB7bNPABSP3MtPKpdttbz2OdSU.jpg"},{"name":"Nancy Reagan","avatar":"https://image.tmdb.org/t/p/w185/dPGlSbpLf6ixZYYhg8fuZCIqrGp.jpg"},{"name":"Hulk Hogan","avatar":"https://image.tmdb.org/t/p/w185/i27iSeP7hhtlFOeVnthRQ9Ox2m4.jpg"},{"name":"George Peppard","avatar":"https://image.tmdb.org/t/p/w185/td2SN1HGqgGsWLi4YhReMYvH2ik.jpg"},{"name":"Dwight Schultz","avatar":"https://image.tmdb.org/t/p/w185/kVXkC94gNdSWRvDAs0DqBCduJ4S.jpg"},{"name":"Muhammad Ali","avatar":"https://image.tmdb.org/t/p/w185/u1ck2Lfx34GvW3YOoEE1ddNVdw6.jpg"}]', '[{"id":"1645fa23fa33651cef84428b0dcc2130","name":"Tài Liệu","slug":"tai-lieu"}]', 
  '["Untold Mr T Ho Pieta Per Gli Stolti","Untold Mr. T: I Pity the Fool"]', '{"id":"1739206","type":"movie","vote_average":8.1,"vote_count":9,"logo_url":"https://image.tmdb.org/t/p/original/w8UZhVeER1A22GDjgFtLPGQOQlb.png","backdrop_url":"https://image.tmdb.org/t/p/original/tCxXRtEn4nQVtxQzaH32ZUjoX3C.jpg","poster_url":"https://image.tmdb.org/t/p/original/bUWHsZqPiYl8GwxhXA1nCdKRZbn.jpg","aspect_ratio":3.345}', '{"id":"tt43700444","vote_average":null}', 
  1789378914588, '2026-09-09T13:10:29.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('bi-mat-gioi-the-thao-mr-t', 'tai-lieu');
DELETE FROM movies_fts WHERE slug = 'bi-mat-gioi-the-thao-mr-t';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('bi-mat-gioi-the-thao-mr-t', 'Bí Mật Giới Thể Thao: Mr T', 'Untold Mr. T: I Pity the Fool', 'bí mật giới thể thao: mr t untold mr. t: i pity the fool mr. t terry crews dirk benedict sylvester stallone ronald reagan nancy reagan hulk hogan george peppard dwight schultz muhammad ali', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'azur-lane-bisoku-zenshin-ni-phan-2', 'Azur Lane: Bisoku Zenshin! Ni!! (Phần 2)', 'Azur Lane: Slow Ahead! (Season 2)', 'https://phimimg.com/uploads/movies/20260723/azur-lane-bisoku-zenshin-ni-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260723/azur-lane-bisoku-zenshin-ni-phan-2-poster.webp', '<p>Đây là một thế giới có phần kỳ lạ, nơi các "hạm娘" (thiếu nữ tàu chiến) sinh sống. Một cuộc sống học đường vô cùng nhộn nhịp và vui vẻ dành cho các cô gái đến từ nhiều phe phái khác nhau bắt đầu tại căn cứ hải quân Azur Lane. Sống hết mình với tuổi trẻ, các cô gái liên tục vướng vào những tình huống dở khóc dở cười — chậm rãi nhưng chắc chắn!</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 330, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Azur Lane - Bisoku Zenshin!","Azur Lane - Slow Ahead!","碧蓝航线 微速前进！","碧蓝航线 微速前进！第二季","anime-azurlane-slow-ahead","Azur Lane: Bisoku Zenshin!","Azur Lane – Bisoku Zenshin!","アズールレーン びそくぜんしんっ！にっ!!","벽람항로 미속전진","벽람항로","Azur Lane - Powoli przed siebie!","碧藍航線 微速前進！2","Azur Lane: Slow Ahead!","アズールレーン びそくぜんしんっ！"]', '{"id":"109805","type":"tv","vote_average":5.7,"vote_count":15,"logo_url":"https://image.tmdb.org/t/p/original/mffLu8cizRBWwio9KqCc9BqEiGs.png","backdrop_url":"https://image.tmdb.org/t/p/original/kuNbZYiODIgeSwf41ReSWtlcRIz.jpg","poster_url":"https://image.tmdb.org/t/p/original/evNjloRQilbYco1HIP1c6IpZH4c.jpg","aspect_ratio":1.511}', '{"id":"tt13084120","vote_average":7}', 
  1789378914587, '2026-09-09T13:07:41.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'azur-lane-bisoku-zenshin-ni-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('azur-lane-bisoku-zenshin-ni-phan-2', 'Azur Lane: Bisoku Zenshin! Ni!! (Phần 2)', 'Azur Lane: Slow Ahead! (Season 2)', 'azur lane: bisoku zenshin! ni!! (phần 2) azur lane: slow ahead! (season 2) đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'su-huynh-a-su-huynh', 'Sư Huynh À Sư Huynh', 'My Senior Brother is Too Steady', 'https://phimimg.com/upload/vod/20250117-1/d2d7ee02b72e59bea282b367e36b0094.jpg', 'https://phimimg.com/upload/vod/20250117-1/a9e32b44820101a9ba2c887344f7334c.jpg', '<p>Lý Trường Thọ - một thanh niên mắc bệnh hiểm nghèo vô tình được tái sinh vào thời thượng cổ trước đại chiến phong thần, trở thành một Luyện khí sĩ. Vì để tu được trường sinh bất lão và sống yên thân nơi hồng hoang tàn khốc này mà hắn hành sự khiêm tốn, tính trước làm sau, trước giờ không bao giờ bước vào nơi nguy hiểm, giấu át chủ bài, tu độn thuật, luyện đan độc. Cho đến một hôm, sư phụ của hắn nhận một sư muội về cho hắn, Lý Trường Thọ vốn muốn khiêm tốn tu hành bị cuốn vào hiểm nguy</p>', 
  'Tập 158', 180, 'hoathinh', 'ongoing', 589, 2023, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Chaoran Yang","avatar":"https://image.tmdb.org/t/p/w185/glEpdVtAhmL6VRAEHxpjHSlCbHZ.jpg"},{"name":"Bingtian Wang","avatar":"https://image.tmdb.org/t/p/w185/aN13oEDhVCliz0Vzp5P381SVlOL.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Shixiong A Shixiong","Shi Xiong A Shi Xiong","Big Brother","Wo Shixiong Shizai Tai Wenjianle","Wo Shi Xiong Shi Zai Tai Wen Jian Le","我师兄实在太稳健了","国漫 师兄啊师兄","国漫 师兄实在太稳健了","Мой старший брат чересчур сдержанный","Мой старший брат слишком стабилен","師兄啊師兄","我師兄實在太穩健了","My Senior Brother is Too","My Senior Brother is Too Steady","My Senior Brother is a Bit Too Cautious","Senior Brother","Sư Huynh À Sư Huynh","师兄啊师兄"]', '{"id":"218642","type":"tv","vote_average":8.8,"vote_count":8,"logo_url":"https://image.tmdb.org/t/p/original/r3JJZ7ejJKrknOn0FYJoUmoM9l5.png","backdrop_url":"https://image.tmdb.org/t/p/original/3Icy4H4NAJ5obx4c3AxJin1nvLY.jpg","poster_url":"https://image.tmdb.org/t/p/original/k9564HLHhjVIhDYJpKupzpTdzun.jpg","aspect_ratio":2.745}', '{"id":"tt27834263","vote_average":null}', 
  1789378914586, '2026-09-09T13:07:01.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-a-su-huynh', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-a-su-huynh', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-a-su-huynh', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-a-su-huynh', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-a-su-huynh', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-huynh-a-su-huynh', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'su-huynh-a-su-huynh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('su-huynh-a-su-huynh', 'Sư Huynh À Sư Huynh', 'My Senior Brother is Too Steady', 'sư huynh à sư huynh my senior brother is too steady chaoran yang bingtian wang', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ly-hung-mieu', 'Lý Hùng Miêu', 'Raised by Demons: Panda Li', 'https://phimimg.com/uploads/movies/20260801/ly-hung-mieu-thumb.webp', 'https://phimimg.com/uploads/movies/20260801/ly-hung-mieu-poster.webp', '<p>Gấu Trúc Lý, hay còn được viết đến với cái tên khác là Lý Hùng Miêu, một tác phẩm được kết hợp tinh tế giữa phong cách võ hiệp của Trung Quốc và những nét viễn tưởng mang tầm vóc vũ trụ của Nhật Bản. Tác giả Văn Chu mang đến câu chuyện về hành trình đầy lâm li bi đát nhưng cũng không kém phần thú vị của một cậu bé đến từ nhân tộc có tên Lý Hùng Miêu, cậu được Yêu tộc nuôi dưỡng và cưu mang từ nhỏ, học tập, rèn luyện và mang trên mình những tinh túy của võ thuật vô cùng tiềm năng. Theo sự dẫn dắt của sư phụ mình, Lý Hùng Miêu xuống núi và truy tìm để hỏi tội 3 kẻ thù đã nhẫn tâm thảm sát Yêu tộc thời gian trước đó. Hành trình truy tìm kẻ thù ấy không hề dễ dàng bởi thiên hạ rộng lớn bao la và ẩn chứa vô vàn những biến số khôn lường. Những sự thật về trận chiến giữa Nhân tộc và Yêu tộc dần được vén màn, cũng như những bị ẩn về thời kỳ đó, số phận của bản thân Gấu trúc Lý cũng được phơi bày.</p>', 
  'Tập 8', 9, 'hoathinh', 'ongoing', 273, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"齐璇","avatar":""},{"name":"小连杀","avatar":"https://image.tmdb.org/t/p/w185/bo9Q7QJ6qZ6Rm6R0HMqtnhli2yP.jpg"},{"name":"Wei Yifan","avatar":"https://image.tmdb.org/t/p/w185/kBM5bzHb1FyNYjNWeZz8aEubHFf.jpg"},{"name":"Yun Hezhui","avatar":"https://image.tmdb.org/t/p/w185/u0AOYd7N7uDCKdKH6MyKBKrQ6Cy.jpg"},{"name":"路扬","avatar":"https://image.tmdb.org/t/p/w185/pL73RqoUeITsyhZlRriKewlgszf.jpg"},{"name":"夜叉","avatar":"https://image.tmdb.org/t/p/w185/1nO0ZVummUhN3qqgvGXRCSAYsAN.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"}]', 
  '["Criado por Demônios: Panda Li","李熊猫"]', '{"id":"329026","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/xMTsPJEkhDVLIHpiwi7YfVIlwpT.png","backdrop_url":"https://image.tmdb.org/t/p/original/qfbx6Pneo2bp1MHmTWFLlXt0f82.jpg","poster_url":"https://image.tmdb.org/t/p/original/nawBG1OVDR6nF0uoq6jz7MZ4g2H.jpg","aspect_ratio":3.012}', '{"id":null,"vote_average":null}', 
  1789378914585, '2026-09-09T13:04:26.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ly-hung-mieu', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ly-hung-mieu', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ly-hung-mieu', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ly-hung-mieu', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'ly-hung-mieu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ly-hung-mieu', 'Lý Hùng Miêu', 'Raised by Demons: Panda Li', 'lý hùng miêu raised by demons: panda li 齐璇 小连杀 wei yifan yun hezhui 路扬 夜叉', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'Thần Y Cổ Đại Ở Đô Thị (Đô Thị Cổ Tiên Y)', 'Urban Miracle Doctor', 'https://phimimg.com/upload/vod/20241018-1/f39df234908b4305fdd20c97020c0eea.jpg', 'https://phimimg.com/upload/vod/20241018-1/422e01866d2bfcb0adfd4ae2a31ef32f.jpg', '<p>Sinh viên đại học năm thứ ba Diệp Bất Phàm, làm người giả bị đụng cho mẫu thân gom góp tiền chữa bệnh, nhưng gặp phải không theo như chiêu thức ra bài nữ tài xế, bị đụng sau lấy được được Cổ y môn truyền thừa, từ đây thông y thuật, tu công pháp, chơi chuyển đô thị, thắng được vô số người đẹp xem trọng.</p>', 
  'Tập 211', 240, 'hoathinh', 'ongoing', 681, 2024, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"冷调","avatar":""},{"name":"萧篙","avatar":""},{"name":"陈新玥","avatar":"https://image.tmdb.org/t/p/w185/4PxUPoT8AneFZREvOAP4WyTknwQ.jpg"}]', '[{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Dushi Gu Xian Yi","都市古仙医","Du Shi Gu Xian Yi","Antiguo Doctor Inmortal Urbano","The Immortal Doctor","Urban Ancient Immortal","Medicine City Ancient Fairy Doctor","Urban Ancient Fairy Doctor","Urban Ancient Immortal Doctor","Immortal Doctor In Modern City","Urban Miracle Doctor"]', '{"id":"273263","type":"tv","vote_average":8.5,"vote_count":4,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/ardUTA9M4mUY3fiEPJ9urXXVQdM.jpg","poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914584, '2026-09-09T13:04:17.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'than-y-co-dai-o-do-thi-do-thi-co-tien-y';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('than-y-co-dai-o-do-thi-do-thi-co-tien-y', 'Thần Y Cổ Đại Ở Đô Thị (Đô Thị Cổ Tiên Y)', 'Urban Miracle Doctor', 'thần y cổ đại ở đô thị (đô thị cổ tiên y) urban miracle doctor 冷调 萧篙 陈新玥', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'lang-khat-mau', 'Làng Khát Máu', 'About a Place in the Kinki Region / KINKI', 'https://phimimg.com/uploads/movies/20260909/lang-khat-mau-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/lang-khat-mau-poster.webp', '<p>Biên tập viên tạp chí chuyên điều tra hiện tượng kỳ bí bỗng nhiên mất tích. Người đồng nghiệp trẻ Ozawa Yūki và nhà báo Seno Chihiro bắt đầu lần theo những dấu vết còn sót lại.  Những manh mối họ tìm thấy liên quan đến nhiều sự kiện bí ẩn: trẻ em mất tích, các vụ hoảng loạn tập thể, video livestream rùng rợn… Tất cả đều dẫn đến “một nơi nào đó ở vùng Kinki” – một địa điểm đầy ám ảnh mà dường như không ai muốn nhắc tới.</p>', 
  'Full', 1, 'single', 'completed', 139, 2025, 
  'Vietsub', 'FHD', 'Nhật Bản', 1, 
  '[{"name":"菅野美穂","avatar":"https://image.tmdb.org/t/p/w185/yRiVsxGcbRHVxQOYTUBqvuxkjuY.jpg"},{"name":"Akaso Eiji","avatar":"https://image.tmdb.org/t/p/w185/n4meN0TldLP0Kk9seNJhzcOgMdQ.jpg"},{"name":"夙川アトム","avatar":"https://image.tmdb.org/t/p/w185/vy6Rxhvb7SIOU4T4CblUvJonDE.jpg"},{"name":"佐藤京","avatar":"https://image.tmdb.org/t/p/w185/fM4kuYZusEUCScAmZmWF1lxhspm.jpg"},{"name":"のせりん","avatar":"https://image.tmdb.org/t/p/w185/rCFn1TbiKHn1OTI67BUJCoUsY9Y.jpg"},{"name":"木村圭作","avatar":"https://image.tmdb.org/t/p/w185/4GA7CHiSBIIMptyjhM1KWDiaYmz.jpg"},{"name":"山田暖絆","avatar":""},{"name":"菅野莉央","avatar":"https://image.tmdb.org/t/p/w185/5H4tWYZGCex99MYzKO1EZ8CAzUp.jpg"},{"name":"福井裕子","avatar":"https://image.tmdb.org/t/p/w185/slCOCQVPicaQtOXfsR3RFVGHh2.jpg"},{"name":"久保山智夏","avatar":"https://image.tmdb.org/t/p/w185/bV3yViF8RG86apl5Hk9QKCt1Dzx.jpg"}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"}]', 
  '["Kinki Chihou No Aru Basho Ni Tsuite","近畿咒","发生在近畿某处的那些事","关于近畿地方的某个地方","About a Place in the Kinki Region","อาถรรพ์คิงคิ","近畿地方のある場所について"]', '{"id":"1400499","type":"movie","vote_average":6.3,"vote_count":23,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/e0vwcf5R1yU2Uz2mTO4KbCxL5tT.jpg","poster_url":"https://image.tmdb.org/t/p/original/z8x77fhtP5kw1t7qsKmJ8WpHeKy.jpg","aspect_ratio":null}', '{"id":"tt34969899","vote_average":null}', 
  1789378914583, '2026-09-09T12:08:04.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lang-khat-mau', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lang-khat-mau', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lang-khat-mau', 'le_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lang-khat-mau', 'phim_chieu_rap');
DELETE FROM movies_fts WHERE slug = 'lang-khat-mau';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('lang-khat-mau', 'Làng Khát Máu', 'About a Place in the Kinki Region / KINKI', 'làng khát máu about a place in the kinki region / kinki 菅野美穂 akaso eiji 夙川アトム 佐藤京 のせりん 木村圭作 山田暖絆 菅野莉央 福井裕子 久保山智夏', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ranh-gioi-cua-giac-ngu', 'Ranh Giới Của Giấc Ngủ', 'The Edge Of Sleep', 'https://phimimg.com/uploads/movies/20260909/ranh-gioi-cua-giac-ngu-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/ranh-gioi-cua-giac-ngu-poster.webp', '<p>Khi một nhân viên bảo vệ ca đêm kết thúc ca làm việc của mình, anh kinh hoàng phát hiện ra rằng tất cả mọi người trên thế giới chìm vào giấc ngủ đêm qua đều đã chết. Giờ đây, anh cùng một nhóm người sống sót buộc phải chiến đấu để giữ cho bản thân luôn tỉnh táo, đồng thời giải mã bí ẩn đằng sau đại dịch toàn cầu chết người này trước khi chính họ thiếp đi.</p>', 
  'Hoàn Tất (6/6)', 6, 'series', 'completed', 74, 2024, 
  'Vietsub', 'FHD', 'Canada', 0, 
  '[{"name":"Mark Fischbach","avatar":"https://image.tmdb.org/t/p/w185/2y59nq7vipTBdRMmMTsy1d4HeiG.jpg"},{"name":"Lio Tipton","avatar":"https://image.tmdb.org/t/p/w185/jwLTUddwx1vGVcrpEGH87vVJsnY.jpg"},{"name":"Franz Drameh","avatar":"https://image.tmdb.org/t/p/w185/xSEv3SN8CSn0bozoOnPd77kEOiD.jpg"},{"name":"Eve Harlow","avatar":"https://image.tmdb.org/t/p/w185/yz9MjN9vqLZPya9tYNx6uVsdMiL.jpg"}]', '[{"id":"2fb53017b3be83cd754a08adab3e916c","name":"Bí Ẩn","slug":"bi-an"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Rub sna","На грани сна","The Edge of Sleep"]', '{"id":"221585","type":"tv","vote_average":6.9,"vote_count":53,"logo_url":"https://image.tmdb.org/t/p/original/hLo0D9FH3Wkaujeyrqf5NzfQ5bh.png","backdrop_url":"https://image.tmdb.org/t/p/original/fjhEPdZ8aE8ywKxOPhtPSmF8KO6.jpg","poster_url":"https://image.tmdb.org/t/p/original/haqI8mBNJSWXsLfGMheK7WQm7x0.jpg","aspect_ratio":1.174}', '{"id":"tt14527626","vote_average":7.1}', 
  1789378914582, '2026-09-09T09:47:04.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ranh-gioi-cua-giac-ngu', 'bi-an');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ranh-gioi-cua-giac-ngu', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ranh-gioi-cua-giac-ngu', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ranh-gioi-cua-giac-ngu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ranh-gioi-cua-giac-ngu', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'ranh-gioi-cua-giac-ngu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ranh-gioi-cua-giac-ngu', 'Ranh Giới Của Giấc Ngủ', 'The Edge Of Sleep', 'ranh giới của giấc ngủ the edge of sleep mark fischbach lio tipton franz drameh eve harlow', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'xanh-tham-phan-3', 'Xanh Thẳm (Phần 3)', 'Grand Blue Dreaming (Season 3)', 'https://phimimg.com/uploads/movies/20260708/xanh-tham-phan-3-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/xanh-tham-phan-3-poster.webp', '<p>Iori Kitahara mong muốn có một tuổi thanh xuân tươi mới của mình trên bán đảo Izu khi anh chuẩn bị bắt đầu cuộc sống đại học ở đó, ở trong một căn phòng phía trên cửa hàng lặn "Grand Blue" của chú mình. Tuy nhiên, anh nhanh chóng bị sốc khi gặp Câu lạc bộ Lặn địa phương, một nhóm toàn thanh niên trai tráng dành nhiều thời gian để uống rượu, tiệc tùng và khỏa thân hơn là tập trung chuyên môn. Bất chấp những nỗ lực của mình để tránh xa nhóm, Iori nhanh chóng bị cuốn vào những trò hề của họ, trong khi chị em họ của anh cố gắng cho anh thấy những điều kỳ diệu khi lặn xuống biển và đại dương.</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 608, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"内田雄馬","avatar":"https://image.tmdb.org/t/p/w185/2otstbLfQ7MXuFt1X8MFOb4OIgd.jpg"},{"name":"Kimura Ryohei","avatar":"https://image.tmdb.org/t/p/w185/m4GktFKhjrVTewsZtqTusInHZqT.jpg"},{"name":"安済知佳","avatar":"https://image.tmdb.org/t/p/w185/lk3Az9O67qrXR69rctwDDHWqi9d.jpg"},{"name":"阿澄佳奈","avatar":"https://image.tmdb.org/t/p/w185/5GroiCPTO6PcYaZQXTGWltoT1kq.jpg"},{"name":"行成とあ","avatar":"https://image.tmdb.org/t/p/w185/aR11JLaHVeTM1RgGULsU9zIiaZs.jpg"},{"name":"内田真礼","avatar":"https://image.tmdb.org/t/p/w185/lrcxZXkIgHU55dMs8C4DKkUohqJ.jpg"},{"name":"小西克幸","avatar":"https://image.tmdb.org/t/p/w185/nYM5cH6U7cp4x9dIzW0enmEKmeV.jpg"},{"name":"安元洋貴","avatar":"https://image.tmdb.org/t/p/w185/vNIGLl0wFmdhdnulMssQ1qyNeBs.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Grand Blue","Guran Buru","GRAND BLUE 碧藍之海 2","GRAND BLUE 碧藍之海 3","Неосяжна блакить","Grand Blue Dreaming","GrandBlue","ぐらんぶる"]', '{"id":"79166","type":"tv","vote_average":7.7,"vote_count":179,"logo_url":"https://image.tmdb.org/t/p/original/A9awZmen7TkReyDjiMion5aGN3K.png","backdrop_url":"https://image.tmdb.org/t/p/original/rvxt9lJbJziXPr4XcAZgDVRbAu8.jpg","poster_url":"https://image.tmdb.org/t/p/original/j743qEog4Id4Q49n9N1z9XkaG2d.jpg","aspect_ratio":2.325}', '{"id":"tt8086718","vote_average":7.9}', 
  1789378914581, '2026-09-09T09:43:48.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xanh-tham-phan-3', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xanh-tham-phan-3', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xanh-tham-phan-3', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xanh-tham-phan-3', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xanh-tham-phan-3', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('xanh-tham-phan-3', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'xanh-tham-phan-3';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('xanh-tham-phan-3', 'Xanh Thẳm (Phần 3)', 'Grand Blue Dreaming (Season 3)', 'xanh thẳm (phần 3) grand blue dreaming (season 3) 内田雄馬 kimura ryohei 安済知佳 阿澄佳奈 行成とあ 内田真礼 小西克幸 安元洋貴', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'quy-ong-the-gioi-ngam-phan-2', 'Quý Ông Thế Giới Ngầm (Phần 2)', 'The Gentlemen (Season 2)', 'https://phimimg.com/uploads/movies/20260905/quy-ong-the-gioi-ngam-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260905/quy-ong-the-gioi-ngam-phan-2-poster.webp', '<p>Thừa kế bất động sản của gia đình, chàng quý tộc Eddie phát hiện ra rằng đó là nơi một đế chế cần sa khổng lồ ngự trị và người đứng đầu đế chế đó không chịu rời đi.</p>', 
  'Hoàn Tất (8/8)', 8, 'series', 'completed', 178, 2026, 
  'Vietsub', 'FHD', 'Anh', 0, 
  '[{"name":"Theo James","avatar":"https://image.tmdb.org/t/p/w185/g4yeW1EgIpyht0fy1stv7EXUmPC.jpg"},{"name":"Kaya Scodelario","avatar":"https://image.tmdb.org/t/p/w185/qmtXUabwXw0RvyK6R0la6CmvGxr.jpg"},{"name":"Daniel Ings","avatar":"https://image.tmdb.org/t/p/w185/oupwxNxbTwNEknTFo2jKlrXZsl6.jpg"},{"name":"Joely Richardson","avatar":"https://image.tmdb.org/t/p/w185/6OWUwieNiWcZNnu4h6gd8vyhxBV.jpg"},{"name":"Vinnie Jones","avatar":"https://image.tmdb.org/t/p/w185/tkYWG9gY2QpoBfOh4OWNz8yQfsw.jpg"},{"name":"Giancarlo Esposito","avatar":"https://image.tmdb.org/t/p/w185/rcXnr82TwDzU4ZGdBeNXfG0ZQnZ.jpg"},{"name":"Benedetta Porcaroli","avatar":"https://image.tmdb.org/t/p/w185/aYSJ87nrceznZJPScm9wF5LNt8E.jpg"}]', '[{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"7a035ac0b37f5854f0f6979260899c90","name":"Hình Sự","slug":"hinh-su"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["젠틀맨","The Gentlemen"]', '{"id":"236235","type":"tv","vote_average":7.8,"vote_count":864,"logo_url":"https://image.tmdb.org/t/p/original/dVT8rzw0WWKITDY87dCFSM6OnZ7.png","backdrop_url":"https://image.tmdb.org/t/p/original/yG1wltFmkX5c5ocACKfpX0tp3SY.jpg","poster_url":"https://image.tmdb.org/t/p/original/tw3tzfXaSpmUZIB8ZNqNEGzMBCy.jpg","aspect_ratio":7.303}', '{"id":"tt13210838","vote_average":8}', 
  1789378914580, '2026-09-09T09:25:01.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quy-ong-the-gioi-ngam-phan-2', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quy-ong-the-gioi-ngam-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quy-ong-the-gioi-ngam-phan-2', 'hinh-su');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('quy-ong-the-gioi-ngam-phan-2', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'quy-ong-the-gioi-ngam-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('quy-ong-the-gioi-ngam-phan-2', 'Quý Ông Thế Giới Ngầm (Phần 2)', 'The Gentlemen (Season 2)', 'quý ông thế giới ngầm (phần 2) the gentlemen (season 2) theo james kaya scodelario daniel ings joely richardson vinnie jones giancarlo esposito benedetta porcaroli', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'gia-thien', 'Già Thiên', 'Shrouding The Heavens', 'https://phimimg.com/upload/vod/20240411-1/bbf5847cc8ae2ce6528d5b51ef6f877a.jpg', 'https://phimimg.com/upload/vod/20240411-1/0a4084fdfad19ecab9f1f53d629bf422.jpg', '<p>Ở tận cùng vũ trụ, nơi vô cùng lạnh lẽo và tối tăm, chín xác rồng khổng lồ kéo một cỗ quan tài bằng đồng cổ kính, tồn tại suốt từ thời xa xưa. Đây là hình ảnh cực sốc mà tàu thám hiểm không gian đã thấy được trong vũ trụ hiu quạnh. Chín con rồng kéo quan tài, rốt cuộc là trở về thời cổ đại hay đã đến bên kia bầu trời đầy sao? Một thế giới tiên hiệp rộng lớn, kỳ dị và đầy bí ẩn. Nhiệt huyết sục sôi như núi lửa phun trào, đam mê cuồn cuộn như biển cả, ham muốn vô tận như vực thẳm... Đường lên trời, rộn tiếng ca vang.</p>', 
  'Tập 180', 180, 'hoathinh', 'ongoing', 550, 2023, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"赵乾景","avatar":"https://image.tmdb.org/t/p/w185/6QRgZZZhwee5md1W5kgeCEScvQI.jpg"},{"name":"李婵妃","avatar":"https://image.tmdb.org/t/p/w185/9lPXNOqWemS1gilUTsRQcyG8wnX.jpg"},{"name":"Xiang Xu","avatar":"https://image.tmdb.org/t/p/w185/hE2BnMQ7KoGyEyM3fNPCWzALLCk.jpg"},{"name":"吴磊","avatar":"https://image.tmdb.org/t/p/w185/z1Aw5fyYAND8EOthud6gbIV22rk.jpg"},{"name":"Ruoyu Zhang","avatar":"https://image.tmdb.org/t/p/w185/xqmmuN34EtJ50xqqrvD3fB7QVX4.jpg"},{"name":"Jiaojiao Han","avatar":"https://image.tmdb.org/t/p/w185/1LGykAp3mx47TWKuZdXmAIilmRb.jpg"},{"name":"Shujun Lv","avatar":"https://image.tmdb.org/t/p/w185/eXe7tPxBKF7ZspG2RzDstO14mpL.jpg"},{"name":"张啸霏","avatar":"https://image.tmdb.org/t/p/w185/hOsYf2xk5Fl1PtXodUiiUXSVaiX.jpg"},{"name":"Shuang Liang","avatar":"https://image.tmdb.org/t/p/w185/bEAfPzXcLPPKcG1IoLgReRWxfSq.jpg"}]', '[{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"2276b29204c46f75064735477890afd6","name":"Thần Thoại","slug":"than-thoai"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"578f80eb493b08d175c7a0c29687cbdf","name":"Võ Thuật","slug":"vo-thuat"}]', 
  '["Zhe Tian","遮天动画","Cover the sky","国漫 遮天","Zhetian","遮天","Затуляючи небеса","Shrounding the Heavens","Shrounding the Heaven"]', '{"id":"224839","type":"tv","vote_average":8.9,"vote_count":15,"logo_url":"https://image.tmdb.org/t/p/original/b0X5UtyOPzyQXtl5TSknSAiCpu6.png","backdrop_url":"https://image.tmdb.org/t/p/original/1HcuGlNEfc6EYZHEZGwgKjAvYa4.jpg","poster_url":"https://image.tmdb.org/t/p/original/xlxYhdUKw2ddIpz5OTk51wLLVXx.jpg","aspect_ratio":2.704}', '{"id":"tt27617390","vote_average":7.4}', 
  1789378914579, '2026-09-09T09:23:20.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gia-thien', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gia-thien', 'than-thoai');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gia-thien', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gia-thien', 'vo-thuat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gia-thien', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gia-thien', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('gia-thien', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'gia-thien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('gia-thien', 'Già Thiên', 'Shrouding The Heavens', 'già thiên shrouding the heavens 赵乾景 李婵妃 xiang xu 吴磊 ruoyu zhang jiaojiao han shujun lv 张啸霏 shuang liang', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'va-cuoc-song-van-tiep-dien', 'Và cuộc sống vẫn tiếp diễn', 'Life, and Nothing More…', 'https://phimimg.com/uploads/movies/20260909/va-cuoc-song-van-tiep-dien-thumb.webp', 'https://phimimg.com/uploads/movies/20260909/va-cuoc-song-van-tiep-dien-poster.webp', '<p>Phim là phần thứ hai trong Bộ ba Koker nổi tiếng của Kiarostami (tiếp nối Where Is the Friend''s House? và tiền đề cho Through the Olive Trees). Lấy bối cảnh hậu quả tàn khốc của trận động đất Manjil-Rudbar có thật tại miền bắc Iran năm 1990 — khiến hàng chục ngàn người thiệt mạng — câu chuyện theo chân một đạo diễn phim và cậu con trai lái xe từ Tehran đến vùng nông thôn Koker để tìm xem hai diễn viên nhí từng đóng chính trong Where Is the Friend''s House? có sống sót sau thảm họa hay không.</p>', 
  'Full', 1, 'single', 'completed', 68, 1992, 
  'Vietsub', 'FHD', 'Iran', 0, 
  '[{"name":"Farhad Kheradmand","avatar":""},{"name":"Buba Bayour","avatar":""},{"name":"Hossein Rezai","avatar":""},{"name":"Hocine Rifahi","avatar":""},{"name":"Ferkhondeh Feyzi","avatar":""},{"name":"Mahrem Feydi","avatar":""},{"name":"Bahrovz Aydini","avatar":""},{"name":"Ziya Babai","avatar":""},{"name":"Mohamed Hocine Rouhi","avatar":""},{"name":"Hocine Khadem","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["And Life Goes On","Zendegi va Digar Hich","En Het Leven Gaat Door","Livet begynder igen","Ja elämä jatkuu","Livet börjar igen","Και η ζωή συνεχίζεται","És az élet megy tovább","Livet går videre","A życie trwa dalej","Жизнь и ничего более","Život i ništa više...","Həyat, və Başqa Heçnə","Hayat, Sadece Hayat","زندگی و دیگر هیچ"]', '{"id":"83761","type":"movie","vote_average":7.7,"vote_count":185,"logo_url":"https://image.tmdb.org/t/p/original/bH2Co5964nyTJlmSsrtKr8OPVC7.png","backdrop_url":"https://image.tmdb.org/t/p/original/1UpTTMg5l7KQPRdveydtP2EBv8D.jpg","poster_url":"https://image.tmdb.org/t/p/original/100CuZjqxtcbDvZ5qPsoi1VEU5n.jpg","aspect_ratio":9.176}', '{"id":"tt0105888","vote_average":7.9}', 
  1789378914578, '2026-09-09T01:01:27.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('va-cuoc-song-van-tiep-dien', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('va-cuoc-song-van-tiep-dien', 'phieu-luu');
DELETE FROM movies_fts WHERE slug = 'va-cuoc-song-van-tiep-dien';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('va-cuoc-song-van-tiep-dien', 'Và cuộc sống vẫn tiếp diễn', 'Life, and Nothing More…', 'và cuộc sống vẫn tiếp diễn life, and nothing more… farhad kheradmand buba bayour hossein rezai hocine rifahi ferkhondeh feyzi mahrem feydi bahrovz aydini ziya babai mohamed hocine rouhi hocine khadem', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'cu-giao-bong-tinh-yeu', 'Cú Giao Bóng Tình Yêu', 'Match Point', 'https://phimimg.com/uploads/movies/20260817/cu-giao-bong-tinh-yeu-thumb.webp', 'https://phimimg.com/uploads/movies/20260817/cu-giao-bong-tinh-yeu-poster.webp', '<p>Cậu bé Sun là một tay vợt tennis hoàn hảo, còn Bay là một chàng trai theo đuổi nghệ thuật, có phong cách sống phóng khoáng. Hai người có cha là kẻ thù không đội trời chung. Gia đình họ cùng sở hữu những nhà hàng dim sum cạnh tranh nhau trên đường Krong Thong: nhà hàng Saming Phon Fai của gia đình Sun mang phong cách truyền thống lâu đời, trong khi Merlion của gia đình Bay là một nhà hàng mới nổi tiếng với món há cảo shumai.</p>', 
  'Tập 7', 10, 'series', 'ongoing', 189, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"เตโช พรหมสาขา ณ สกลนคร","avatar":"https://image.tmdb.org/t/p/w185/dCimX4QWnNiMI2td5y1TmIrlO9p.jpg"},{"name":"กฤตนัน อัญชนานันท์","avatar":"https://image.tmdb.org/t/p/w185/rdDIUmE0AQXcjLkiUYto7xavoCG.jpg"},{"name":"หฤษฎ์ ชีวการุณ","avatar":"https://image.tmdb.org/t/p/w185/lMLLtZcFueZ6icN8FAnD7Go9DmQ.jpg"},{"name":"วชิรวิชญ์ เรืองวิวรรธน์","avatar":"https://image.tmdb.org/t/p/w185/ixHHcj9ScyDQAyiiV6597YNL8nK.jpg"},{"name":"อัมรินทร์ นิติพน","avatar":"https://image.tmdb.org/t/p/w185/5XPYOUBFso7eBTFjJ5tfOxZlTZx.jpg"},{"name":"ชาตโยดม หิรัญยัติ","avatar":"https://image.tmdb.org/t/p/w185/srsQcBSRLjjyIhSdS72xNPlHhUZ.jpg"},{"name":"วีรยุทธ จันทร์สุข","avatar":"https://image.tmdb.org/t/p/w185/jfzSJwWZARkH1UTVBwQyvZBx4oG.jpg"},{"name":"ธารพล พงษ์นริศร","avatar":"https://image.tmdb.org/t/p/w185/9EmqZkoSqgl90pjUvD5WXayo4sc.jpg"},{"name":"พบธรรม หรรษา","avatar":"https://image.tmdb.org/t/p/w185/qW18gn498ys5Yg9u7FixkfzPusA.jpg"},{"name":"นรุทธ์ ประทีปภวเมธา","avatar":"https://image.tmdb.org/t/p/w185/jFdbS6TheHHj0j7zbccsaX2xMwO.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Rak Ni Tong Serve","This Love Must Be Served","รักนี้ต้องเสิร์ฟ"]', '{"id":"306629","type":"tv","vote_average":9,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/bqTFtLY7ibg34xAMr61sxfqbEDX.png","backdrop_url":"https://image.tmdb.org/t/p/original/xhxnct2WPDJiB2JY7js088D4WS4.jpg","poster_url":"https://image.tmdb.org/t/p/original/1p9nljBwKxGVyjhEITcZ8MxOIO3.jpg","aspect_ratio":2.259}', '{"id":"tt39037171","vote_average":null}', 
  1789378914577, '2026-09-08T23:29:31.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cu-giao-bong-tinh-yeu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cu-giao-bong-tinh-yeu', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cu-giao-bong-tinh-yeu', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('cu-giao-bong-tinh-yeu', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'cu-giao-bong-tinh-yeu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('cu-giao-bong-tinh-yeu', 'Cú Giao Bóng Tình Yêu', 'Match Point', 'cú giao bóng tình yêu match point เตโช พรหมสาขา ณ สกลนคร กฤตนัน อัญชนานันท์ หฤษฎ์ ชีวการุณ วชิรวิชญ์ เรืองวิวรรธน์ อัมรินทร์ นิติพน ชาตโยดม หิรัญยัติ วีรยุทธ จันทร์สุข ธารพล พงษ์นริศร พบธรรม หรรษา นรุทธ์ ประทีปภวเมธา', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nhan-duyen-tien-dinh-2026', 'Nhân Duyên Tiền Định', 'Love Destiny', 'https://phimimg.com/uploads/movies/20260715/nhan-duyen-tien-dinh-thumb.webp', 'https://phimimg.com/uploads/movies/20260715/nhan-duyen-tien-dinh-poster.webp', '<p>Khi linh hồn của một bác sĩ phẫu thuật thời hiện đại bị nhập vào thể xác của một kẻ chuyên gây rắc rối bị người người ghét bỏ ở thế kỷ 17, anh đã sử dụng nền y học tiên tiến để cứu người, đồng thời từng bước chinh phục người đối đầu gay gắt nhất của mình.</p>', 
  'Tập 9', 10, 'series', 'ongoing', 557, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ธนพล อู่สินทรัพย์","avatar":"https://image.tmdb.org/t/p/w185/2Ta2RSVscJBN3GKPYKMZc2dRGwT.jpg"},{"name":"วชิรวิชญ์ ไพศาลกุลวงศ์","avatar":"https://image.tmdb.org/t/p/w185/aZv2DtHFNHLJFN0bfM7wpC4LjNV.jpg"},{"name":"ณภัทร วิกัยรุ่งโรจน์","avatar":"https://image.tmdb.org/t/p/w185/1e8o5LCbm5lbDoKjg23BGmK4WnJ.jpg"},{"name":"ธนพล อุควงศ์เสรี","avatar":"https://image.tmdb.org/t/p/w185/cCzbUZLVvAjpIICj7GsiWDKnmvp.jpg"},{"name":"ธัญธร วิวัฒนเดชา","avatar":"https://image.tmdb.org/t/p/w185/rbxVHgIijwRXcpTbbO8mB8tULHt.jpg"},{"name":"ชินทัพพ์ ดวงแก้ว","avatar":"https://image.tmdb.org/t/p/w185/hZhncWowdiYD9zQar95wRwhWUEe.jpg"},{"name":"ขวัญทิพย์ เทวกุล","avatar":"https://image.tmdb.org/t/p/w185/cM3zbsfGRHx1HB4zC69p0xBfecx.jpg"},{"name":"จตุรงค์ พลบูรณ์","avatar":"https://image.tmdb.org/t/p/w185/tsMJfqFRED5EUThzhKcb6inYkVC.jpg"},{"name":"วริฏฐิสา ลิ้มธรรมมหิศร","avatar":"https://image.tmdb.org/t/p/w185/3QkvQ0BhbxzHaHwMSw0Bzn1lkJx.jpg"},{"name":"แอนนา เสืองามเอี่ยม","avatar":"https://image.tmdb.org/t/p/w185/yGhAUTHu9lsfVuHxmndcGSLdNOT.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["บุพเพสันนิวาส"]', '{"id":"311914","type":"tv","vote_average":9,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/6NyvPCghnJXAISC5AHyupkCCfFU.png","backdrop_url":"https://image.tmdb.org/t/p/original/xbI5HSfGnY970yluREoe2bZRG43.jpg","poster_url":"https://image.tmdb.org/t/p/original/4fK3KOaXQlLaK0Q3IPVETy50NO8.jpg","aspect_ratio":5.393}', '{"id":"tt39378708","vote_average":null}', 
  1789378914576, '2026-09-08T23:26:29.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhan-duyen-tien-dinh-2026', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhan-duyen-tien-dinh-2026', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhan-duyen-tien-dinh-2026', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhan-duyen-tien-dinh-2026', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhan-duyen-tien-dinh-2026', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'nhan-duyen-tien-dinh-2026';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nhan-duyen-tien-dinh-2026', 'Nhân Duyên Tiền Định', 'Love Destiny', 'nhân duyên tiền định love destiny ธนพล อู่สินทรัพย์ วชิรวิชญ์ ไพศาลกุลวงศ์ ณภัทร วิกัยรุ่งโรจน์ ธนพล อุควงศ์เสรี ธัญธร วิวัฒนเดชา ชินทัพพ์ ดวงแก้ว ขวัญทิพย์ เทวกุล จตุรงค์ พลบูรณ์ วริฏฐิสา ลิ้มธรรมมหิศร แอนนา เสืองามเอี่ยม', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nut-that', 'Nút Thắt', 'KNOT', 'https://phimimg.com/upload/vod/20260702-1/1b8bc37d5683e785764ff94ce8eef51a.jpg', 'https://phimimg.com/upload/vod/20260702-1/0bc8b35212cf621b9858b600f9981df8.jpg', '<p>Cuộc đời của một chàng trai trẻ đã thay đổi mãi mãi khi anh bị một Alpha quyền năng đánh dấu, buộc chặt định mệnh của cả hai vào một mối liên kết không thể nào trốn chạy.</p>', 
  'Tập 11', 12, 'series', 'ongoing', 520, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ภาสกร สารรัตนะ","avatar":"https://image.tmdb.org/t/p/w185/yitxOnStiS5EPIAwE4iEBh4Lcf1.jpg"},{"name":"ยงค์ยุทธ เติมต่อ","avatar":"https://image.tmdb.org/t/p/w185/pRuwmR7oh4Sswm8X1hq19Pw18V8.jpg"},{"name":"ภูเบศ อรรถอรุณวงศ์","avatar":"https://image.tmdb.org/t/p/w185/oB1m08Ao3ZqbTgDnaLxWkYXgHJS.jpg"},{"name":"ธีรวัฒน์ ธนะคำ","avatar":"https://image.tmdb.org/t/p/w185/7Ioo7vYsp9XhYRErNNFuK90q1wZ.jpg"},{"name":"วรัญช์รักษ์ พรปวีณ์วรกุล","avatar":"https://image.tmdb.org/t/p/w185/z1Jrv9EUUVZXSZKcTxKR97NNPDy.jpg"},{"name":"จักริน แสงเรือน","avatar":"https://image.tmdb.org/t/p/w185/wyhAFvmU5qsBAksUIEYgNJkMhmq.jpg"},{"name":"Chaiklang Thanakrid Suteepakornchai","avatar":"https://image.tmdb.org/t/p/w185/7sKW7esR1j6WWyHhLTzvoadWGB3.jpg"},{"name":"กัณต์ธีภพ ศิโรรัตนพาณิชย์","avatar":"https://image.tmdb.org/t/p/w185/6v2MKYdQZonDzqiB4sSEbWREfTW.jpg"},{"name":"นันทิพัฒน์ ศิโรรัตนพาณิชย์","avatar":"https://image.tmdb.org/t/p/w185/5XztvrfB4cKH8VkEnY9nm0P3qn0.jpg"},{"name":"ณธีพัฒน์ นพเจริญพงศ์","avatar":"https://image.tmdb.org/t/p/w185/tt4E7WFpNsIMahS2rYb5o5ICkrl.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Knot The Series","ซีรีส์"]', '{"id":"303493","type":"tv","vote_average":8,"vote_count":3,"logo_url":"https://image.tmdb.org/t/p/original/d6NRApoGHwc3rjAN0ftqkTC2eOG.png","backdrop_url":"https://image.tmdb.org/t/p/original/iF5ZArBMkIengBgFaW4waiBWrBi.jpg","poster_url":"https://image.tmdb.org/t/p/original/8z62pp4K602d1y6079oU1GBeiAG.jpg","aspect_ratio":2.02}', '{"id":"tt38916337","vote_average":null}', 
  1789378914575, '2026-09-08T23:26:18.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nut-that', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nut-that', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nut-that', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nut-that', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nut-that', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'nut-that';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nut-that', 'Nút Thắt', 'KNOT', 'nút thắt knot ภาสกร สารรัตนะ ยงค์ยุทธ เติมต่อ ภูเบศ อรรถอรุณวงศ์ ธีรวัฒน์ ธนะคำ วรัญช์รักษ์ พรปวีณ์วรกุล จักริน แสงเรือน chaiklang thanakrid suteepakornchai กัณต์ธีภพ ศิโรรัตนพาณิชย์ นันทิพัฒน์ ศิโรรัตนพาณิชย์ ณธีพัฒน์ นพเจริญพงศ์', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'Vị Thánh Vô Tư Không Thể Kiềm Chế Sức Mạnh', 'The Oblivious Saint Can''t Contain Her Power', 'https://phimimg.com/upload/vod/20260701-1/7fc61795974d18ee3472d7a877487832.jpg', 'https://phimimg.com/upload/vod/20260701-1/3d205d488b2232aebb3498457c5bd610.jpg', '<p>Bị lu mờ bởi người em gái hoàn hảo như thánh nữ Flora, cô gái giản dị Carolina đã nắm lấy cơ hội để chứng tỏ giá trị của mình bằng cách đồng ý tham gia một cuộc hôn nhân chính trị với một vị hoàng tử bị đồn đại là vô cùng tàn bạo. Thế nhưng, vị hoàng tử đó lại hoàn toàn khác xa với những gì cô tưởng tượng — anh là một quý ông đích thực, và lần đầu tiên trong đời, Carolina cảm thấy bản thân mình được trân trọng. Khi Carolina bắt đầu tỏa sáng, cô không chỉ tìm thấy giá trị của bản thân cùng một sức mạnh bí ẩn, mà cùng lúc đó, cuộc sống vốn dĩ hoàn hảo của Flora ở quê nhà cũng bắt đầu rạn nứt và sụp đổ.</p>', 
  'Tập 11', 14, 'hoathinh', 'ongoing', 536, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"高橋李依","avatar":"https://image.tmdb.org/t/p/w185/aeB7z0cBTASdjKOjQriBAO6hYq4.jpg"},{"name":"古川慎","avatar":"https://image.tmdb.org/t/p/w185/inLmBZhrqXeE9wlViyK28ocKJSw.jpg"},{"name":"白石晴香","avatar":"https://image.tmdb.org/t/p/w185/hrQxTVNGLi3jXC7v4kETArpA0dV.jpg"}]', '[{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Mujikaku Seijo wa Kyou mo Muishiki ni Chikara wo Tare Nagasu","The Oblivious Saint Can''t Contain Her Power: Forget My Sister! Turns Out I Was the Real Saint All Along!","無自覚聖女は今日も無意識に力を垂れ流す"]', '{"id":"296436","type":"tv","vote_average":7,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/b617eNOiLwlxsT4upL5V3MOqNlt.png","backdrop_url":"https://image.tmdb.org/t/p/original/5JJNvKX3OEJ29If8RQTTaY45nFp.jpg","poster_url":"https://image.tmdb.org/t/p/original/xrgC96oAFYSSjCysOg8oCAVzVSg.jpg","aspect_ratio":2.135}', '{"id":"tt41278636","vote_average":null}', 
  1789378914574, '2026-09-08T23:24:01.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'vi-thanh-vo-tu-khong-the-kiem-che-suc-manh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('vi-thanh-vo-tu-khong-the-kiem-che-suc-manh', 'Vị Thánh Vô Tư Không Thể Kiềm Chế Sức Mạnh', 'The Oblivious Saint Can''t Contain Her Power', 'vị thánh vô tư không thể kiềm chế sức mạnh the oblivious saint can''t contain her power 高橋李依 古川慎 白石晴香', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'sep-chinh-la-than-tuong-bias-toi-sep-cua-toi', 'Sếp Chính Là Thần Tượng (Bias tôi, sếp của tôi)', 'My Bias, My Boss', 'https://phimimg.com/uploads/movies/20260806/sep-chinh-la-than-tuong-bias-toi-sep-cua-toi-thumb.webp', 'https://phimimg.com/uploads/movies/20260806/sep-chinh-la-than-tuong-bias-toi-sep-cua-toi-poster.webp', '<p>Nam Da Reum (Kim Hye Joon) là một fan cuồng đã theo đuổi thần tượng Lee Chan suốt 11 năm. Cô từ chối một công việc tốt để gia nhập công ty thời trang Appello, nơi Lee Chan hiện làm giám đốc sáng tạo, với hy vọng được làm việc gần thần tượng. Tuy nhiên, ngay trong ngày đầu tiên, Da Reum lại liên tục chạm mặt Kang Ha Gi (Kang Hoon) – vị CEO lạnh lùng nhưng tốt bụng của công ty. Những hiểu lầm và tình huống dở khóc dở cười khiến mối quan hệ giữa hai người ngày càng phát triển, trong khi Da Reum vẫn phải đối diện với tình cảm dành cho thần tượng Lee Chan.</p>', 
  'Hoàn Tất (12/12)', 12, 'series', 'completed', 738, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"강훈","avatar":"https://image.tmdb.org/t/p/w185/dg2FTdGkacJLyLP8PlsE3Oz93fO.jpg"},{"name":"김혜준","avatar":"https://image.tmdb.org/t/p/w185/9ptrnFQm0uBBogrHLmRb91usDo0.jpg"},{"name":"차우민","avatar":"https://image.tmdb.org/t/p/w185/z8Lz0Opnl4i7Aj8b7jC4qYP01xJ.jpg"},{"name":"유나","avatar":"https://image.tmdb.org/t/p/w185/9vjd24lq9Q2aSzd4QtY3nhLH5HB.jpg"},{"name":"천우진","avatar":"https://image.tmdb.org/t/p/w185/xDUeZ0jePwGW66hHs49Wnlu92rF.jpg"},{"name":"윤현석","avatar":"https://image.tmdb.org/t/p/w185/ucy9RMTBygTW0UuStsjx5xcC7fe.jpg"},{"name":"백승","avatar":"https://image.tmdb.org/t/p/w185/MMOFPDK38tO2ELsjkDnwEsv3hw.jpg"},{"name":"정현민","avatar":"https://image.tmdb.org/t/p/w185/nxjIKfFGrSCBQCRnoWy5dUL4NyD.jpg"},{"name":"공지호","avatar":"https://image.tmdb.org/t/p/w185/k4GrLuTb0NeB2cZkdBftOekLQzO.jpg"},{"name":"김아영","avatar":"https://image.tmdb.org/t/p/w185/mIRYdYJMUMtfBrIjH0l4va6dJHz.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"}]', 
  '["最爱的社员","우리 오빠는 아이돌","Choi-ae-ui Sa-won","Choae-ui Sawon","My Oppa is an Idol","My Favorite Employee","My Bias My Boss","최애의 사원"]', '{"id":"296140","type":"tv","vote_average":5,"vote_count":2,"logo_url":"https://image.tmdb.org/t/p/original/xnM5yIYu7bszVLwOSJDodZyCEx9.png","backdrop_url":"https://image.tmdb.org/t/p/original/eBD46F44qKGPZiRLffO4q3JF8Hc.jpg","poster_url":"https://image.tmdb.org/t/p/original/A4Y4xlDHS4xi2WI9265vRyIYLoo.jpg","aspect_ratio":2.909}', '{"id":"tt43648966","vote_average":null}', 
  1789378914573, '2026-09-08T23:22:59.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sep-chinh-la-than-tuong-bias-toi-sep-cua-toi', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sep-chinh-la-than-tuong-bias-toi-sep-cua-toi', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sep-chinh-la-than-tuong-bias-toi-sep-cua-toi', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('sep-chinh-la-than-tuong-bias-toi-sep-cua-toi', 'bo_han');
DELETE FROM movies_fts WHERE slug = 'sep-chinh-la-than-tuong-bias-toi-sep-cua-toi';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('sep-chinh-la-than-tuong-bias-toi-sep-cua-toi', 'Sếp Chính Là Thần Tượng (Bias tôi, sếp của tôi)', 'My Bias, My Boss', 'sếp chính là thần tượng (bias tôi, sếp của tôi) my bias, my boss 강훈 김혜준 차우민 유나 천우진 윤현석 백승 정현민 공지호 김아영', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hai-trai-tim', 'Hai Trái Tim', 'Brothers', 'https://phimimg.com/uploads/movies/20260812/hai-trai-tim-thumb.webp', 'https://phimimg.com/uploads/movies/20260812/hai-trai-tim-poster.webp', '<p>Võ sĩ quyền Anh Dom nằm vùng để thâm nhập tổ chức tội phạm hùng mạnh, nhưng nhiệm vụ này nhanh chóng đẩy cả cuộc hôn nhân lẫn tính mạng của anh vào thế hiểm nguy.</p>', 
  'Tập 9', 16, 'series', 'ongoing', 258, 2026, 
  'Vietsub', 'FHD', 'Thái Lan', 0, 
  '[{"name":"ณเดชน์ คูกิมิยะ","avatar":"https://image.tmdb.org/t/p/w185/w58HrktpHZ7UVGY5SKoJxFkitCy.jpg"},{"name":"เจมส์ อัศรัสกร","avatar":"https://image.tmdb.org/t/p/w185/9BCbyykBaUY3Du8pXqcn1Ehqcs7.jpg"},{"name":"Amanda Chalisa Obdam","avatar":"https://image.tmdb.org/t/p/w185/3c3z0ErOaxWmxy7WWQSqEobTE08.jpg"},{"name":"สิทธานต์ ศุภเกรียงไกร","avatar":"https://image.tmdb.org/t/p/w185/8ZLxJxDmDKbkgVoTd23AaNxiYBk.jpg"},{"name":"ชาราฎา อิมราพร","avatar":"https://image.tmdb.org/t/p/w185/2Q2d5eKyOYoAVSm3gH8WPiwRm1w.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Song Huajai","สองหัวใจ"]', '{"id":"299801","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/xe7E9X3cMgfpkIvpubShwfIaYyH.jpg","poster_url":"https://image.tmdb.org/t/p/original/yrplaHBUn4SH8oms50yezr0i9ri.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914572, '2026-09-08T23:22:26.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hai-trai-tim', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hai-trai-tim', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hai-trai-tim', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hai-trai-tim', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'hai-trai-tim';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hai-trai-tim', 'Hai Trái Tim', 'Brothers', 'hai trái tim brothers ณเดชน์ คูกิมิยะ เจมส์ อัศรัสกร amanda chalisa obdam สิทธานต์ ศุภเกรียงไกร ชาราฎา อิมราพร', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'Được Cứu Sống Nhờ Vòng Tay Lạnh Giá Của Hoàng Tử', 'Saved By The Ice Cold Prince''s Embrace', 'https://phimimg.com/uploads/movies/20260708/duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu-poster.webp', '<p>Là con riêng của một bá tước và người hầu gái, Katrina sinh ra trong hoàn cảnh vô cùng khốn khổ. Sau khi mẹ qua đời, sự đối xử tàn nhẫn từ người mẹ kế bà bá tước và cô chị cùng cha khác mẹ lại càng trở nên tồi tệ hơn. Một ngày nọ, cô chị nhận được vương lệnh bắt buộc phải chuyển đến vùng ngoại ô phía Bắc vì hành vi khiếm nhã tại một bữa tiệc gần đây, nhằm học lại lễ nghi dưới sự giám sát của vị hoàng tử cư ngụ tại đó — người luôn bị đồn đại là một kẻ tàn bạo. Không muốn con gái cưng phải chịu hình phạt này, bà bá tước đã quyết định đưa Katrina đi thay thế. Katrina đặt chân đến phương Bắc trong sự sợ hãi tột cùng. Thế nhưng, trái ngược hoàn toàn với những lời đồn thổi, vị hoàng tử "nhẫn tâm và máu lạnh" ấy lại ân cần hơn cô tưởng rất nhiều. Liệu cô gái có tâm hồn thuần khiết như Katrina có thể tìm thấy tình yêu đích thực tại vùng quê mùa đông lạnh giá này?</p>', 
  'Tập 10', 13, 'hoathinh', 'ongoing', 428, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"阿座上洋平","avatar":"https://image.tmdb.org/t/p/w185/rLIqw8pIjVIxPb5engrTbu9iOex.jpg"},{"name":"Miku Ito","avatar":"https://image.tmdb.org/t/p/w185/q2y0SbBKNeVLf5obxixFmmiM4hQ.jpg"},{"name":"青木瑠璃子","avatar":"https://image.tmdb.org/t/p/w185/oIFCVeUfExnxu7jq5snnBScF6cB.jpg"},{"name":"日笠陽子","avatar":"https://image.tmdb.org/t/p/w185/mP3bj0s1gqJ6tCKFLhu4b1CkJj7.jpg"},{"name":"市ノ瀬加那","avatar":"https://image.tmdb.org/t/p/w185/hBJx5tpLA2vkXqfkPZosGjW4e8C.jpg"},{"name":"千葉翔也","avatar":"https://image.tmdb.org/t/p/w185/pF2urY77wuCYd9Fxh7dTirFYKSF.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["被冰冷王子的擁抱所拯救","拯救替身千金的是冷酷無情冰之王子的愛","身代わり令嬢を救ったのは冷酷無慈悲な氷の王子の愛でした"]', '{"id":"326191","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/nAlhbPLo21MPBvXSjHfxUjBIVnM.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt41358179","vote_average":null}', 
  1789378914571, '2026-09-08T23:19:22.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('duoc-cuu-song-nho-vong-tay-lanh-gia-cua-hoang-tu', 'Được Cứu Sống Nhờ Vòng Tay Lạnh Giá Của Hoàng Tử', 'Saved By The Ice Cold Prince''s Embrace', 'được cứu sống nhờ vòng tay lạnh giá của hoàng tử saved by the ice cold prince''s embrace 阿座上洋平 miku ito 青木瑠璃子 日笠陽子 市ノ瀬加那 千葉翔也', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tieu-thu-khong-choi-game-doi-khang', 'Tiểu Thư Không Chơi Game Đối Kháng', 'Young Ladies Don''t Play Fighting Games', 'https://phimimg.com/uploads/movies/20260708/tieu-thu-khong-choi-game-doi-khang-thumb.webp', 'https://phimimg.com/uploads/movies/20260708/tieu-thu-khong-choi-game-doi-khang-poster.webp', '<p>Mitsuki Aya bước vào Học viện Nữ sinh danh giá Kuromi với một mục tiêu duy nhất: trở thành một quý cô thanh lịch giống như “Hoa Ly Trắng” hoàn hảo của trường — Yorue Mio. Thế nhưng, hình tượng của Mio trong lòng Aya bỗng chốc tan vỡ khi cô vô tình bắt gặp nàng tiểu thư này đang... cày game đối kháng?! Hóa ra, Mio thanh tao thực chất lại là một game thủ hạng nặng — và cô ấy muốn thách đấu một trận tử hùng với Aya! Trận chiến (cùng tình bạn của họ) chính thức bắt đầu từ đây.</p>', 
  'Tập 10', 12, 'hoathinh', 'ongoing', 593, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"長谷川育美","avatar":"https://image.tmdb.org/t/p/w185/aHLid4WeTafrtfqDRAZSw5K7dTj.jpg"},{"name":"市ノ瀬加那","avatar":"https://image.tmdb.org/t/p/w185/hBJx5tpLA2vkXqfkPZosGjW4e8C.jpg"},{"name":"千本木彩花","avatar":"https://image.tmdb.org/t/p/w185/yLRKX9DPDGgTRKBQRFTUh3pvbU0.jpg"},{"name":"下地紫野","avatar":"https://image.tmdb.org/t/p/w185/8T2DboiJA3PC1OLJjhN12o4THYn.jpg"},{"name":"Maria Naganawa","avatar":"https://image.tmdb.org/t/p/w185/tt0j0z34Oq3MyvDA3VeizskWcw4.jpg"},{"name":"花守ゆみり","avatar":"https://image.tmdb.org/t/p/w185/zXVwGxsxwEvL1f6wxzTYtxytjDn.jpg"},{"name":"檜山修之","avatar":"https://image.tmdb.org/t/p/w185/yxAzBPZGSzec9rtulmORY84ijzT.jpg"},{"name":"阿座上洋平","avatar":"https://image.tmdb.org/t/p/w185/rLIqw8pIjVIxPb5engrTbu9iOex.jpg"},{"name":"八代拓","avatar":"https://image.tmdb.org/t/p/w185/eVdB6myaNJ4h38UU9hHHlsaCWHn.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Tai-Ari Deshita.: Ojou-sama wa Kakutou Game nante Shinai","Tai-Ari Deshita.: Ojō-sama wa Kakutō Game nante Shinai","Tai-Ari Deshita. ~Ojō-sama wa Kakutō Game nante Shinai~","Tai-Ari Deshita. ~Ojou-sama wa Kakutou Game nante Shinai~","GGWP","対ありでした。～お嬢さまは格闘ゲームなんてしない～"]', '{"id":"117120","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/3voRMTRURsQydV3bgRzIDpGR7cD.png","backdrop_url":"https://image.tmdb.org/t/p/original/yCRq49YINwI7psAK5VEzbKLLSFk.jpg","poster_url":"https://image.tmdb.org/t/p/original/avQuMexPkCfBTkwokMt3efAs0aK.jpg","aspect_ratio":3.015}', '{"id":"tt37015024","vote_average":null}', 
  1789378914570, '2026-09-08T20:42:35.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'anime_nhat');
DELETE FROM movies_fts WHERE slug = 'tieu-thu-khong-choi-game-doi-khang';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tieu-thu-khong-choi-game-doi-khang', 'Tiểu Thư Không Chơi Game Đối Kháng', 'Young Ladies Don''t Play Fighting Games', 'tiểu thư không chơi game đối kháng young ladies don''t play fighting games 長谷川育美 市ノ瀬加那 千本木彩花 下地紫野 maria naganawa 花守ゆみり 檜山修之 阿座上洋平 八代拓', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'lau-dai-tham-vong-ban-thai', 'Lâu Đài Tham Vọng (Bản Thái)', 'Sky Castle Thailand', 'https://phimimg.com/uploads/movies/20260805/lau-dai-tham-vong-ban-thai-thumb.webp', 'https://phimimg.com/uploads/movies/20260805/lau-dai-tham-vong-ban-thai-poster.webp', '<p>Được làm lại từ bộ phim Hàn Quốc đình đám cùng tên, Lâu Đài Tham Vọng (Bản Thái) xoay quanh cuộc chiến khốc liệt của những bậc cha mẹ giàu có tại khu biệt thự Sky Castle nhằm đưa con cái vào trường đại học danh giá. Fah, một người mẹ đang che giấu quá khứ nghèo khó, quyết tâm ép con gái phải đỗ Harvard để bảo vệ địa vị của bản thân. Áp lực ngày càng gia tăng với sự xuất hiện của một chuyên gia luyện thi khắc nghiệt và một học sinh thiên tài mang trong mình một bí mật có thể phá hủy mọi thứ mà Fah dày công gây dựng. Sau một sự cố gây chấn động tại một bữa tiệc, những sự thật bị chôn vùi ở Sky Castle lần lượt bị phơi bày.</p>', 
  'Tập 12', 16, 'series', 'ongoing', 359, 2026, 
  'Vietsub + Thuyết Minh', 'FHD', 'Thái Lan', 0, 
  '[{"name":"คัทลียา แมคอินทอช","avatar":"https://image.tmdb.org/t/p/w185/krFK6KNTlMbexFXeGNygZ9OFsSk.jpg"},{"name":"พิยดา จุฑารัตนกุล","avatar":"https://image.tmdb.org/t/p/w185/fEOUfOg9x9OGSSXBMzIKPENWFVd.jpg"},{"name":"Sujira Arunpipat","avatar":"https://image.tmdb.org/t/p/w185/kWgTJc0IqYPd5EhKNXric3jnvkf.jpg"},{"name":"Butsakon Tantiphana","avatar":"https://image.tmdb.org/t/p/w185/9QzETP8n5e64NCo0EeL868Hh4ap.jpg"},{"name":"มนัสนันท์ พันเลิศวงศ์สกุล","avatar":"https://image.tmdb.org/t/p/w185/zj09X1mHTrRNiyGmKpbTjJyierc.jpg"},{"name":"ศิรพันธ์ วัฒนจินดา","avatar":"https://image.tmdb.org/t/p/w185/fGKvpNulLd2JEmk1RLGzZkp0s3y.jpg"},{"name":"ทรงสิทธิ์ รุ่งนพคุณศรี","avatar":"https://image.tmdb.org/t/p/w185/6sh6H6UYyUDPxw3gPXzdp2ERy4m.jpg"},{"name":"ภพธร สุนทรญาณกิจ","avatar":"https://image.tmdb.org/t/p/w185/zc1GcZeQSIjqkLHi6ejgD12HR3.jpg"},{"name":"ธนเวทย์ สิริวัฒน์ธนกุล","avatar":"https://image.tmdb.org/t/p/w185/8oVrZd88bDWfNGTxd0jNsuIwaPw.jpg"},{"name":"Ratchanont Suprakob","avatar":"https://image.tmdb.org/t/p/w185/w8OimATLYL1vL6Le5efzOGUbiuj.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["Sky Castle Thailand","วิมานอากาศ"]', '{"id":"315326","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":null,"poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914569, '2026-09-08T20:42:16.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lau-dai-tham-vong-ban-thai', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lau-dai-tham-vong-ban-thai', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lau-dai-tham-vong-ban-thai', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lau-dai-tham-vong-ban-thai', 'thuyet_minh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('lau-dai-tham-vong-ban-thai', 'bo_thai');
DELETE FROM movies_fts WHERE slug = 'lau-dai-tham-vong-ban-thai';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('lau-dai-tham-vong-ban-thai', 'Lâu Đài Tham Vọng (Bản Thái)', 'Sky Castle Thailand', 'lâu đài tham vọng (bản thái) sky castle thailand คัทลียา แมคอินทอช พิยดา จุฑารัตนกุล sujira arunpipat butsakon tantiphana มนัสนันท์ พันเลิศวงศ์สกุล ศิรพันธ์ วัฒนจินดา ทรงสิทธิ์ รุ่งนพคุณศรี ภพธร สุนทรญาณกิจ ธนเวทย์ สิริวัฒน์ธนกุล ratchanont suprakob', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'su-quy-ky-thon-hoang-tuyen', 'Sử Quỷ Ký: Thôn Hoàng Tuyền', 'Strange Tales of Huangquan Village', 'https://phimimg.com/uploads/movies/20260908/su-quy-ky-thon-hoang-tuyen-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/su-quy-ky-thon-hoang-tuyen-poster.webp', '<p>Đạo diễn Vương Kiến Sấm đến thăm thăm ngôi làng hoang vào đêm. Từ lời kể của bà lão sống cô độc ở ngôi làng cổ suốt vài chục năm, anh ấy biết được một vụ thảm án diệt cả làng do lòng tham gây ra: tên ác nhân Hồ Nhân Thành chiếm mỏ vàng, đầu độc người thân, hãm hiếp thiếu nữ, rồi đẩy xuống hồ để diệt khẩu, cuối cùng bị đàn anh Đức Thúc liều mạng tiêu diệt. Đức Thúc dùng thân mình chắn nước, khiến nước hồ trong trở lại. Và bà lão kể chuyện chính là học trò nhỏ của Đức Thúc ngày xưa, bà đã thề bảo vệ vùng đất này. Gieo nhân nào, gặt quả ấy, không ngừng bảo vệ.</p>', 
  'Full', 1, 'single', 'completed', 99, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"付天君","avatar":"https://image.tmdb.org/t/p/w185/g09x17wlzxv7Dd0Z1Iz5ItUAJlo.jpg"},{"name":"杨乃晴","avatar":"https://image.tmdb.org/t/p/w185/u4T2rqQ5Jcu8DwGftA3WfVFG9NL.jpg"},{"name":"何海霞","avatar":""}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"}]', 
  '["史诡记之黄泉村"]', '{"id":"1719751","type":"movie","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/avTT6mqhfGC6GTuAT2enzeCEzsp.jpg","poster_url":"https://image.tmdb.org/t/p/original/fVgmzZGdAcjoMWkGLNgBMBqZS0a.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914568, '2026-09-08T20:41:53.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-quy-ky-thon-hoang-tuyen', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-quy-ky-thon-hoang-tuyen', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('su-quy-ky-thon-hoang-tuyen', 'le_trung');
DELETE FROM movies_fts WHERE slug = 'su-quy-ky-thon-hoang-tuyen';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('su-quy-ky-thon-hoang-tuyen', 'Sử Quỷ Ký: Thôn Hoàng Tuyền', 'Strange Tales of Huangquan Village', 'sử quỷ ký: thôn hoàng tuyền strange tales of huangquan village 付天君 杨乃晴 何海霞', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'ky-mon-don-giap-hoa-hung-thanh-cat', 'Kỳ Môn Độn Giáp: Hóa Hung Thành Cát', 'The Thousand Faces of Dunjia: Feng Xiong Hua Ji', 'null', 'https://phimimg.com/uploads/movies/20260908/ky-mon-don-giap-hoa-hung-thanh-cat-poster.webp', '<p>Vào thời Vĩnh Lạc triều Minh, người dân Tống Lai ở trấn Cát Tường vô tình đắc tội với bọn thổ phỉ ở trại Giao Long để cứu Xảo Nhi, người bạn thanh mai trúc mã của mình. Từ đó, trấn Cát Tường liên tục bị thổ phỉ đốt nhà cướp của, sát hại. Tên cầm đầu Ba Long đe dọa rằng trong vòng ba tháng, nếu không cống nạp đủ vạn cân lương thực, hắn sẽ dẫn quân Giao Long Trại tàn sát toàn bộ trấn. Để giải quyết mối nguy của trấn, Tống Lai được giao trọng trách đi tìm ông lão ăn mày Viên Cửu Công, người tinh thông thuật kỳ môn độn giáp, đến để chống lại bọn thổ phỉ. Dù từng bị người dân trấn Cát Tường ruồng bỏ, Viên Cửu Công vẫn gạt bỏ ân oán cũ, trở về giúp dân làng. Ông cùng dân làng bố trận pháp để đánh bại băng cướp. Cuối cùng trấn Cát Tường giành được thắng lợi hoàn toàn, Tống Lai và Xảo Nhi cũng nên duyên vợ chồng, còn Viên Cửu Công từ chối lời níu kéo của dân làng, tiếp tục lựa chọn phiêu du khắp thiên hạ.</p>', 
  'Full', 1, 'single', 'completed', 86, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"彭禺厶","avatar":"https://image.tmdb.org/t/p/w185/8nRrxqJlHWe2C1VNzoXSRbLpv2D.jpg"},{"name":"羅米","avatar":"https://image.tmdb.org/t/p/w185/y1tcm6zo5SKcujHNkrCCw1QzX3H.jpg"},{"name":"張春仲","avatar":"https://image.tmdb.org/t/p/w185/iw6dzpP1TV1fHOhSbNRkOkS4XJR.jpg"},{"name":"杨乃晴","avatar":"https://image.tmdb.org/t/p/w185/u4T2rqQ5Jcu8DwGftA3WfVFG9NL.jpg"},{"name":"张茜缘","avatar":"https://image.tmdb.org/t/p/w185/mro7NCCINqdht0fUGCGqxlfagKi.jpg"},{"name":"马六甲","avatar":"https://image.tmdb.org/t/p/w185/9RhlXgYUDRI9awpfIuKCzgRm7Nc.jpg"},{"name":"章若祺","avatar":"https://image.tmdb.org/t/p/w185/nRgRFa5NlclQYnLNKbqg9sdhOMr.jpg"},{"name":"樊芷萌","avatar":"https://image.tmdb.org/t/p/w185/oYhlWSvML88rjR35CqsCIehLxEy.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"3a17c7283b71fa84e5a8d76fb790ed3e","name":"Cổ Trang","slug":"co-trang"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"}]', 
  '["奇门遁甲：逢凶化吉"]', '{"id":"1766096","type":"movie","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/ivmfwK9CzZLYA6JABvX55yv4JIa.png","backdrop_url":"https://image.tmdb.org/t/p/original/pFp2SB1VtYcdbDQznwdIO0rObr4.jpg","poster_url":"https://image.tmdb.org/t/p/original/hNpg76MH3tUGb6FC4SLQsEyHz8L.jpg","aspect_ratio":2.056}', '{"id":null,"vote_average":null}', 
  1789378914567, '2026-09-08T20:41:45.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ky-mon-don-giap-hoa-hung-thanh-cat', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ky-mon-don-giap-hoa-hung-thanh-cat', 'co-trang');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ky-mon-don-giap-hoa-hung-thanh-cat', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ky-mon-don-giap-hoa-hung-thanh-cat', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ky-mon-don-giap-hoa-hung-thanh-cat', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('ky-mon-don-giap-hoa-hung-thanh-cat', 'le_trung');
DELETE FROM movies_fts WHERE slug = 'ky-mon-don-giap-hoa-hung-thanh-cat';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('ky-mon-don-giap-hoa-hung-thanh-cat', 'Kỳ Môn Độn Giáp: Hóa Hung Thành Cát', 'The Thousand Faces of Dunjia: Feng Xiong Hua Ji', 'kỳ môn độn giáp: hóa hung thành cát the thousand faces of dunjia: feng xiong hua ji 彭禺厶 羅米 張春仲 杨乃晴 张茜缘 马六甲 章若祺 樊芷萌', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'hon-loan-phan-5', 'Hỗn loạn (Phần 5)', 'Fauda (Season 5)', 'https://phimimg.com/uploads/movies/20260908/hon-loan-phan-5-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/hon-loan-phan-5-poster.webp', '<p>Doron và các thành viên trong đội đặc nhiệm tiếp tục bước vào một chiến dịch sinh tử mới, đối mặt với những mối đe dọa không chỉ bó hẹp trong khu vực mà còn mở rộng ra quốc tế (bao gồm cả các hoạt động truy vết tại châu Âu), khi lằn ranh giữa nhiệm vụ quốc gia và sự trả thù cá nhân trở nên mờ nhạt hơn bao giờ hết.</p>', 
  'Full', 11, 'series', 'completed', 83, 2026, 
  'Vietsub', 'FHD', 'Israel', 0, 
  '[{"name":"ליאור רז","avatar":"https://image.tmdb.org/t/p/w185/bl3KLFUQ4Q0zC9lCU4qP1Jf4qHS.jpg"},{"name":"נטע גרטי","avatar":"https://image.tmdb.org/t/p/w185/yAwo4zSpCzMhYiPGxkJBYhnzjRV.jpg"},{"name":"דורון בן דוד","avatar":"https://image.tmdb.org/t/p/w185/bSrRVAKtmu6hOsvvsOTZsqlBZVx.jpg"},{"name":"Rona-Lee Shim''on","avatar":"https://image.tmdb.org/t/p/w185/tsbVNfgRukCyPEVog2bIhcOSJWx.jpg"},{"name":"איציק כהן","avatar":"https://image.tmdb.org/t/p/w185/tfjZLOyLAqbzn0X45mlDrka5YhQ.jpg"},{"name":"יעקב זדה-דניאל","avatar":"https://image.tmdb.org/t/p/w185/l24AkJpluGie5xI5SJnAji0W3xU.jpg"},{"name":"Dan Kadosh","avatar":"https://image.tmdb.org/t/p/w185/sR0MITHu14ckO1Txlm7Ht2n5V6A.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"d4abdf63f72f944bff554d965b9a0508","name":"War & Politics","slug":"war-politics"}]', 
  '["Fauda","混乱 冤冤相报","Χάος","ファウダ -復讐の連鎖-","파우다: 혼돈","Фауда","פאודה"]', '{"id":"69557","type":"tv","vote_average":7.5,"vote_count":266,"logo_url":"https://image.tmdb.org/t/p/original/8tsp3Rme4fwlTTS9sdJXYPPZDNm.png","backdrop_url":"https://image.tmdb.org/t/p/original/l7BDJsD2zRYHvu3G7qV1v7q5hoF.jpg","poster_url":"https://image.tmdb.org/t/p/original/bc6XIKP1TrnugYMzIIUz9YCL8VM.jpg","aspect_ratio":4.08}', '{"id":"tt4565380","vote_average":8.3}', 
  1789378914566, '2026-09-08T20:41:34.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hon-loan-phan-5', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hon-loan-phan-5', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hon-loan-phan-5', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('hon-loan-phan-5', 'war-politics');
DELETE FROM movies_fts WHERE slug = 'hon-loan-phan-5';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('hon-loan-phan-5', 'Hỗn loạn (Phần 5)', 'Fauda (Season 5)', 'hỗn loạn (phần 5) fauda (season 5) ליאור רז נטע גרטי דורון בן דוד rona-lee shim''on איציק כהן יעקב זדה-דניאל dan kadosh', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dang', 'DANG!', 'DANG!', 'https://phimimg.com/uploads/movies/20260908/dang-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/dang-poster.webp', '<p>Trong sitcom hoạt hình này, sau khi Ruthie tự phá tan cuộc sống hoàn hảo của mình, Andrew và Eunice giúp cô nhận ra không hoàn hảo cũng có cái vui, còn cô giúp họ trưởng thành.</p>', 
  'Hoàn Tất (8/8)', 8, 'hoathinh', 'completed', 90, 2026, 
  'Vietsub', 'FHD', 'Mỹ', 0, 
  '[{"name":"Stephanie Hsu","avatar":"https://image.tmdb.org/t/p/w185/8gb3lfIHKQAGOQyeC4ynQPsCiHr.jpg"},{"name":"Andrew Law","avatar":"https://image.tmdb.org/t/p/w185/ambF0ZmnMhHxZAd7cNHFLwur8Tt.jpg"},{"name":"Poppy Liu","avatar":"https://image.tmdb.org/t/p/w185/i36QkUChZN7K8BQa1ReaZHes6L4.jpg"}]', '[{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"}]', 
  '["DANG!"]', '{"id":"314478","type":"tv","vote_average":10,"vote_count":1,"logo_url":"https://image.tmdb.org/t/p/original/bRyUIj9iXzKiGUgmU2U7yd0QgWM.png","backdrop_url":"https://image.tmdb.org/t/p/original/xcjvlbVkVvGodPdfv3c6NzknMIB.jpg","poster_url":"https://image.tmdb.org/t/p/original/6Sfvl6QXQM8qIdVAMgpxBfLCJzQ.jpg","aspect_ratio":1.968}', '{"id":"tt40003445","vote_average":null}', 
  1789378914565, '2026-09-08T17:24:38.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dang', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dang', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dang', 'hoat_hinh');
DELETE FROM movies_fts WHERE slug = 'dang';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dang', 'DANG!', 'DANG!', 'dang! dang! stephanie hsu andrew law poppy liu', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'tinh-yeu-noi-loan-phan-2', 'Tình Yêu Nổi Loạn (Phần 2)', 'Badly In Love (Season 2)', 'https://phimimg.com/uploads/movies/20260807/tinh-yeu-noi-loan-phan-2-thumb.webp', 'https://phimimg.com/uploads/movies/20260807/tinh-yeu-noi-loan-phan-2-poster.webp', '<p>Trong series hẹn hò đầu tiên của Nhật Bản dành cho những trẻ trâu nổi loạn, 11 người độc thân xung đột, gắn bó và sống chung trong 14 ngày để dốc sức tìm kiếm nửa kia.</p>', 
  'Hoàn Tất (20/20)', 20, 'tvshows', 'completed', 908, 2026, 
  'Vietsub', 'FHD', 'Nhật Bản', 0, 
  '[{"name":"MEGUMI","avatar":"https://image.tmdb.org/t/p/w185/9qqVBUuiszwHErmVx9wIXp6wPqk.jpg"},{"name":"永野","avatar":"https://image.tmdb.org/t/p/w185/n4kjbmNpF7CjDed5lHaIWnniFWi.jpg"},{"name":"Awich","avatar":"https://image.tmdb.org/t/p/w185/nYK85paCKcf8u6WwpqV43KqTjUe.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"bb2b4b030608ca5984c8dd0770f5b40b","name":"Tình Cảm","slug":"tinh-cam"}]', 
  '["불량연애","Badly in Love","ラヴ上等"]', '{"id":"305379","type":"tv","vote_average":7.7,"vote_count":6,"logo_url":"https://image.tmdb.org/t/p/original/95QiPEXFrRa8Vx03p1olMcWKMIk.png","backdrop_url":"https://image.tmdb.org/t/p/original/fdszgz2M8FLECQ0rECa5Y2V1t07.jpg","poster_url":"https://image.tmdb.org/t/p/original/znBXK71xEjvfqcNsiRG8KFGk1Ut.jpg","aspect_ratio":5.397}', '{"id":"tt35801873","vote_average":null}', 
  1789378914564, '2026-09-08T15:31:00.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-noi-loan-phan-2', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-noi-loan-phan-2', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-noi-loan-phan-2', 'tinh-cam');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-noi-loan-phan-2', 'bo_nhat');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('tinh-yeu-noi-loan-phan-2', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'tinh-yeu-noi-loan-phan-2';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('tinh-yeu-noi-loan-phan-2', 'Tình Yêu Nổi Loạn (Phần 2)', 'Badly In Love (Season 2)', 'tình yêu nổi loạn (phần 2) badly in love (season 2) megumi 永野 awich', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'van-co-than-de', 'Vạn Cổ Thần Đế', 'God Of Eternity', 'https://phimimg.com/uploads/movies/20260721/van-co-than-de-thumb.webp', 'https://phimimg.com/uploads/movies/20260721/van-co-than-de-poster.webp', '<p>Tám trăm năm trước, Trương Nhược Trần là nhi tử duy nhất của Minh Đế. Tuy sở hữu tài năng tuyệt thế, chàng lại bị thanh mai trúc mã là công chúa Trì Dao sát hại. Tám trăm năm sau, chàng trọng sinh trong thân xác của Trương Nhược Trần - Cửu vương tử vô dụng của Vân Vũ Quận Quốc. Thân thể mới này ốm yếu, bệnh tật, không có chút linh lực nào, khiến chàng cùng mẫu thân là Lâm Phi phải chịu đủ mọi sự chèn ép trong phủ Quận Vương. Sau khi nhớ lại kiếp trước, Trương Nhược Trần thề sẽ trả thù Trì Dao nữ vương - nay đã trở thành chúa tể của Côn Luân Giới, đồng thời bảo vệ Lâm Phi, người mẹ hết lòng yêu thương mình. Sau khi thức tỉnh ấn ký Thần Võ Thời Không, Trương Nhược Trần dựa vào kinh nghiệm từ kiếp trước cùng sự khổ luyện để nhanh chóng trở nên mạnh mẽ.</p>', 
  'Tập 17', 60, 'hoathinh', 'ongoing', 511, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["万古神帝"]', '{"id":"329260","type":"tv","vote_average":null,"vote_count":null,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/aq9SNvWT5WikXHHMr4NU0Vc99Q7.jpg","poster_url":"https://image.tmdb.org/t/p/original/jElv6FJjINzLoGeSDBsrCa4EOeL.jpg","aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914563, '2026-09-08T13:41:49.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-than-de', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-than-de', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-than-de', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-than-de', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-than-de', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('van-co-than-de', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'van-co-than-de';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('van-co-than-de', 'Vạn Cổ Thần Đế', 'God Of Eternity', 'vạn cổ thần đế god of eternity đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'thu-thach-than-tuong', 'Thử Thách Thần Tượng', 'Running Man', 'https://phimimg.com/upload/vod/20241017-1/65a22ab2e96e79bfedf8ae96d955f72a.jpg', 'https://phimimg.com/upload/vod/20241017-1/8ce53643bb316f8fb8dc3dddd955f2ce.jpg', '<p>Thử Thách Thần Tượng - RUNNING MAN là một show truyền hình hài hước thực tế của Hàn Quốc, ra mắt từ năm 2010 nhưng cho đến nay vẫn là một trong những chương trình giải trí được yêu thích nhất tại xứ sở kim chi. Với RUNNING MAN, đảm bảo các bạn sẽ phải &quot;cười lăn cười bò&quot; vì sự hài hước của các thành viên cũng như những nhiệm vụ oái ăm mà họ phải chịu đựng trong suốt chương trình. Ngoài 8 thành viên chính của RUNNING MAN gồm: Yoo Jae Suk, Ji Suk Jin, Kim Jong Kook, Lee Kwang Soo, Haha, Song Ji Hyo, Yang Se Chan và Jeon So Min, khán giả sẽ có dịp gặp gỡ những ngôi sao giải trí hàng đầu khác của Hàn Quốc, thậm chí là những ngôi sao Quốc tế tham gia RUNNING MAN trong vai trò khách mời đặc biệt.</p>', 
  'Tập 819', 1000, 'tvshows', 'ongoing', 960, 2010, 
  'Vietsub', 'FHD', 'Hàn Quốc', 0, 
  '[{"name":"Yoo Jae-suk","avatar":"https://image.tmdb.org/t/p/w185/1uktAM7R2Hgc3dynIXvzfACOmnW.jpg"},{"name":"지석진","avatar":"https://image.tmdb.org/t/p/w185/mB3mQ3FOqFR5dIrbtyEpvckhCib.jpg"},{"name":"김종국","avatar":"https://image.tmdb.org/t/p/w185/56y9LaL65dbeaWZJt9dB7ifAUhR.jpg"},{"name":"하하","avatar":"https://image.tmdb.org/t/p/w185/i3vcj3GI3TCmDlnI3aLA7pWKIuN.jpg"},{"name":"송지효","avatar":"https://image.tmdb.org/t/p/w185/f3QRDGEqHkeLBQZfWe3GbmHeuuX.jpg"},{"name":"양세찬","avatar":"https://image.tmdb.org/t/p/w185/odyq0zKjgZjX9o9OWZDImsBCDHQ.jpg"},{"name":"Ji Yea-un","avatar":"https://image.tmdb.org/t/p/w185/fTJfTdEvOjeKpO4Q4sbFxS7fy6E.jpg"},{"name":"전소민","avatar":"https://image.tmdb.org/t/p/w185/eKTdMgKkvMGrrb7Xj8U1EH8ooYu.jpg"},{"name":"Lee Kwang-soo","avatar":"https://image.tmdb.org/t/p/w185/eqjZXCV4EutnoVxZwOveK6Nl5W9.jpg"},{"name":"강개리","avatar":"https://image.tmdb.org/t/p/w185/1VmcIXECCCXvn4hxHobxFpDplxu.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"}]', 
  '["런닝맨"]', '{"id":"33238","type":"tv","vote_average":8.2,"vote_count":213,"logo_url":"https://image.tmdb.org/t/p/original/xSWfVTk92R5UJwFZRk4jbwOBCcZ.png","backdrop_url":"https://image.tmdb.org/t/p/original/wsHj4oHQJoe7DMYaqNFwVoyLiAh.jpg","poster_url":"https://image.tmdb.org/t/p/original/2Wmmu1MkqxJ48J7aySET9EKEjXz.jpg","aspect_ratio":1.272}', '{"id":"tt2185037","vote_average":9.1}', 
  1789378914562, '2026-09-08T13:41:29.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-thach-than-tuong', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-thach-than-tuong', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-thach-than-tuong', 'bo_han');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('thu-thach-than-tuong', 'tv_show');
DELETE FROM movies_fts WHERE slug = 'thu-thach-than-tuong';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('thu-thach-than-tuong', 'Thử Thách Thần Tượng', 'Running Man', 'thử thách thần tượng running man yoo jae-suk 지석진 김종국 하하 송지효 양세찬 ji yea-un 전소민 lee kwang-soo 강개리', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'nhat-tram-thuong-khung', 'Nhất Trảm Thương Khung', 'GuAn / One Slash Across the Sky', 'https://phimimg.com/uploads/movies/20260729/nhat-tram-thuong-khung-thumb.webp', 'https://phimimg.com/uploads/movies/20260729/nhat-tram-thuong-khung-poster.webp', '<p>Từ nhỏ, Cốc An luôn nỗ lực tu luyện với khát vọng trở thành tiên nhân. Thế nhưng, vì trời sinh thiếu linh căn nên anh vô duyên với tiên đạo, lại còn bị lừa vào một khu lừa đảo của giới tu tiên, nhiều lần cận kề cái chết. Sau khi trải qua vô vàn đau khổ và bị dồn đến đường cùng, Cốc An quyết tâm vùng lên báo thù, từng bước nghịch thiên cải mệnh. Con đường thượng vị của anh bắt đầu từ đây, với lời thề một ngày sẽ một đao chém rách cả thương khung.</p>', 
  'Tập 8', 26, 'hoathinh', 'ongoing', 435, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"李翰林","avatar":"https://image.tmdb.org/t/p/w185/9go42QY5KfU2ofHq4WypMavK8Wc.jpg"},{"name":"Meme Yan","avatar":"https://image.tmdb.org/t/p/w185/8Gf8Ji8CKJ3lhnKlnYM2ZpDOIXy.jpg"},{"name":"黑特","avatar":"https://image.tmdb.org/t/p/w185/8KGgPMiTjN9tcYA7hNpvyNaRcPs.jpg"},{"name":"冯盛","avatar":"https://image.tmdb.org/t/p/w185/1IB7v7KhJWfTTylZHhFXHw5SVFR.jpg"},{"name":"姜英俊","avatar":"https://image.tmdb.org/t/p/w185/rWc453fqK7NCVPM2tQvso6x6tMN.jpg"},{"name":"Tang Mingdong","avatar":"https://image.tmdb.org/t/p/w185/rHlanIUmJVMm01zxfq10KXZJsUG.jpg"},{"name":"常蓉珊","avatar":"https://image.tmdb.org/t/p/w185/rBhEjdGN39BsHS3Qm6dNxOAKsGF.jpg"},{"name":"瞳音","avatar":"https://image.tmdb.org/t/p/w185/wuxAsFIvdp4N0SVyH5L9WquUKfy.jpg"},{"name":"刘峥","avatar":"https://image.tmdb.org/t/p/w185/1bUUd4xOpCThBPYuXj3bKZTfZIX.jpg"},{"name":"Wei Yifan","avatar":"https://image.tmdb.org/t/p/w185/kBM5bzHb1FyNYjNWeZz8aEubHFf.jpg"}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"d9983d88d8929b1d9f767884e2999e27","name":"Hoạt Hình","slug":"hoat-hinh"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"}]', 
  '["一斩苍穹"]', '{"id":"303287","type":"tv","vote_average":null,"vote_count":null,"logo_url":"https://image.tmdb.org/t/p/original/rj6H2q6hWocIdnY2NsdASphQ0F1.png","backdrop_url":"https://image.tmdb.org/t/p/original/cU5PAnxXY9DWStsZ0HsFhq4SHWr.jpg","poster_url":"https://image.tmdb.org/t/p/original/hizh0OcUTNFJzSxPH0jtHyWNDCi.jpg","aspect_ratio":1.042}', '{"id":null,"vote_average":null}', 
  1789378914561, '2026-09-08T13:39:48.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhat-tram-thuong-khung', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhat-tram-thuong-khung', 'hoat-hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhat-tram-thuong-khung', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhat-tram-thuong-khung', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhat-tram-thuong-khung', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhat-tram-thuong-khung', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('nhat-tram-thuong-khung', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'nhat-tram-thuong-khung';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('nhat-tram-thuong-khung', 'Nhất Trảm Thương Khung', 'GuAn / One Slash Across the Sky', 'nhất trảm thương khung guan / one slash across the sky 李翰林 meme yan 黑特 冯盛 姜英俊 tang mingdong 常蓉珊 瞳音 刘峥 wei yifan', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'dao-yeu-hanh', 'Đạo Yêu Hành', 'Aliens Among Immortals', 'https://phimimg.com/upload/vod/20260312-1/1fd77b198bbcfc53b17dd17f75d70899.jpg', 'https://phimimg.com/upload/vod/20260312-1/2821d43d21af1b468167989aa1774fa8.jpg', '<p>Thánh nữ Thiều Nguyệt của Cửu Tuyền Tông bị sắp đặt thành thân cùng thích khách Giang Nguyên bên Thái Huyền Lâu. Cả hai đều chẳng cam tâm, nhưng vì đại cục hai phái, đành kết thành một đôi phu thê trên danh nghĩa. Bề ngoài là cuộc liên hôn tương xứng giữa hai thế lực lớn, song ẩn dưới lớp vỏ hòa thuận ấy lại là toan tính nhắm vào trọng bảo của nhau. Thông qua thân phận vợ chồng hờ, mỗi người âm thầm dò xét, chờ cơ hội chiếm lấy bí vật của đối phương. Ngay trong đêm hợp cẩn, sát ý đã bùng lên. Nhưng khi lưỡi kiếm chạm nhau, cả hai mới nhận ra đối phương đều mang thân thể bất diệt. Nguyên do nằm ở một bí mật chung: Thiều Nguyệt và Giang Nguyên vốn là kẻ lưu lạc từ tinh cầu khác, quê hương từng bị thế lực mang tên “Hư Vô” hủy diệt. Vì tránh kiếp nạn, họ mới trôi dạt tới thế giới này. Không còn đường lui, hai người tiếp tục duy trì mối quan hệ giả tạo ấy, vừa tìm hiểu bí bảo, vừa cùng nhau chống đỡ những hiểm nguy bủa vây. Thế nhưng sống cạnh nhau giữa sinh tử, từ lúc nào chẳng hay, sự đề phòng dần hóa thành tin tưởng, rồi thành đồng minh kề vai sát cánh. Cuối cùng, mục tiêu của họ không còn dừng ở bảo vật nữa. Thứ họ muốn đối mặt chính là “Hư Vô”, kẻ đã chôn vùi quê hương năm cũ. Giữa thế giới đầy toan tính này, hai con người mang chung quá khứ mất mát bắt đầu tìm kiếm cơ hội xoay chuyển số phận, quyết không để bi kịch lặp lại.</p>', 
  'Hoàn Tất (60/60)', 60, 'hoathinh', 'completed', 627, 2026, 
  'Vietsub', 'FHD', 'Trung Quốc', 0, 
  '[{"name":"Đang cập nhật","avatar":""}]', '[{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"ba6fd52e5a3aca80eaaf1a3b50a182db","name":"Hài Hước","slug":"hai-huoc"},{"id":"9822be111d2ccc29c7172c78b8af8ff5","name":"Hành Động","slug":"hanh-dong"},{"id":"0bcf4077916678de9b48c89221fcf8ae","name":"Khoa Học","slug":"khoa-hoc"},{"id":"66c78b23908113d478d8d85390a244b4","name":"Phiêu Lưu","slug":"phieu-luu"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"},{"id":"68564911f00849030f9c9c144ea1b931","name":"Viễn Tưởng","slug":"vien-tuong"}]', 
  '["Dao Yao Xing","Aliens Among Immortals","盗妖行"]', '{"id":"315088","type":"tv","vote_average":7,"vote_count":1,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/9e0I0ubmlvaeKKp6AlHjPyBTjmg.jpg","poster_url":null,"aspect_ratio":null}', '{"id":null,"vote_average":null}', 
  1789378914560, '2026-09-08T11:54:02.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'hai-huoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'hanh-dong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'khoa-hoc');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'phieu-luu');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'tam-ly');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'vien-tuong');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'bo_trung');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'hoat_hinh');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('dao-yeu-hanh', 'hh_trung_quoc');
DELETE FROM movies_fts WHERE slug = 'dao-yeu-hanh';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('dao-yeu-hanh', 'Đạo Yêu Hành', 'Aliens Among Immortals', 'đạo yêu hành aliens among immortals đang cập nhật', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'loi-nguyen-sijjin-8', 'Lời Nguyền Sijjin 8', 'Sijjin 8', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-8-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-8-poster.webp', '<p>Fatih sống cùng gia đình trong ngôi nhà của mẹ anh, bà Gönül. Không chịu nổi áp lực từ người vợ Berna, Fatih đành gửi người mẹ yêu quý vào viện dưỡng lão. Tuy nhiên, sự im lặng bao trùm căn nhà sau quyết định này không mang lại bình yên mà là điềm báo của một cơn bão kinh hoàng đang ập đến. Ngôi nhà dần vượt khỏi tầm kiểm soát khi một thế lực hắc ám quỷ quái âm thầm xâm chiếm mọi ngóc ngách. Khi các hiện tượng siêu nhiên ngày càng trở nên đáng sợ, cắn rứt lương tâm đè nặng lên vai Fatih. Cuối cùng, anh quyết định đón mẹ trở về nhà từ viện dưỡng lão. Thế nhưng, người quay trở lại căn nhà lúc này đã không còn là người mẹ của anh nữa... Mỗi bí mật đều phải trả giá, và những bí mật viết bằng máu sẽ không bao giờ nằm yên dưới nấm mồ!</p>', 
  'Full', 1, 'single', 'completed', 95, 2025, 
  'Vietsub', 'FHD', 'Thổ Nhĩ Kỳ', 0, 
  '[{"name":"Masal Aksel","avatar":"https://image.tmdb.org/t/p/w185/wWRCd4p1wV5MFHBZyITfRMQYmSW.jpg"},{"name":"Mana Alkoy","avatar":"https://image.tmdb.org/t/p/w185/wClvk8Fo9Wo8KrWL3Jrn13d2Goi.jpg"},{"name":"Fahrettin Avcı","avatar":"https://image.tmdb.org/t/p/w185/8zHenBgXrILTyiPAg54QvcrRguv.jpg"},{"name":"Melike Balçık","avatar":"https://image.tmdb.org/t/p/w185/v3qwaDRBcrDXYbdr1LLWuByegPn.jpg"},{"name":"Ece Baykal","avatar":"https://image.tmdb.org/t/p/w185/ngZMSZuUYzK6Ls18yN4nUxivAnu.jpg"},{"name":"Fatih Gülnar","avatar":"https://image.tmdb.org/t/p/w185/nGgpeUVteE5FOh5RlKZAwipk6Pq.jpg"},{"name":"Hatice İrkin","avatar":"https://image.tmdb.org/t/p/w185/icotENjIShvcl75P9PkGNaMqK8C.jpg"},{"name":"Fatma Nilgün İslamoğlu","avatar":"https://image.tmdb.org/t/p/w185/kVYVRqVo4SM297ZvvXjjzYYilC9.jpg"},{"name":"Oğuz Okul","avatar":"https://image.tmdb.org/t/p/w185/vwO0Anktvdanyg9rk6y2d3jW6tX.jpg"},{"name":"Gönül Ürer","avatar":"https://image.tmdb.org/t/p/w185/3UGxHLPcgHZcZ2NDFbO5Eeuw9xI.jpg"}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Siccîn 8"]', '{"id":"1315706","type":"movie","vote_average":3.4,"vote_count":5,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/tpdpdQtRueqrYjT8JgOWbGUFVzQ.jpg","poster_url":"https://image.tmdb.org/t/p/original/lHka4D0xAQtCdhuMC4Lqq4BXiO.jpg","aspect_ratio":null}', '{"id":"tt36826841","vote_average":4.3}', 
  1789378914559, '2026-09-08T08:43:53.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-8', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-8', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-8', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'loi-nguyen-sijjin-8';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('loi-nguyen-sijjin-8', 'Lời Nguyền Sijjin 8', 'Sijjin 8', 'lời nguyền sijjin 8 sijjin 8 masal aksel mana alkoy fahrettin avcı melike balçık ece baykal fatih gülnar hatice i̇rkin fatma nilgün i̇slamoğlu oğuz okul gönül ürer', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'loi-nguyen-sijjin-7', 'Lời Nguyền Sijjin 7', 'Sijjin 7', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-7-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-7-poster.webp', '<p>Một người phụ nữ quyết tâm hoàn thành các điều kiện khắt khe của một nghi lễ tà thuật đã âm mưu xâm nhập và luồn lách vào bên trong một gia đình nhằm thực hiện mục đích đen tối của mình.</p>', 
  'Full', 1, 'single', 'completed', 66, 2024, 
  'Vietsub', 'FHD', 'Thổ Nhĩ Kỳ', 0, 
  '[{"name":"Serkan Atar","avatar":"https://image.tmdb.org/t/p/w185/5FIr9Vmnli49NNFfScsRraExv7I.jpg"},{"name":"Tuğba Begde","avatar":"https://image.tmdb.org/t/p/w185/rebBIwBBLYD3JON6SSEhIFadMhF.jpg"},{"name":"Funda Eskioğlu","avatar":"https://image.tmdb.org/t/p/w185/pcQ4RsvIgr1hV4fNo3hawoc97IC.jpg"},{"name":"Gönül Ürer","avatar":"https://image.tmdb.org/t/p/w185/3UGxHLPcgHZcZ2NDFbO5Eeuw9xI.jpg"},{"name":"Ceyda Ceren Edis","avatar":"https://image.tmdb.org/t/p/w185/wl2ztlXzYWxrhAZjmMxo9TGh2bT.jpg"},{"name":"Duru Irmak Apaydın","avatar":"https://image.tmdb.org/t/p/w185/4a0wGFdZUQkh8tSVNoHz8AumY0h.jpg"},{"name":"Yusuf Kaan Arpacık","avatar":"https://image.tmdb.org/t/p/w185/aZSU7hq87f9DL8L4UINz9i9wONC.jpg"},{"name":"Adnan Koç","avatar":"https://image.tmdb.org/t/p/w185/pfdCNkfcRAauJRLT3s9N5imeb9j.jpg"},{"name":"Mana Alkoy","avatar":"https://image.tmdb.org/t/p/w185/wClvk8Fo9Wo8KrWL3Jrn13d2Goi.jpg"},{"name":"Caner Atacan","avatar":"https://image.tmdb.org/t/p/w185/qmxOCRjPZNTsVnkXLoythC895Zd.jpg"}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["سجین 7","Астрал. Заклятие мертвых","Siccîn 7"]', '{"id":"1289004","type":"movie","vote_average":3.3,"vote_count":14,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/bTonah7ZVdrTrnnI9daCwH4KJIL.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt32340580","vote_average":4.1}', 
  1789378914558, '2026-09-08T08:42:22.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-7', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-7', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-7', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'loi-nguyen-sijjin-7';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('loi-nguyen-sijjin-7', 'Lời Nguyền Sijjin 7', 'Sijjin 7', 'lời nguyền sijjin 7 sijjin 7 serkan atar tuğba begde funda eskioğlu gönül ürer ceyda ceren edis duru irmak apaydın yusuf kaan arpacık adnan koç mana alkoy caner atacan', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'loi-nguyen-sijjin-6', 'Lời Nguyền Sijjin 6', 'Sijjin 6', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-6-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-6-poster.webp', '<p>Một cô gái trẻ liên tục bị ám ảnh bởi một linh hồn tà ác ngay trong chính căn nhà của gia đình mình. Hàng loạt sự cố rùng rợn và tai họa xui xẻo bắt đầu bủa vằn lấy ngôi nhà cùng các thành viên trong gia đình cô. Giữa lúc bi kịch đẩy đến đỉnh điểm, một nhân vật cũ tái xuất nhằm giải cứu gia đình khỏi số phận nghiệt ngã đã định sẵn.</p>', 
  'Full', 1, 'single', 'completed', 66, 2019, 
  'Vietsub', 'FHD', 'Thổ Nhĩ Kỳ', 0, 
  '[{"name":"Merve Ateş","avatar":"https://image.tmdb.org/t/p/w185/dUuZSGhGIv3Wd3rHt5ueFUMo2ia.jpg"},{"name":"Adnan Koç","avatar":"https://image.tmdb.org/t/p/w185/pfdCNkfcRAauJRLT3s9N5imeb9j.jpg"},{"name":"Dilara Büyükbayraktar","avatar":"https://image.tmdb.org/t/p/w185/m7Pu1nFVzHVHcJmYORv7PxGTrOw.jpg"},{"name":"Fatih Murat Teke","avatar":"https://image.tmdb.org/t/p/w185/bTUTBAvnUKZuAwqv2waO2I4CC3o.jpg"},{"name":"Sibel Aytan","avatar":"https://image.tmdb.org/t/p/w185/cmrwD4A3eK4wWgdkaGmLn8y7upj.jpg"},{"name":"Hüseyin Taş","avatar":"https://image.tmdb.org/t/p/w185/lkGMFZmt7UYNtTmJBprGagtsdya.jpg"},{"name":"Gönül Ürer","avatar":"https://image.tmdb.org/t/p/w185/3UGxHLPcgHZcZ2NDFbO5Eeuw9xI.jpg"},{"name":"Deniz Kiziroğlu","avatar":""},{"name":"Cemre Kiziroğlu","avatar":""},{"name":"Ergin Kılıkçıer","avatar":"https://image.tmdb.org/t/p/w185/h2axN5imyIfXF8bRQf0ssqbUzCe.jpg"}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Siccin 6","Siccîn 6"]', '{"id":"615982","type":"movie","vote_average":5.3,"vote_count":52,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/vKuwZeAwJZ9NoZJ9pWTcBRbnUYe.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt10425640","vote_average":5}', 
  1789378914557, '2026-09-08T08:41:29.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-6', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-6', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-6', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'loi-nguyen-sijjin-6';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('loi-nguyen-sijjin-6', 'Lời Nguyền Sijjin 6', 'Sijjin 6', 'lời nguyền sijjin 6 sijjin 6 merve ateş adnan koç dilara büyükbayraktar fatih murat teke sibel aytan hüseyin taş gönül ürer deniz kiziroğlu cemre kiziroğlu ergin kılıkçıer', '');
INSERT OR REPLACE INTO movies (
  slug, name, origin_name, thumb_url, poster_url, description, 
  episode_current, episode_total, type, status, view, year, 
  lang, quality, country_name, chieurap, actor_json, category_json, 
  alternative_names_json, tmdb_json, imdb_json, last_updated, modified
) VALUES (
  'loi-nguyen-sijjin-5', 'Lời Nguyền Sijjin 5', 'Sijjin 5', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-5-thumb.webp', 'https://phimimg.com/uploads/movies/20260908/loi-nguyen-sijjin-5-poster.webp', '<p>Hale thu hút sự chú ý của mọi người bởi ngoại hình khác biệt cùng những hành vi kỳ quặc. Cô sống trong một ngôi nhà cổ kính nhưng rùng rợn tại Nevşehir cùng với mẹ, người bà bị trầm cảm và cô dì Azra. Bố của Hale đã mất tích bí ẩn trước khi cô ra đời và không bao giờ xuất hiện trở lại. Một đêm nọ, Hale gặp phải cơn ác mộng kinh hoàng: người bố mà cô chưa từng gặp mặt trong đời đang vẫy gọi, mời cô bước vào một căn nhà cổ xưa vô cùng quái dị.</p>', 
  'Full', 1, 'single', 'completed', 69, 2018, 
  'Vietsub', 'FHD', 'Thổ Nhĩ Kỳ', 0, 
  '[{"name":"Rüya Önal","avatar":"https://image.tmdb.org/t/p/w185/pYj863oxKnroGTgFdi1rtxXFOlj.jpg"},{"name":"Merve Ateş","avatar":"https://image.tmdb.org/t/p/w185/dUuZSGhGIv3Wd3rHt5ueFUMo2ia.jpg"},{"name":"Özgür Hacier","avatar":""},{"name":"Ece Köroğlu","avatar":""},{"name":"Ece Baykal","avatar":"https://image.tmdb.org/t/p/w185/ngZMSZuUYzK6Ls18yN4nUxivAnu.jpg"},{"name":"Pınar Gülkapan","avatar":""},{"name":"Tuncay Çağıl","avatar":""},{"name":"Aslın Su Divrik","avatar":""},{"name":"Selim Aydın","avatar":""}]', '[{"id":"4db8d7d4b9873981e3eeb76d02997d58","name":"Kinh Dị","slug":"kinh-di"},{"id":"37a7b38b6184a5ebd3c43015aa20709d","name":"Chính Kịch","slug":"chinh-kich"},{"id":"a7b065b92ad356387ef2e075dee66529","name":"Tâm Lý","slug":"tam-ly"}]', 
  '["Siccin 5","西辛5","Siccîn 5"]', '{"id":"546507","type":"movie","vote_average":5.6,"vote_count":70,"logo_url":null,"backdrop_url":"https://image.tmdb.org/t/p/original/2pRYrHs1l6Miqaj85AZcfP6i1MY.jpg","poster_url":null,"aspect_ratio":null}', '{"id":"tt8777022","vote_average":5}', 
  1789378914556, '2026-09-08T08:40:27.000Z'
);
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-5', 'kinh-di');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-5', 'chinh-kich');
INSERT OR IGNORE INTO movie_categories (movie_slug, category_slug) VALUES ('loi-nguyen-sijjin-5', 'tam-ly');
DELETE FROM movies_fts WHERE slug = 'loi-nguyen-sijjin-5';
INSERT INTO movies_fts (slug, name, origin_name, actors, alternative_names) VALUES ('loi-nguyen-sijjin-5', 'Lời Nguyền Sijjin 5', 'Sijjin 5', 'lời nguyền sijjin 5 sijjin 5 rüya önal merve ateş özgür hacier ece köroğlu ece baykal pınar gülkapan tuncay çağıl aslın su divrik selim aydın', '');
