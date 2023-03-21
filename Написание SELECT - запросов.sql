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
SELECT count(t.name) FROM track t 
JOIN album a ON t.album_id = a.id
WHERE a.year_of_issue BETWEEN 2019 AND 2020;


--Средняя продолжительность треков по каждому альбому.
SELECT a.year_of_issue, AVG(t.duration)  FROM track t
JOIN album a ON t.album_id = a.id
GROUP BY a.year_of_issue;


--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.name FROM artist a 
WHERE a.name NOT IN (
	SELECT a2.name FROM artist a2 
	JOIN artist_album aa ON a2.id = aa.id 
	JOIN album a3 ON aa.albun_id = a3.id
	WHERE a3.year_of_issue = 2020
);


--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.name AS name_compilation  FROM Мusic_collection mc
JOIN compilation c ON mc.compilation_id = c.id
JOIN track t ON mc.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN artist_album aa ON a.id = aa.id
JOIN artist a2 ON aa.artist_id = a2.id
WHERE a2.name = 'Bring Me The Horizon';


--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT a2.name AS album, count(ag.genre_id), ag.artist_id FROM artist_genre ag
JOIN artist a ON ag.artist_id = a.id
JOIN artist_album aa ON a.id = aa.id
JOIN album a2 ON aa.albun_id = a2.id
GROUP BY a2.name, ag.artist_id
HAVING count(ag.genre_id) > 1;



--Наименования треков, которые не входят в сборники.
SELECT t.name AS track FROM track t 
LEFT JOIN Мusic_collection mc ON t.id = mc.id 
WHERE mc.track_id IS NULL;


--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT t.duration, a2.name  FROM track t 
JOIN album a ON t.album_id = a.id 
JOIN artist_album aa ON a.id = aa.id 
JOIN artist  a2 ON aa.albun_id = a2.id
WHERE duration = (SELECT MIN(duration) FROM track)


--Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name, count(*) FROM track t
JOIN album a ON t.album_id = a.id
GROUP BY a.name
HAVING count(*) = (
	SELECT count(t2.name) FROM track t2
	JOIN album a2  ON t2.album_id  = a2.id
	GROUP BY a2.name
	ORDER BY count(t2.name)
	LIMIT 1
);


