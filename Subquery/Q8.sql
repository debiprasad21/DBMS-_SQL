-- find all movies of all those acotrs whose filmography's avg rating >8.5(take 25000 votes as cutoff)

SELECT * FROM movies WHERE star IN (
SELECT star FROM movies 
WHERE votes >25000 
GROUP BY star HAVING avg(score)>8.5 )