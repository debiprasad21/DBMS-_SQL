-- What is the difference in the average claim amount between patients who are smokers and patients who are non-smokers, and have the same BMI and number of children?

SELECT
    t1.bmi,
    t1.children,
    AVG(t1.claim) - AVG(t2.claim) AS diff
FROM insurance_data t1
JOIN insurance_data t2
    ON t1.bmi = t2.bmi
   AND t1.children = t2.children
WHERE t1.smoker = 'yes'
  AND t2.smoker = 'no'
GROUP BY t1.bmi, t1.children
ORDER BY t1.bmi, t1.children;