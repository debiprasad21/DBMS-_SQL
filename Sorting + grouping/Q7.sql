-- group smartphones by brand and get the count ,avg price, max rating , avg screensize and avg battery capacity
SELECT brand_name,count(*) AS 'total_phones', 
AVG(price) AS 'avg price',
AVG (screen_size) AS 'avg screen_size',
AVG (battery_capacity) AS 'avg battery_capacity',
MAX(rating) AS 'maximum rating'
FROM campusx.smartphones
GROUP BY brand_name

