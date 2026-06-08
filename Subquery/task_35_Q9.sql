-- How many patients have claimed more than the average claim amount for patients who have a BMI greater than the average BMI for patients who are diabetic, 
-- have at least one child, and are from the southwest region?

SELECT Count(*) FROM insurance_data WHERE claim>(SELECT AVG(Claim) FROM insurance_data WHERE bmi>(
SELECT AVG(BMI) FROM insurance_data WHERE diabetic='yes' and region='southwest' AND children>=1))