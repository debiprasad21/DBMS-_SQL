-- find batsmen with centuries in ipl 

SELECT batter,SUM(batsman_run) AS 'score' , ID FROM campusx.ipl
GROUP BY batter,ID HAVING score>=100