-- month by month revenue for a particular restaurant
SELECT MONTHNAME(DATE(date)), SUM(amount)
FROM orders t1
JOIN restaurants t2
ON t1.r_id=t2.r_id
WHERE r_name= 'kfc'
GROUP BY MONTHNAME(DATE(date)) 