-- Problem 3: Find out the lowest 10th to 30th light sleep percentage records where deep sleep percentage values are between 25 to 45. 
-- Display age, light sleep percentage and deep sleep percentage columns only.

SELECT age,`light sleep percentage`,`Deep sleep percentage`FROM campusx.sleep_efficiency
WHERE `Deep sleep percentage` BETWEEN 25 AND 45 ORDER BY `Light sleep percentage` ASC LIMIT 10,20
