-- Problem 1: What are the top 5 patients who claimed the highest insurance amounts?
SELECT *,
DENSE_RANK () OVER(ORDER BY claim DESC)
 FROM insurance_data LIMIT 5