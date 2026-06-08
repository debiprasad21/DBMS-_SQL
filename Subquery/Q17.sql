-- find genres having avg scoe > avg score of all movies 


SELECT genre,AVG(Score) FROM movies GROUP BY genre HAVING AVG(Score) > (SELECT AVG(score) FROM movies)