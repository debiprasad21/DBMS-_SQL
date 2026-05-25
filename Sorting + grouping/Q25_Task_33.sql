-- Problem 1:Find out the average sleep duration of top 15 male candidates who's sleep duration are equal to 7.5 or greater than 7.5.


SELECT AVG(`Sleep duration`) 
FROM campusx.sleep_efficiency WHERE `Sleep duration` >=7.5 AND gender='male'
ORDER BY `Sleep duration` LIMIT 15
