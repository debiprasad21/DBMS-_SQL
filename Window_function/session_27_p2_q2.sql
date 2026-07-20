USE zomato;
SELECT YEAR(date),MONTHNAME(date),sum(views) AS 'current_views',
LAG(sum(views)) over( order by YEAR(date) ,MONTHNAME(date)),
(sum(views)-LAG(sum(views)) over( order by YEAR(date) ,MONTHNAME(date)))/ LAG(sum(views)) over( order by YEAR(date) ,MONTHNAME(date))*100 AS '% change'
FROM youtube GROUP BY YEAR(date) ,MONTHNAME(date)
ORDER BY YEAR(date) , MONTHNAME(date)