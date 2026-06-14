-- Problem 8: Calculate the difference between the claimed amount of each patient and the claimed amount of the patient who has the highest BMI in their region.

SELECT claim,HC,claim-HC FROM (SELECT *,
FIRST_VALUE (claim) OVER(partition by region ORDER BY BMI DESC) AS 'HC'
FROM insurance_data)t 