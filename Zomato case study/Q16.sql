-- FInd min and max order value for all the customers
SELECT  MIN(amount),MAX(amount),t2.user_id FROM orders t1
JOIN users t2 
ON t1.user_id=t2.user_id
GROUP BY user_id
