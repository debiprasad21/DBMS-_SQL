-- Show order details of a particular customer in a given range

SELECT t1.order_id,t3.f_name,date FROM  orders t1
JOIN order_details t2
on t1.order_id=t2.order_id
JOIN food t3
ON t3.f_id=t2.f_id
WHERE t1.user_id =1 AND date BETWEEN '2022-05-15' AND '2022-06-15'   