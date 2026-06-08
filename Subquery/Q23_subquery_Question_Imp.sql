-- What is the average weight difference between male and female athletes in the Olympics who have won a medal in the same event?


SELECT A.event,AVG(A.weight)-AVG(B.weight) AS 'diff' FROM (SELECT * FROM athlete_events WHERE sex='M' AND Medal IN ('gold' ,'silver','bronze') AND Weight is not null  ) A JOIN
(SELECT * FROM athlete_events WHERE sex='F' AND Medal IN ('gold' ,'silver','bronze') AND Weight is not null ) B ON A.event=B.event AND A.sex!=B.sex
 GROUP BY A.event