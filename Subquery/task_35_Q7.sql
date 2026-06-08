-- How many patients have claimed more than the average claim amount for patients who are smokers and have at least one child, and belong to the southeast region?

SELECT COunt(claim) FROM insurance_data WHERE claim> (
select AVG(claim) from insurance_data WHERE region='southeast' AND smoker='yes' AND children>=1 )