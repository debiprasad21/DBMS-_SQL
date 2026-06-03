-- Sales man name who has most no of unique customer.
SELECT SalesPersonID,FirstName,LastName,count(distinct(CustomerID)) as 'MUC' FROM cx.sales1 t1 
JOIN cx.employees t2
ON t1.SalesPersonID=t2.EmployeeID
GROUP BY  t1.SalesPersonID ,t2.FirstName,t2.LastName 
ORDER BY MUC DESC LIMIT 1