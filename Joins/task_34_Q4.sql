-- Find sales man who sold most no of products.
SELECT t1.EmployeeID, t1.FirstName, t1.LastName, SUM(t2.Quantity) AS num_sold
FROM cx.employees t1
JOIN cx.sales1 t2
ON t1.EmployeeID = t2.SalesPersonID
GROUP BY t1.EmployeeID, t1.FirstName, t1.LastName
ORDER BY num_sold DESC
LIMIT 5;