-- find the avg rating od all restaurants
SELECT r_name,(SeLECT AVg(restaurant_rating) FROM orders m2 WHERE m1.r_id=m2.r_id) AS 'avgrating' FROM restaurants m1;

-- ALternative query using FROM
SELECT r_name,avgrating FROM

(SELECT r_id,AVG(restaurant_rating) as 'avgrating' FROM orders GROUP BY r_id  ) t1
JOIN restaurants t2
ON t1.r_id=t2.r_id