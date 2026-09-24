-- find the median of marks of all the students.
SELECT *,PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY marks) OVER() AS 'median marks'
FROM s35.marks