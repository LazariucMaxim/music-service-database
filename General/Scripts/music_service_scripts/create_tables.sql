CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Perfomers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_Performers (
	genre_id INTEGER REFERENCES Genres(id),
	perfomer_id INTEGER REFERENCES Perfomers(id),
	CONSTRAINT gp PRIMARY KEY (genre_id, perfomer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Perfomers_Albums (
	perfomer_id INTEGER REFERENCES Perfomers(id),
	album_id INTEGER REFERENCES Albums(id),
	CONSTRAINT pa PRIMARY KEY (perfomer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks_Collections (
	track_id INTEGER REFERENCES Tracks(id),
	collection_id INTEGER REFERENCES Collections(id),
	CONSTRAINT tc PRIMARY KEY (track_id, collection_id)
);
