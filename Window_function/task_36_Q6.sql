-- Problem 7: Show the patient with the highest BMI in each region and their respective rank.
SELECT * FROM (SELECT *,
DENSE_RANK() OVER(partition by region ORDER BY BMI DESC) AS 'pole',
RANK() OVER(order by BMI DESC) AS 'rank1'
FROM insurance_data)t WHERE pole=1
