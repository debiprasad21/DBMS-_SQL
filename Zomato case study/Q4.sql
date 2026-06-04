-- find no of orders placed by each customer
SELECT t1.user_id,count(*),t2.name  FROM orders t1 
JOIN  users t2
ON t1.user_id=t2.user_id
GROUP BY user_id 