SELECT *
FROM (SELECT rownum, view_name, dbms_metadata.get_ddl( 'VIEW', view_name, 'OPTDEV' ) ddl
        FROM user_views
)
WHERE ddl like '%<search text>%'
