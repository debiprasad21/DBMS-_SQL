-- sort the phones with maximum toal no of cameras including front and rear.

SELECT model,num_front_cameras + num_rear_cameras AS 'total_cameras' FROM campusx.smartphones 
ORDER BY total_cameras DESC