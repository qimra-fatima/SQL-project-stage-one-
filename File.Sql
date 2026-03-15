CREATE TABLE movies
(Title TEXT,
Genre TEXT,
Year INTEGER,
Rating REAL);
INSERT INTO movies (Title, genre, year, rating) VALUES ('it', 'horror',2017, 7.3);
INSERT INTO movies (Title, genre, year, rating) VALUES ('american Psycho','horror',2000, 7.6);
INSERT INTO movies (Title, genre, year, rating) VALUES ('pride and prejudice', 'romance', 2005, 7.8);
INSERT INTO movies (Title, genre, year, rating) VALUES ('the shawshank redemption', 'crime', 1994, 9.3);
INSERT INTO movies (Title, genre, year, rating) VALUES ('the godfather', 'crime', 1972, 9.2);
INSERT INTO movies (Title, genre, year, rating) VALUES ('Persuasion', 'romance', 2022, 5.8);
INSERT INTO movies (Title, genre, year, rating) VALUES ('Moana', 'adventure', 2016, 7.6);
INSERT INTO movies (Title, genre, year, rating) VALUES ('moana 2', 'adventure', 2024, 6.3);
INSERT INTO movies (Title, genre, year, rating) VALUES ('The donkey king', 'comedy', 2018, 6.2);
INSERT INTO movies (Title, genre, year, rating) VALUES ('Titanic', 'romance', 1997, 7.8);
INSERT INTO movies (Title, genre, year, rating) VALUES ('inception', 'sci-fi', 2010, 8.8);
SELECT *
FROM movies
ORDER BY title ASC;