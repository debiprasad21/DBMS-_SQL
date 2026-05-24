-- find the avg rating of smartphone brands which have more than 20 Phones

SELECT brand_name,AVG(rating) AS 'avgrating' ,COUNT(*) AS'count'
FROM campusx.smartphones 
group by brand_name HAVING count>20 
ORDER BY avgrating DESC