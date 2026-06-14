-- find MOM revenue grooth from zomato
SELECT monthname(date),sum(amount) AS 'sumtot',
((sum(amount) - LAG(sum(amount)) OVER(order by MONTH(date)))/LAG(Sum(amount)) OVER(order by MONTH(date)))*100
 FROM orders GROUP BY MONTHNAME(date),month(date)
