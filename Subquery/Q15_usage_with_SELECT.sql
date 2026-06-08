-- find the movie names,genre,score,avg(score) of genre



SELECT name,genre,score, (SELECT AVG(score) FROM movies m2 where m1.genre= m2.genre) FROM movies m1