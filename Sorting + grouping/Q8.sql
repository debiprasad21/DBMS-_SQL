-- group smartphones by whether they have NFC and get the avg price and rating 

SELECT has_nfc,
AVG(price) AS 'priceavg',
AVG(rating) AS 'ratingavg'
FROM campusx.smartphones GROUP BY has_nfc