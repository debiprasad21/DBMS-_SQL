-- NTH_VALUE
SELECT *,NTH_VALUE(name,3 ) OVER(partition by branch  order BY marks desc ROWS between unbounded preceding and unbounded following ) FROM s35.marks 