-- List all pairs of customers who have made purchases with the same salesperson. # (Data set issue_ Null Values)
Select concat(B.FirstName , ' ',B.LastName)AS 'FC_name',
concat(C.FirstName , ' ',C.LastName)AS 'SC_name',
concat(D.FirstName , ' ',D.LastName)AS 'SP_name'
 FROM (SELECT DISTINCT t1.CustomerID AS 'first_customer',
t2.CustomerID AS 'Second_customer',
t2.SalesPersonID 
 FROM cx.sales1 t1
JOIN cx.sales1 t2
ON t1.SalesPersonID=t2.SalesPersonID AND t1.CustomerID!=t2.CustomerID) A
JOIN cx.customers B
ON A.first_customer = B.CustomerID
LEFT JOIN cx.customers C
ON A.Second_customer= C.CustomerID
LEFT JOIN cx.employees D
ON A.salesPersonID= D.EmployeeID

