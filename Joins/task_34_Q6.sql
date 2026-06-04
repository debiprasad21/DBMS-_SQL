-- Sales man who has generated most revenue. Show top 5.
SELECT
    t2.FirstName,
    t2.LastName,
    SUM(t1.Quantity * t3.Price) AS 'revenue'
FROM cx.sales1 t1
JOIN cx.employees t2
    ON t1.SalesPersonID = t2.EmployeeID
JOIN cx.products t3
    ON t1.ProductID = t3.ProductID
GROUP BY
    t2.EmployeeID,
    t2.FirstName,
    t2.LastName
ORDER BY revenue DESC
LIMIT 5;