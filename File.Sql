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

/*  Retrieve movie title and genre in the upper case, showing highest to lowest rating and letter 'a' in it.  Selects only 9 titles, leaving the first 2. */
SELECT Rating, UPPER (title) AS Title_upper, UPPER (genre) AS Genre_upper
FROM movies
WHERE title LIKE '%a%'
ORDER BY Rating  DESC
LIMIT 9 OFFSET 2;

SELECT *
FROM movies;

SELECT *,
CASE
WHEN Rating >= 7 THEN 'good'
ELSE 'Bad'
END AS Rating_category
FROM movies;

SELECT Genre, Year, AVG (rating) AS Avg_rating
FROM Movies
GROUP BY genre, year
HAVING AVG (rating) > 7 ;