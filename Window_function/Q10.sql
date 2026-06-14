-- find the branch toppers name, branch, marks 

SELECT name,branch,marks FROM (SELECT *,
first_value(name) over(partition by branch order by marks DESC) AS 'toppername',
first_value(marks) over(partition by branch order by marks DESC) AS 'topmark'
 FROM marks )t WHERE t.marks=t.topmark AND t.name=t.toppername