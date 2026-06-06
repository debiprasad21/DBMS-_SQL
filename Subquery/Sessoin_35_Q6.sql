-- find the users who never ordered 
SELECT * FROM users WHERE user_id NOT in (
SELECT DISTINCT(user_id) FROM orders)
