-- How many patients have claimed more than the average claim amount for patients who are not smokers and have a BMI greater than the average BMI for patients who have at least one child?

SELECT Count(*) FROM insurance_data WHERE claim >(
SELECT AVG(claim) FROM insurance_data WHERE smoker='No' AND BMI >

(
SELECT AVG(BMI) FROM insurance_data WHERE children>=1)
) 