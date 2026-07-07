-- find the cumulative avg of suresh raina after each match 

SELECT * FROM (SELECT concat('match-',ROW_NUMBER() OVER(order by id)) AS 'matchno',
SUM(batsman_run) as 'runs_scored',
SUM(SUM(batsman_run)) OVER w AS 'career_run',
AVG(SUM(batsman_run)) OVER w AS 'AVG'
FROM ipl 
where batter='V Kohli'
GROUP BY id 
window W AS (order by id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW))t