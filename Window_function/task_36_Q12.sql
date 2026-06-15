-- Find the first claimed insurance value for male and female patients, within each region order the data by patient age in ascending order,
--  and only include patients who are non-diabetic and have a bmi value between 25 and 30.

SELECT region,gender,fc FROM (SELECT *,
first_value(claim) OVER(partition by gender,region ORDER BY age ASC) AS 'fc',
ROW_number() OVER(partition by gender,region ORDER BY age ASC) AS 'rn'
FROM insurance_data WHERE BMI BETWEEN 25 and 30 AND diabetic= 'no')t WHERE t.rn=1 ORDER BY region 