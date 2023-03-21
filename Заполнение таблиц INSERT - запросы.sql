--Заполнение таблицы жанры
INSERT INTO genre(name) VALUES
	('Rep'),
	('K-pop'),
	('Rock'),
	('Edm'),
	('classical music');

--Заполнение таблицы артист
INSERT INTO artist(name) VALUES
	('Eгор крид'),
	('EMINEM'),
	('BLACKPINK'),
	('EXO'),
	('Skrillex'),
	('Marshmello'),
	('Skillet'),
	('Bring Me The Horizon'),
	('Mozart'),

--Заполнение таблицы альбом
INSERT INTO album(name, year_of_issue) VALUES
	('PU$$Y BOY', 2021),
	('Kamikaze', 2018),
	('BORN PINK', 2022),
	('LOVE SHOT – The 5th Album Repackage', 2018),
 	('Bangarang', 2011),
 	('Joytime II', 2018),
	('Comatose', 2006),
	('Sempiternal (Expanded Edition)', 2013),
	('Моцарт. Колыбельная песня - классическая музыка', 2013),

--Заполнение таблицы артист-жанр
INSERT INTO artist_genre(genre_id, artist_id) VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(4, 5),
	(4, 6),
	(3, 7),
	(3, 8),
	(5, 9),
	(4, 1),
	(5, 7),
	(3, 5);

--Заполнение таблицы артист-альбом
INSERT INTO artist_album(artist_id, albun_id) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9);

--Заполнение таблицы трек
INSERT INTO track(name, duration, album_id)  VALUES
	('PU$$Y BOY', 178, 1),
	('ТЕЛЕФОН', 126, 1),
	('Fall',263, 2),
	('Venom',270, 2),
	('Pink Venom',187, 3),
	('Shut Down', 176, 3),
	('Love Shot',210, 4),
	('Wait',249, 4),
	('Bangarang',219, 5),
	('Kyoto',201, 5),
	('Stars',210, 6),
	('Together',228, 6),
	('Comatose',231, 7),
	('Falling Inside the Black',211 , 7),
	('Can You Feel My Heart',249 , 8),
	('Sleepwalking',237 , 8),
	('Oh My Darling Clementine',99 , 9),
	('Спокойной Ночи',186 , 9),
	('Always', 234, 5),
	('Can You Feel',252 , 7),
	('shot', 170, 1),
	('BOY', 176, 4);

--Заполнение таблицы сборник
INSERT INTO compilation(name, year_of_issue) VALUES
	('Incendiary hits', 2015),
	('Music for relaxation', 2010),
	('Deep hit parade', 2020),
	('music for sex', 2016),
	('dance music', 2018 ),
	('turnip stars', 2012 ),
	('best rock', 2013 ),
	('workout music', 2021);

--Заполнение таблицы сборнике музыки
INSERT INTO Мusic_collection(track_id, compilation_id) VALUES
	(5, 1),
	(10, 1),
	(2, 2),
	(2, 3),
	(16, 3),
	(18, 4),
	(17, 4),
	(13, 5),
	(10, 6),
	(2, 6),
	(4, 7),
	(7, 7),
	(5, 8);

--SELECT Запрос для просмота таблицы
--SELECT * FROM Таблицу

--Удаление таблицы по айди
--DELETE FROM artist_album 
--WHERE id = 10

-- Изменения в таблицы
--UPDATE artist_genre
--SET year_of_issue = 2020
--WHERE id = 2;

