-- Q4) Find no of unique patients who are not from southwest region.
SELECT COUNT(DISTINCT(PatientID))FROM campusx.insurance WHERE region NOT IN ('southwest')