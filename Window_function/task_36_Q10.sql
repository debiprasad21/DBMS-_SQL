-- Problem 11: For each patient, find the rolling average of the last 2 claims.

SELECT * ,
AVG(claim) OVER(ROWS BETWEEN 2 preceding and 1 preceding )
FROM insurance_data