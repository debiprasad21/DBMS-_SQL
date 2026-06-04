-- Find customers who have never ordered
SELECT t1.user_id,name FROM users t1
LEFT JOIN orders t2
ON t1.user_id= t2.user_id
WHERE order_id is null