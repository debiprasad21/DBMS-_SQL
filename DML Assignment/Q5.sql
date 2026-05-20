-- Q5)Total claim amount from male smoker.
SELECT SUM(claim) FROM campusx.insurance WHERE gender='male' AND smoker='yes'