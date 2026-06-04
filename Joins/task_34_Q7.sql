-- List all customers who have made more than 10 purchases.
SELECT t1.FirstName,t1.LastName,count(t2.CustomerID) AS 'noo' FROM cx.customers t1
JOIN cx.sales1 t2
ON t1.CustomerID=t2.CustomerID
GROUP BY t2.CustomerID,t1.FirstName,t1.LastName
 HAVING `noo` >2 ORDER By 'no of orders' DESC