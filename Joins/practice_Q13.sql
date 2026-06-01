-- Find the customer who has placed maximum no of orders
SELECT name, count(*) FROM sql_cx.users t1
JOIN sql_cx.orders t2
ON t1.user_id=t2.user_id
GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1