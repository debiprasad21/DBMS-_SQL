-- How much virat scored after  10th,20th and 30th match

SELECT matchno,career_run FROM (SELECT CONCAT('match-',ROW_number() Over(order by id)) AS 'matchno', SUM(batsman_run) AS 'run_scored',
sum(SUM(batsman_run)) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'career_run'
 FROM IPL where batter= 'V kohli' 
 GROUP BY ID)t where t.matchno = 'match-10' or t.matchno = 'match-20' or t.matchno = 'match-30'