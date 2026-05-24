-- group smartphones by the brand and find the brand with the highest no of models that have both NFC and IR blaster

SELECT brand_name,count(*) AS 'both_yes' FROM campusx.smartphones  WHERE has_nfc='true' AND has_ir_blaster='True' GROUP BY brand_name ORDER BY both_yes DESC  LIMIT 1