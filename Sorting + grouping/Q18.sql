-- find the top 3 brands with highest avg ram that have a refresh rate of atleast 90 hz and fast charging available and dont consider brands which have less tahn 10 phones

SELECT brand_name,AVG (ram_capacity) AS 'ramavg',count(*) AS 'count'
 FROM campusx.smartphones 
 WHERE refresh_rate>90 AND fast_charging_available=1
 GROUP BY brand_name HAVING count>10 ORDER BY ramavg DESC LIMIT 3