    {# 
    SELECT
    table_catalog,
    table_schema,
    table_name
FROM `dbt-tutorials-dv`.information_schema.tables
WHERE lower(table_name) = 'fact_sales' 
#}

{# SELECT * 
FROM 
    `dbt-tutorials-dv`.`source`.`fact_sales` #}

SELECT
    *
FROM
    {{ source('source', 'fact_sales') }}
