-- Q-5:Show All Products Year Wise report of totalQuantity sold, percentage change from last year.
select *, 100 *(Quantity - lag(Quantity) over(partition  by ProductId order by ProductId, Year))/lag(Quantity) over(partition  by ProductId order by ProductId, Year) PercentageChange
from (select p.ProductID, year(o.OrderDate) Year, sum( od.Quantity)  as 'Quantity'
from nw_orders o join nw_order_details od on od.OrderID = o.OrderID
join nw_products p on p.ProductID = od.ProductID
group by p.ProductID,year(o.OrderDate)
order by p.ProductID,year(o.OrderDate)) t