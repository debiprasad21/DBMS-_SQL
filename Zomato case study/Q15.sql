-- find all the pure veg restaurants 
SELECT t3.r_name FROM menu t1
JOIN food t2 
ON t1.f_id =t2.f_id
JOIN restaurants t3
ON t3.r_id=t1.r_id
GROUP BY t1.r_id
HAVING min(type)='veg' and max(type) ='veg'