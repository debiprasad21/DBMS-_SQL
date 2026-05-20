-- Q3)Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
SELECT MIN(bloodpressure) AS 'MinBP',
MAX(bloodpressure) AS 'MaxBP' FROM campusx.insurance WHERE smoker='Yes'