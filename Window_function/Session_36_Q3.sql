-- find the students who has higher marks than the avg of marks of their respective branch

SELECT * FROM (SELECT *,AVG(Marks) OVER(PARTITION BY branch) AS 'branch_avg' FROM marks )t WHERE t.marks>t.branch_avg
