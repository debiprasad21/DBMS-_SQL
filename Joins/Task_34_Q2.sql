-- Find out highest CL value for 2020 for every region. Also sort the result in descending order. Also display the CL values in descending order.
SELECT region,MAX(CL) FROM cx.country_cl t1
LEFT JOIN cx.country_cd t2
ON t1.Country=t2.Country
WHERE t1.Edition=2020
GROUP BY t2.region ORDER BY MAX(CL) DESC 
