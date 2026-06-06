 -- find the most profitable movie of each year
SELECT * FROM movies where (year,gross-budget) in ( 
SELECT year, MAX(gross-budget) 
FROM movies 
GROUP BY year)