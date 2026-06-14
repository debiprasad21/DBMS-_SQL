-- Problem 5: What is the difference between the claimed amount of each patient and the first claimed amount of that patient?
SELECT t.claim-t.FV FROM (SELECT *, 
FIRST_VALUE(claim) OVER() AS 'FV'
FROM insurance_Data)t