-- List all salespeople who have made sales to more than 5 customers.
SELECT SalesPersonID, count(distinct(CustomerID)) FROM cx.sales1 t1
JOIN cx.employees t2
ON t1.SalesPersonID=t2.EmployeeID
GROUP BY SalesPersonID having count(distinct(CustomerID))>5