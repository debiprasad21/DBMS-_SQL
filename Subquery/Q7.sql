
WITH top_directors AS (
SELECT director FROM s35.movies GROUP BY director ORDER BY SUM(gross) DESC LIMIT 3
)
SELECT * from movies where director IN (select * from top_directors)