-- Q10) Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.

UPDATE campusx.insurance 
SET claim=5000 WHERE patientID=1234;

Select claim FROM campusx.insurance WHERE PatientID=1234
