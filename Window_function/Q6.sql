-- find the top 2 customers paying most amount in each month

SELECT name,t.position,t.mm,t.total FROM (SELECT monthname(date) as 'mm',user_id,SUM(amount) AS 'total',
RANK() OVER(PARTITION BY monthname(date) ORDER BY sum(amount) DESC) AS 'position'
 FROM orders GROUP BY monthname(date),user_id ORDER BY monthname(date) DESC) t JOIN 
 users t2 
 ON t.user_id =t2.user_id
 WHERE t.position<3
 ORDER BY mm DESC 
 