--  Find top-5 most sold products.
SELECT t1.ProductID,t1.name ,SUM(Quantity) FROM cx.products t1
JOIN cx.sales1 t2
ON t1.ProductID = t2.ProductID
GROUP BY t1.ProductID,t1.name  ORDER BY SUM(Quantity) DESC LIMIT 5