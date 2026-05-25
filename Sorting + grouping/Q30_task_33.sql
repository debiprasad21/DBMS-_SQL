-- -- Problem 7:Display top 10 lowest "value" State names of which the Year either belong to 2013 or 2017 or 2021 and type is 'Public In-State'. 
-- Also the number of occurance should be between 20 to 35. Display the average value upto 2 decimal places, state names and the occurance of the states.

SELECT state, ROUND(AVG(value),2) AS 'valueavg',count(*)
FROM campusx.nces330_20 
WHERE Type='Public In-State' AND year IN (2013,2017,2021)
GROUP BY (State) 
HAVING count(*) BETWEEN 20 AND 35
ORDER BY valueavg ASC LIMIT 10