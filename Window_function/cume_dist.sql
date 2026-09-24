-- find out the students who scored more than 90 percentile
SELECT * FROM (
SELECT *,cume_dist() OVER(order by marks) AS 'ROUGH_PERCENTILE' FROM marks)t WHERE t.ROUGH_PERCENTILE>0.90