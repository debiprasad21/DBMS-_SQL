-- find the students who has higher marks than the avg of marks of their respective branch

SELECT * FROM (SELECT *,AVG(Marks) OVER(PARTITION BY branch) AS 'branch_avg' FROM marks )t WHERE t.marks>t.branch_avg;

-- Using correlated query

SELECT * FROM marks t1 where t1.marks> (SELECT AVG(marks) AS 'avg_marks' FROM marks t2 WHERE t1.branch=t2.branch)
