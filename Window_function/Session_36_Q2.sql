-- find the min marks and max marks from the entire table using window function

SELECT * , MIN(marks) OVER() AS 'overall_avg',
MAX(marks) OVER()
FROM marks
ORDER BY student_id 