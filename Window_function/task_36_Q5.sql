--  For each patient, calculate the difference between their claimed amount and the average claimed amount of patients with the same number of children.

SELECT *,AVG(claim) OVER(partition by children) AS 'avg1',
claim-avg(claim) OVER(partition by children) 
FROM insurance_data
