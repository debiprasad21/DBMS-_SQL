SELECT first_name,teacher as "HOD" FROM sql_cx.students t1
JOIN sql_cx.class t2
ON t1.class_id=t2.class_id AND t1.enrollment_year=t2.class_year 