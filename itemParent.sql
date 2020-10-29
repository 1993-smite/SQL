WITH RECURSIVE cte AS (
   SELECT id, fio, bossid, 1 AS level
   FROM   sotrudniki
   WHERE  id = 1

   UNION  ALL
   SELECT t.id, t.fio, t.bossid,  c.level + 1
   FROM   cte      c
   JOIN   sotrudniki t ON t.bossid = c.id
   )
SELECT *
FROM   cte
ORDER  BY level;