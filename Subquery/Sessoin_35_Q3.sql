-- find how many movies having a rating > the avg of all the movie ratings

SELECT COUNT(*) FROM movies WHERE score > (SELECT AVG(Score) FROM movies)