-- Problem 9: 2nd Costliest state for Private education in year 2021. Consider, Tution and Room fee both.

SELECT state, AVG(Value) 
 FROM campusx.nces330_20 
WHERE Year =2021 AND type LIKE '%Private%'
GROUP BY state 
ORDER BY avg(value) DESC LIMIT 1,1
