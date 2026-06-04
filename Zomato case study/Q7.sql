-- find the food that is sold at the most number of restaurants
SELECT distinct(f_name),count(t1.f_id) FROM menu t1
JOIN food t2
ON t1.f_id=t2.f_id
GROUP BY r_id ORDER BY count(t1.f_id) DESC