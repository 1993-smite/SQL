select TABLE_SCHEMA
     , TABLE_NAME
     , table_type
FROM INFORMATION_SCHEMA.TABLES
order by table_type;