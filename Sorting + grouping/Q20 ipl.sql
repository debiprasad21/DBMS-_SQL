-- find 2nd highest 6 hitter in ipl
SELECT batter,count(*) as 'net6s' FROM campusx.ipl WHERE batsman_run=6 
GROUP BY batter ORDER BY net6s DESC LIMIT 1,1