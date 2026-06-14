-- Problem 10: For each patient, find the maximum BMI value among their next three records (ordered by age).
SELECT *,
MAX(bmi) OVER (order by age DESC ROWS between 1 preceding and 3 following)
 FROM insurance_data