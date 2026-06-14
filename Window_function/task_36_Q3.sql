-- Problem 3: What is the highest and lowest claimed amount by patients in each region?

SELECT region,FV,LV FROM (SELECT *,
ROW_NUMber () OVER(partition by region) AS 'rank',
MAX(claim) OVER(partition by region ) AS 'FV',
MIN(claim) OVER (partition by region) AS 'LV'
FROM insurance_data )t WHERE t.rank=1