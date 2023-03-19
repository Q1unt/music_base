--Создание таблицы артисты
CREATE TABLE IF NOT EXISTS Artist(
	id SERIAL PRIMARY KEY,
	name VARCHAR (40) UNIQUE NOT NULL
);

--Создание таблицы жанры
CREATE TABLE IF NOT EXISTS Genre(
	id SERIAL PRIMARY KEY,
	name VARCHAR (50) UNIQUE NOT NULL
);

--Cоздание таблицы альбом
CREATE TABLE IF NOT EXISTS Album(
	id SERIAL PRIMARY KEY,
	name VARCHAR (50) UNIQUE NOT NULL,
	year_of_issue INTEGER CHECK (year_of_issue > 2000) NOT NULL
);

--Создание таблицы сборников
CREATE TABLE IF NOT EXISTS Compilation(
	id SERIAL PRIMARY KEY,
	name VARCHAR (50) UNIQUE NOT NULL,
	year_of_issue INTEGER CHECK (year_of_issue > 2000) NOT NULL
);

--Создание таблицы треков
--Связь один ко многим
CREATE TABLE IF NOT EXISTS Track(
	id SERIAL PRIMARY KEY,
	name VARCHAR (50) UNIQUE NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

--Создание таблицы артист-альбом
--Связь многие ко многим
CREATE TABLE IF NOT EXISTS Artist_Album(
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	albun_id INTEGER NOT NULL REFERENCES Album(id)
);

--Создание таблицы артист-жанр
--Связь многие ко многим
CREATE TABLE IF NOT EXISTS Artist_Genre(
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	artist_id INTEGER NOT NULL REFERENCES Artist(id)
);

--Создание таблицы музыкальная коллекция
--Связь многие ко многим
CREATE TABLE IF NOT EXISTS Мusic_collection(
	id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES Track(id),
	compilation_id INTEGER NOT NULL REFERENCES Compilation(id)
); 