--создание таблицы артистов
CREATE TABLE IF NOT EXISTS Artist(
id SERIAL PRIMARY KEY,
name VARCHAR (40) NOT NULL
);
--создание таблица жарны
CREATE TABLE IF NOT EXISTS Genre(
id SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL
);
--создание таблицы альбом
CREATE TABLE IF NOT EXISTS Album(
id SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
year_of_issue INTEGER NOT NULL
);
-- создание таблицы сборник
CREATE TABLE IF NOT EXISTS Compilation(
id SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
year_of_issue INTEGER NOT NULL
);
-- создание таблицы трек
-- связь один ко многим
CREATE TABLE IF NOT EXISTS Track(
id SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
duration INTEGER NOT NULL,
album_id INTEGER NOT NULL REFERENCES Album(id)
);
-- создание таблиы артист-альбом
-- свзяь многие ко многим
CREATE TABLE IF NOT EXISTS Artist_Album(
id SERIAL PRIMARY KEY,
artist_id INTEGER NOT NULL REFERENCES Artist(id),
albun_id INTEGER NOT NULL REFERENCES Album(id)
);
-- создание таблицы артист-жанр
-- связь многие ко многим
CREATE TABLE IF NOT EXISTS Artist_Genre(
id SERIAL PRIMARY KEY,
genre_id INTEGER NOT NULL REFERENCES Genre(id),
artist_id INTEGER NOT NULL REFERENCES Artist(id)
);
-- создание таблицы сборник музыки
-- связь многие ко многим
CREATE TABLE IF NOT EXISTS Мusic_collection(
id SERIAL PRIMARY KEY,
track_id INTEGER NOT NULL REFERENCES Track(id),
compilation_id INTEGER NOT NULL REFERENCES Compilation(id)
);