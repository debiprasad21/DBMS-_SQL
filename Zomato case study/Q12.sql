-- customers favorite food
SELECT Distinct(t3.user_id), t1.f_name ,count(*)FROM Food t1
join order_details t2
ON t1.f_id=t2.f_id
JOIN orders t3
ON t3.order_id=t2.order_id
JOIN users t4
ON t3.user_id=t4.user_id
GROUP BY t3.user_id,t1.f_id
ORDER BY count(*) DESC 


