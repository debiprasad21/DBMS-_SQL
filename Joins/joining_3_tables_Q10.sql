SELECT *  FROM sql_cx.order_details t1 
JOIN sql_cx.orders t2
ON t1.order_id=t2.order_id
JOIN sql_cx.users t3
ON t2.user_id=t3.user_id 