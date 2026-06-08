-- Delete customers who have never ordered 

DELETE FROM users wheRE user_id not in 
(
SELECT DISTINCT(user_id) from orders
)