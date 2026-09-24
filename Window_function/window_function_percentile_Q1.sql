-- find the median of marks of all the students.
SELECT *,
PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY marks) OVER(partition by branch) AS 'median marks dicrete',
PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY marks) OVER(partition by branch) AS 'median marks continuous'
FROM s35.marks