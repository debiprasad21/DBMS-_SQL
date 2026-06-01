SELECT t1.order_id,sum(t1.profit) FROM sql_cx.order_details t1
JOIN sql_cx.orders t2
ON t1.order_id=t2.order_id 
GROUP BY t1.order_id HAVING sum(t1.profit)>0 