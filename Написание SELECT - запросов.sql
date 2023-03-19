-- Название и год выхода альбомов, вышедших в 2018 году.
SELECT name, year_of_issue FROM album
WHERE year_of_issue = 2018;

-- Название и продолжительность самого длительного трека.
SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track)

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration FROM track
WHERE duration > 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name, year_of_issue FROM compilation
WHERE year_of_issue BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artist
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE name LIKE '%My%' OR name LIKE '%Мой%';


--Количество исполнителей в каждом жанре.
SELECT count(ag.genre_id), g.name AS name_genre FROM artist_genre ag
JOIN genre g ON ag.genre_id = g.id
GROUP BY g.name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(t.name), a.year_of_issue  FROM track t 
JOIN album a ON t.album_id = a.id
WHERE a.year_of_issue BETWEEN 2019 AND 2020
GROUP BY a.year_of_issue;

--Средняя продолжительность треков по каждому альбому.
SELECT a.year_of_issue, AVG(t.duration)  FROM track t
JOIN album a ON t.album_id = a.id
GROUP BY a.year_of_issue;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.name AS name_artist, a.year_of_issue AS year_of_issue FROM artist_album aa 
JOIN album a ON aa.albun_id = a.id
WHERE a.year_of_issue != 2020
GROUP BY a.name, a.year_of_issue;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.name AS name_compilation  FROM Мusic_collection mc
JOIN compilation c ON mc.compilation_id = c.id
JOIN track t ON mc.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN artist_album aa ON a.id = aa.id
JOIN artist a2 ON aa.artist_id = a2.id
WHERE a2.name = 'Bring Me The Horizon';

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT count(g.name), a2.name AS album FROM artist_genre ag 
JOIN artist a ON ag.artist_id = a.id 
JOIN genre g ON ag.genre_id = g.id
JOIN artist_album aa ON a.id = aa.id
JOIN album a2 ON aa.albun_id = a2.id
GROUP BY a2.name
HAVING count(g.name) > 1;

--Наименования треков, которые не входят в сборники.
SELECT t.name AS track, count(c.name) AS compilation FROM Мusic_collection mc
JOIN compilation c ON mc.compilation_id = c.id 
FULL JOIN track t ON mc.track_id = t.id
GROUP BY t.name
HAVING count(c.name) = 0;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT t.duration, a2.name  FROM track t 
JOIN album a ON t.album_id = a.id 
JOIN artist_album aa ON a.id = aa.id 
JOIN artist  a2 ON aa.albun_id = a2.id
WHERE duration = (SELECT MIN(duration) FROM track)
GROUP BY a2.name, t.duration

--Названия альбомов, содержащих наименьшее количество треков.
SELECT a2.name AS album, count(t.name) AS track FROM track t 
JOIN album a ON t.album_id = a.id 
JOIN artist_album aa ON a.id = aa.id 
JOIN album a2 ON aa.albun_id = a2.id
GROUP BY a2.name
ORDER BY count(t.name) asc;

