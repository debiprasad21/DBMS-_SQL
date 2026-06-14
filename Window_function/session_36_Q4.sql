-- RANK() / DENSE_RANK()
SELECT *, RANK() OVER(partition by branch order by marks DESC),
DENSE_RANK() OVER(partition by branch order by marks DESC)  
 FROM marks