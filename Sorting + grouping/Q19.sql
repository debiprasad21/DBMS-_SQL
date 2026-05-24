-- find the avg price of all the phone brands with avg rating >70 and num_phones more than 10 among all 5g enabled phones

SELECT brand_name , 
AVG(price) AS 'avgprice'FROM campusx.smartphones WHERE has_5g='true'  
GROUP BY brand_name HAVING AVG(rating)>70 AND count(*)>10 ORDER BY avgprice DESC 