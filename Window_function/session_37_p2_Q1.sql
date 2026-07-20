-- FInd the highest item sold and its % to the revenue 

SELECT f_name,(categorytotal/SUM(categorytotal) over()) *100 AS '% total'
 FROM (SELECT t3.f_name,SUM(amount) as 'categorytotal' FROM orders t1 JOIN
order_details t2 on t1.order_id=t2.order_id 
join food t3 on t2.f_id=t3.f_id
WHERE r_id=1 GROUP by f_name )t