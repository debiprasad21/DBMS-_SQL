-- What is the average claim amount for non-smoking female patients who are diabetic?
SELECT AVG(claim) FROM campusx.insurance WHERE gender='female' AND smoker='no' AND diabetic='yes'