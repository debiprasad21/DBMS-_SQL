-- group smartphones by the extended memory available and get the avg price

SELECT extended_memory_available,
ROUND(AVG(price)) AS 'avgcost'
 FROM campusx.smartphones GROUP BY extended_memory_available