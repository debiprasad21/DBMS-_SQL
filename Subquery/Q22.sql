-- Display the names of all athletes who have won medals in more than one sport in the same year.

WITH won AS (
SELECT name,year from athlete_events WHERE medal IN ('gold' ,'silver','bronze')
group by Name,Year HAVING count(distinct sport)>1 )

SELECT DISTINCT(name), sport,year FROM athlete_events where (name,year) IN (SELECT * FROM won)
