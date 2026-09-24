-- Show Percentage of total revenue by each suppliers
select s.SupplierId, sum(od.UnitPrice*od.Quantity) as Revenue, sum(od.UnitPrice*od.Quantity) /
sum(sum(od.UnitPrice*od.Quantity)) over() * 100 as PercentTotalRevenue
from nw_suppliers s join nw_products p on p.SupplierId=s.SupplierID
join nw_order_details od on p.ProductID=od.ProductID
group by s.SupplierId
order by Revenue desc;