-- Average price of 5G and non 5g Phones.alter
SELECT has_5g ,AVG(price) AS 'costavg'
FROM campusx.smartphones group by has_5g