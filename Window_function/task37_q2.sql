-- Q-2: Show All products cumulative sum of units sold each month.
SELECT 
    p.ProductID,
    MONTH(o.OrderDate) AS 'Month',
    SUM(od.Quantity) AS 'QuantitySum',

    SUM(SUM(od.Quantity)) OVER (
        PARTITION BY p.ProductID
        ORDER BY MONTH(o.OrderDate)
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS QuantityCumSum

FROM nw_orders o
JOIN `nw_order_details` od 
    ON od.OrderID = o.OrderID
JOIN nw_products p 
    ON p.ProductID = od.ProductID

GROUP BY 
    p.ProductID,
    MONTH(o.OrderDate);