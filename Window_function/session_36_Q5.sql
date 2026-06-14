-- ROW_NUMBER() Assign a new rollno to each student as branch_name + row no
SELECT *, CONCAT(branch,'-', row_number() OVER(partition by branch ORDER BY marks DESC))

FROM marks 