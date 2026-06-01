SELECT category, SUM(profit) FROM sql_cx.category t1 
JOIN sql_cx.order_details t2
ON t1.category_id=t2.category_id
GROUP BY category HAVING sum(profit)>5000 ORDER BY SUM(profit) DESC 