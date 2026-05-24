-- find all samsung phones 5g enabled and find the avg price for NFC and non NFC phones

SELECT
has_nfc,
AVG(price) AS 'costavg'
FROM campusx.smartphones WHERE brand_name='samsung' AND has_5g='true'  GROUP BY has_nfc 