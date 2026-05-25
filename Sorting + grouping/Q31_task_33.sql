-- Problem -8: Best state in terms of low education cost (Tution Fees) in 'Public' type university.

SELECT state, AVG(Value)  FROM campusx.nces330_20 
WHERE Type LIKE '%Public%' AND Expense LIKE '%Tuition%'
GROUP BY state 
Order By AVG(Value) ASC LIMIT 1