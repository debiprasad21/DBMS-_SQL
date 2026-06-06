-- find the movie with highest profit

SELECT * FROM movies WHERE (gross-budget) = (SELECT MAX(gross-budget) AS 'profit'  FROM movies)