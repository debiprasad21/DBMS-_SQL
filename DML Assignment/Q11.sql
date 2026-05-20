-- Q11) Write a SQL query to delete all records for patients who are smokers and have no children.
DELETE FROM campusx.insurance
WHERE smoker='yes' AND children=0;

SELECT * FROM campusx.insurance WHERE smoker='yes' AND children=0