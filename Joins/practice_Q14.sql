-- most profitable vertical
SELECT vertical,sum(t2.profit) as 'net profit' FROM sql_cx.category t1
JOIN sql_cx.order_details t2
ON t1.category_id=t2.category_id 
GROUP BY vertical ORDER BY sum(profit) DESC LIMIT 1