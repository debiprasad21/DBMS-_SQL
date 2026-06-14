--  For each patient, calculate the difference in claim amount between the patient and the patient with the highest claim amount among patients with the smoker status,within the same region. 
-- Return the result in descending order difference.

SELECT *,
MAX(claim) OVER(partition by region,smoker) - claim AS 'diff'
 FROM insurance_data
 ORDER BY diff DESC