-- Find most costly restaurant (avg price/dish)
SELECT t2.r_name,sum(price)/count(*) AS 'avgprice' FROM menu t1
JOIN restaurants t2
on t1.r_id=t2.r_id
GROUP BY t2.r_id
ORDER BY avgprice DESC