--Search views
SELECT *
FROM (SELECT view_name
      , dbms_metadata.get_ddl( 'VIEW', view_name, 'OPTDEV' ) ddl
      , rownum
        FROM user_views
)
WHERE ddl like '%<search text>%'
