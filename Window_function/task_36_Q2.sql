-- Problem 2: What is the average insurance claimed by patients based on the number of children they have?
SELECT * FROM (SELECT *,AVG(claim)
OVER(partition by children ORDER BY children ASC) AS 'avgamt',
ROW_NUMBER() OVER(partition by children order by children ASC) AS 'row_num'
 FROM insurance_data)t WHERE t.row_num=1