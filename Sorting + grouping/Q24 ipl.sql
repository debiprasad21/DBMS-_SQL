-- find top 5 batsman with highest strike rate who have played more than 100 balls.

SELECT batter,SUM(batsman_run) as 'netrun',
count(batsman_run) as'balls',
ROUND((SUM(batsman_run)/count(batsman_run))*100,2) as 'Strikerate'
from campusx.ipl  GROUP BY batter HAVING count(batsman_run)>100  ORDER BY strikerate DESC LIMIT 5