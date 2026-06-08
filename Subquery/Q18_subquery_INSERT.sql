-- create a loyal_customer table and populate loyal customers who has ordered food more than 3 times 

-- CREATE table zomato.loyal_customers (user_id INTEGER ,name VARCHAR(255)  , money integer );

INSERT INTO loyal_customers (user_id,name) 
SELECT t1.user_id , t2.name FROM orders  t1
JOIN users t2 ON 
t1.user_id=t2.user_id
GROUP BY t1.user_id,t2.name
HAVING count(*) >=3