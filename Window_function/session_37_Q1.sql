-- find top 5 batsmen from each team
SELECT * FROM (SELECT battingteam,batter,SUM(batsman_run) as 'totalrun',
DENSE_RANK() OVER(partition by battingteam order by SUM(batsman_run) DESC) AS 'rank'
FROM IPl GROUP BY battingteam,batter) t WHERE t.rank <=5 ORDER BY t.battingteam,t.rank