-- find no of votes (remove null values) and avg rating for all restaurants
SELECT r_name,AVG(restaurant_rating) AS 'avgrtg'
,count(order_id) as 'nvotes'
 FROM orders t1
Join restaurants t2
ON t1.r_id=t2.r_id
WHERE restaurant_rating is not NULL
GROUP BY t2.r_id ORDER BY avgrtg DESC
