-- most profitable state
SELECT state,sum(profit) AS 'net profit' FROM sql_cx.orders t1
LEFT JOIN sql_cx.users t2
ON t1.user_id=t2.user_id
JOIN sql_cx.order_details t3
ON t3.order_id=t1.order_id
GROUP BY state ORDER BY SUM(t3.profit) DESC LIMIT 1
