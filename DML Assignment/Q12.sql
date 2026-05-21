-- Avg battery capacity and avg primary camera resolution for all smartphones with price greather than or equal to 100000.

SELECT AVG(battery_capacity),
AVG(primary_camera_rear)
FROM campusx.smartphones WHERE price>=100000