
  
    

        create or replace transient table analytics.dbt.first_model
         as
        (/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

*/


WITH source_data AS (

    SELECT
        1 AS id
    UNION ALL
    SELECT
        NULL AS id
    UNION ALL
    SELECT
        111 AS id
    UNION ALL
    SELECT
        222 AS id
    UNION ALL
    SELECT
        333 AS id
)
SELECT
    *
FROM
    source_data
        );
      
  