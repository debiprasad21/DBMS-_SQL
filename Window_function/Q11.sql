-- LEAD() / LAG()

SELECT * , LAG(marks) OVER(partition by branch ORDER BY student_id),
LAG(marks) OVER(partition by branch ORDER BY student_id)
FROM marks 