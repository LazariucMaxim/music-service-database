INSERT INTO  genres (id, name)
VALUES (1,'Alternativ'),
	   (2, 'Pop music'),
	   (3, 'Rock');

INSERT INTO  perfomers (id, name)
VALUES (1, 'Radiohead'),
	   (2, 'Coldplay'),
	   (3, 'Novo Amor'),
	   (4, 'Conan Gray'),
	   (5, 'The Neighbourhood'),
	   (6, 'The Beatles');
	  

INSERT INTO genres_performers  (genre_id, perfomer_id)
VALUES  (1, 1),
		(1, 3),
		(1, 5),
		(2, 2),
		(2, 4),
		(3, 6);

INSERT INTO albums (id, name, year_release)
VALUES (1, 'Pablo Honey', 1993),
	   (2, 'Parachutes', 2000),
	   (3, 'Bathing Beach', 2017),
	   (4, 'Kid Krow', 2020),
	   (5, 'I Love You', 2013),
	   (6, 'Live From Las Vegas!', 2007);

INSERT INTO perfomers_albums (perfomer_id, album_id)
VALUES  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6);

INSERT INTO tracks (id, name, duration, album_id)
VALUES (1, 'Creep', 237, 1),
	   (2, 'Yellow', 273, 2),
	   (3, 'Anchor', 256, 3),
	   (4, 'Heather', 206, 4),
	   (5, 'Sweater Weather', 253, 5),
	   (6, 'Got to Get You Into My Life', 150, 6);

INSERT INTO collections (id, name, year_release)
VALUES (1, 'Best albums of the 20th century', 2000),
	   (2, 'Best albums of the 21th century', 2023),
	   (3, 'Best songs in the alternative genre', 2018),
	   (4, 'Best modern albums', 2021);

INSERT INTO tracks_collections (track_id, collection_id)
VALUES  (1, 1),
		(2, 2),
		(5, 2),
		(6, 2),
		(1, 3),
		(3, 3),
		(5, 3),
		(4, 4);
		