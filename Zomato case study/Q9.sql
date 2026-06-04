-- Find the restaurant with sales > x

SELECT r_name,SUM(amount) as 'sales'FROM orders t1
JOIN restaurants t2
ON t1.r_id= t2.r_id
GROUP BY t1.r_id 
HAVING sales > 1500

