--Заполнение таблицы жанры
INSERT INTO genre
	VALUES (1,'Rep');
INSERT INTO genre
	VALUES (2,'K-pop');
INSERT INTO genre
	VALUES (3,'Rock');
INSERT INTO genre
	VALUES (4, 'Edm');
INSERT INTO genre
	VALUES (5,'classical music');

--Заполнение таблицы артист
INSERT INTO artist
	VALUES (1,'Eгор крид');
INSERT INTO artist
	VALUES (2,'EMINEM');
INSERT INTO artist
	VALUES (3,'BLACKPINK');
INSERT INTO artist
	VALUES (4,'EXO');
INSERT INTO artist
	VALUES (5,'Skrillex');
INSERT INTO artist
	VALUES (6,'Marshmello');
INSERT INTO artist
	VALUES (7,'Skillet');
INSERT INTO artist
	VALUES (8,'Bring Me The Horizon');
INSERT INTO artist
	VALUES (9,'Mozart');

--Заполнение таблицы альбом
INSERT INTO album 
	VALUES (1,'PU$$Y BOY', 2021);
INSERT INTO album 
	VALUES (2,'Kamikaze', 2018);
INSERT INTO album 
	VALUES (3,'BORN PINK', 2022);
INSERT INTO album 
	VALUES (4,'LOVE SHOT – The 5th Album Repackage', 2018);
INSERT INTO album 
	VALUES (5,'Bangarang', 2011);
INSERT INTO album 
	VALUES (6,'Joytime II', 2018);
INSERT INTO album 
	VALUES (7,'Comatose', 2006);
INSERT INTO album 
	VALUES (8,'Sempiternal (Expanded Edition)', 2013);
INSERT INTO album 
	VALUES (9,'Моцарт. Колыбельная песня - классическая музыка', 2013);

--Заполнение таблицы артист-жанр
INSERT INTO artist_genre 
	VALUES (1, 1, 1);
INSERT INTO artist_genre
	VALUES (2, 1, 2);
INSERT INTO artist_genre
	VALUES (3, 2, 3);
INSERT INTO artist_genre
	VALUES (4, 2, 4);
INSERT INTO artist_genre
	VALUES (5, 4, 5);
INSERT INTO artist_genre
	VALUES (6, 4, 6);
INSERT INTO artist_genre
	VALUES (7, 3, 7);
INSERT INTO artist_genre
	VALUES (8, 3, 8);
INSERT INTO artist_genre
	VALUES (9, 5, 9);
INSERT INTO artist_genre
	VALUES (10, 4, 1);
INSERT INTO artist_genre
	VALUES (11, 5, 7);
INSERT INTO artist_genre
	VALUES (12, 4, 5);

--Заполнение таблицы артист-альбом
INSERT INTO artist_album 
	VALUES (1, 1, 1);
INSERT INTO artist_album 
	VALUES (2, 2, 2);
INSERT INTO artist_album 
	VALUES (3, 3, 3);
INSERT INTO artist_album 
	VALUES (4, 4, 4);
INSERT INTO artist_album 
	VALUES (5, 5, 5);
INSERT INTO artist_album 
	VALUES (6, 6, 6);
INSERT INTO artist_album 
	VALUES (7, 7, 7);
INSERT INTO artist_album 
	VALUES (8, 8, 8);
INSERT INTO artist_album 
	VALUES (9, 9, 9);

--Заполнение таблицы трек
INSERT INTO track  
	VALUES (1, 'PU$$Y BOY', 178, 1);
INSERT INTO track 
	VALUES (2, 'ТЕЛЕФОН', 126, 1);
INSERT INTO track 
	VALUES (3, 'Fall',263, 2);
INSERT INTO track 
	VALUES (4, 'Venom',270, 2);
INSERT INTO track 
	VALUES (5, 'Pink Venom',187, 3);
INSERT INTO track 
	VALUES (6, 'Shut Down', 176, 3);
INSERT INTO track 
	VALUES (7, 'Love Shot',210, 4);
INSERT INTO track  
	VALUES (8, 'Wait',249, 4);
INSERT INTO track 
	VALUES (9, 'Bangarang',219, 5);
INSERT INTO track 
	VALUES (10, 'Kyoto',201, 5);
INSERT INTO track
	VALUES (11, 'Stars',210, 6);
INSERT INTO track 
	VALUES (12, 'Together',228, 6);
INSERT INTO track 
	VALUES (13, 'Comatose',231, 7);
INSERT INTO track 
	VALUES (14, 'Falling Inside the Black',211 , 7);
INSERT INTO track 
	VALUES (15, 'Can You Feel My Heart',249 , 8);
INSERT INTO track
	VALUES (16, 'Sleepwalking',237 , 8);
INSERT INTO track
	VALUES (17, 'Oh My Darling Clementine',99 , 9);
INSERT INTO track
	VALUES (18, 'Спокойной Ночи',186 , 9);
INSERT INTO track
	VALUES (19, 'Together',228, 5);
INSERT INTO track
	VALUES (20, 'Can You Feel My Heart',249 , 7);
INSERT INTO track
	VALUES (21, 'Shut Down', 176, 1);
INSERT INTO track
	VALUES (22, 'PU$$Y BOY', 178, 4););

--Заполнение таблицы сборник
INSERT INTO compilation 
	VALUES (1,'Incendiary hits', 2015);
INSERT INTO compilation 
	VALUES (2,'Music for relaxation', 2010);
INSERT INTO compilation 
	VALUES (3,'Deep hit parade', 2020);
INSERT INTO compilation 
	VALUES (4,'music for sex', 2016);
INSERT INTO compilation 
	VALUES (5,'dance music', 2018 );
INSERT INTO compilation 
	VALUES (6,'turnip stars', 2012 );
INSERT INTO compilation 
	VALUES (7,'best rock', 2013 );
INSERT INTO compilation 
	VALUES (8,'workout music', 2021);

--Заполнение таблицы сборнике музыки
INSERT INTO Мusic_collection 
	VALUES (1, 5, 1);
INSERT INTO Мusic_collection 
	VALUES (2, 10, 1);
INSERT INTO Мusic_collection 
	VALUES (3, 2, 2);
INSERT INTO Мusic_collection 
	VALUES (4, 2, 3);
INSERT INTO Мusic_collection 
	VALUES (5, 16, 3);
INSERT INTO Мusic_collection 
	VALUES (6, 18, 4);
INSERT INTO Мusic_collection 
	VALUES (7, 17, 4);
INSERT INTO Мusic_collection 
	VALUES (8, 13, 5);
INSERT INTO Мusic_collection 
	VALUES (9, 10, 6);
INSERT INTO Мusic_collection 
	VALUES (10, 2, 6);
INSERT INTO Мusic_collection 
	VALUES (11, 4, 7);
INSERT INTO Мusic_collection 
	VALUES (12, 7, 7);
INSERT INTO Мusic_collection 
	VALUES (13, 5, 8);

--SELECT Запрос для просмота таблицы
--SELECT * FROM Таблицу

--Удаление таблицы по айди
--DELETE FROM track  
--WHERE id = 

-- Изменения в таблицы
--UPDATE album
--SET year_of_issue = 2020
--WHERE id = 2;

