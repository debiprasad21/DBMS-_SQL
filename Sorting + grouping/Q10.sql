-- group smartphones by the brand and processor brand and get the count of models and the avg primary camera resolution (rear)

SELECT brand_name,processor_brand,count(*), AVG(primary_camera_rear) AS 'avg_camera_resolution' FROM campusx.smartphones GROUP BY brand_name, processor_brand ORDER BY brand_name ASC