-- find all the movies that have a rating higher than the avg rating of movies in the same genre
SELECT * FROM movies m1 WHERE score > (SELECT AVG(score) FROM movies m2 where m2.genre = m1.genre)