-- Q8)No of pateint belo 17 years of age having normal blood pressure as per below formula -
-- BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)

-- Note: Formula taken just for practice, don't take in real sense. 

SELECT COUNT(patientID) FROM campusx.insurance 
WHERE bloodpressure BETWEEN 80+(age*2) AND 100+(age*2) AND age<17