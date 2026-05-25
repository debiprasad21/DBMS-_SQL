-- Problem 2: Show avg deep sleep time for both gender. Round result at 2 decimal places. Note: sleep time and deep sleep percentage will give you, deep sleep time.

SELECT gender, ROUND(AVG(`Sleep duration`*(`Deep sleep percentage`/100)),2) AS 'avg deep sleep'FROM campusx.sleep_efficiency 
GROUP BY gender 
