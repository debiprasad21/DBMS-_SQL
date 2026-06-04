-- find restaurants with max revenue in a given month
SELECT DISTINCT(r_name), SUM(amount)
FROM orders t1
JOIN restaurants t2
ON t1.r_id=t2.r_id
WHERE MONTHNAME(DATE(date))= 'May'
GROUP BY t1.r_id ORDER BY SUM(amount) DESC LIMIT 1