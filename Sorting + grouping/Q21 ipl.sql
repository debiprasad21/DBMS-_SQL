-- find the top 5 batsman in ipl

SELECT batter ,SUM(batsman_run) as 'netrun' FROM campusx.ipl 
GROUP BY batter ORDER BY netrun DESC LIMIT 5 