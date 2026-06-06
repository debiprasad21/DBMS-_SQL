SELECT m.*
FROM movies m
JOIN (
    SELECT genre, MAX(score) AS max_score
    FROM movies
    WHERE votes >= 25000
    GROUP BY genre
) x
ON m.genre = x.genre
AND m.score = x.max_score;