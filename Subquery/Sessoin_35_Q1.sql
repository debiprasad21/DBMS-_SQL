-- Find the movie with highest rating 
SELECT * FROM movies WHERE Score = (Select MAX(Score) FROM movies)