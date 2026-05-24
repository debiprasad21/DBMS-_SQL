-- find top 5 most costly phone brands 
SELECT brand_name , AVG(price) AS 'cost'FROM campusx.smartphones GROUP BY brand_name ORDER BY cost DESC LIMIT 5