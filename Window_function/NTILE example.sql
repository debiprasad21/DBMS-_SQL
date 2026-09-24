 -- NTILE 
 SELECT *,NTILE(3) over(order by marks DESC) AS 'bucket'
 FROM marks 
 
 