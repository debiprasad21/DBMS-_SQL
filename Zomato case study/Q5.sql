-- find restaurants with most no of menu items
SELECT t1.r_name, count(t2.menu_id) AS 'nm' FROM restaurants t1
join menu t2
ON t1.r_id=t2.r_id
GROUP BY t1.r_id ORDER BY nm DESC 
