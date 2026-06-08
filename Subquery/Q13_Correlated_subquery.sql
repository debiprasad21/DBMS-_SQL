-- find the favourite food of each customer
USE zomato;
WITH fav_food AS (SELECT t2.user_id,t1.name,t4.f_name,count(*) AS 'frequency' From users t1 
JOIN orders t2
ON t1.user_id=t2.user_id
JOIN order_details t3
ON t2.order_id=t3.order_id
JOIN food t4
ON t4.f_id=t3.f_id
GROUP BY t1.name,t2.user_id,t4.f_name )

SELECT * from fav_food m1 WHERE frequency =( SELECT MAX(frequency) FROM fav_food f1 where f1.user_id =m1.user_id)


