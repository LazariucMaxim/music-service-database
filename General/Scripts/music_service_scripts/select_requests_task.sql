--Задание 2

SELECT name, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks); --Название и продолжительность самого длительного трека

SELECT name FROM tracks
WHERE duration >= 210; --Название треков, продолжительность которых не менее 3,5 минут

SELECT name FROM collections
WHERE year_release BETWEEN 2018  AND 2020; --Названия сборников, вышедших в период с 2018 по 2020 год включительно

SELECT name FROM perfomers
WHERE NOT(name LIKE '% %'); --Исполнители, чьё имя состоит из одного слова

SELECT name FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%Мой%' OR name LIKE '%my%' OR name LIKE '%My%'; --Название треков, которые содержат слово «мой» или «my»

--Задание 3

SELECT g.name, COUNT(gp.perfomer_id) count FROM genres g
RIGHT JOIN genres_performers gp ON g.id = gp.genre_id
GROUP BY g.name
ORDER BY count; --Количество исполнителей в каждом жанре

SELECT a.name, COUNT(t.name) count FROM  albums a
RIGHT JOIN tracks t ON a.id = t.album_id
WHERE a.year_release BETWEEN 2019 AND 2020
GROUP BY a.name; --Количество треков, вошедших в альбомы 2019–2020 годов

SELECT a.name, AVG(t.duration) d FROM albums a
RIGHT JOIN tracks t ON a.id = t.album_id
GROUP BY a.name; --Средняя продолжительность треков по каждому альбому.

SELECT p.name FROM perfomers p
RIGHT JOIN perfomers_albums pa ON p.id = pa.perfomer_id
RIGHT JOIN albums a ON pa.album_id = a.id
WHERE a.year_release != 2020
GROUP BY p.name;--Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT c.name FROM collections c
RIGHT JOIN tracks_collections tc ON c.id = tc.collection_id
RIGHT JOIN tracks t ON tc.track_id = t.id
RIGHT JOIN albums a ON t.album_id = a.id
RIGHT JOIN perfomers_albums pa ON a.id = pa.album_id
RIGHT JOIN perfomers p ON pa.perfomer_id = p.id
WHERE p.name = 'Radiohead'
GROUP BY c.name ; --Названия сборников, в которых присутствует Radiohead
