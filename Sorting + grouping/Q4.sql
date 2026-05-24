-- find the phone with 2nd highest battery capacity
SELECT model, battery_capacity  FROM campusx.smartphones ORDER BY battery_capacity DESC LIMIT 1,1
