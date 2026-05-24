-- Find Rohit Sharma performance agaiast all bowlers

SELECT bowler, SUM(batsman_run) as 'netrun' FROM campusx.ipl WHERE batter= 'RG Sharma' 
GROUP BY bowler ORDER BY netrun  DESC 