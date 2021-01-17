select GROUP_CONCAT(val SEPARATOR '&')
from (
    select @v1 := @v1+1 as val FROM
    information_schema.tables t1,
    information_schema.tables t2,
    (SELECT @v1:=1) tmp1
    limit 999
) tempNum
where not exists (
                    select NUMA 
                    from (
                        SELECT @nu:=@nu+1 as NUMA FROM
                        information_schema.tables t1,
                        information_schema.tables t2,
                        (SELECT @nu:=1) tmp1
                        LIMIT 999
                    ) ttNum
                    where NUMA < val and mod(val, NUMA) = 0
            )