-- populate the money column in loyal_customers tablw with 10% app money (10% of total order values)

UPDATE loyal_customers m1 
SET money= (
SELECT SUM(amount)*0.1 
FROM orders m2  WHERE m1.user_id= m2.user_id)


