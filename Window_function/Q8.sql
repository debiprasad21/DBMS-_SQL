-- LAST_VALUE
SELECT *,LAST_VALUE(name) OVER(partition by branch  order BY marks desc ROWS between unbounded preceding and unbounded following ) FROM s35.marks 