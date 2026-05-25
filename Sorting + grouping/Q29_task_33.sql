-- Problem 6: Display those power stations which have average 'Monitored Cap.(MW)' (display the values) between 1000 and 2000 and the number of occurance of the power stations 
-- (also display these values) are greater than 10.
-- Also sort the result in ascending order.
SELECT `power station`,
AVG (`Monitored Cap.(MW)`) AS 'avgmw',
count(*) AS 'frequency'
FROM campusx.powergeneration 
GROUP BY `power station` HAVING (avgmw BETWEEN 1000 AND 2000)  AND count(*)>10
ORDER BY avgmw ASC
