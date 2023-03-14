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
WHERE name LIKE '%My%';

SELECT name FROM track
WHERE name LIKE '%Мой%';