-- Task 37 Q1 : Rank Employee in terms of revenue generation. Show employee id, first name, revenue, and rank
SELECT p.EmployeeId,p.FirstName,RANK() OVER(order by sum(r.UnitPrice*r.Quantity) DESC) AS 'rank',
sum(r.UnitPrice*r.Quantity) As 'revenue' 
FROM nw_employees p JOIN nw_orders q ON p.EmployeeID=q.EmployeeID JOIN nw_order_details r ON q.OrderID=r.OrderID 
GROUP BY p.EmployeeID,p.FirstName