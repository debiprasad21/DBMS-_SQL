-- find the highest rated movie of each genre votes cutoff 25000

SELECT * FROM movies where (genre,score) IN (
SELECT genre,MAX(score) FROM movies WHERE votes> 25000
GROUP BY genre
)



