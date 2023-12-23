
  
    

        create or replace transient table analytics.dbt.snowflake_customer_purchases
         as
        (

SELECT
    C.c_custkey,
    C.c_name,
    C.c_address,
    SUM(
        o.o_totalprice
    ) AS totalprice
FROM
    snowflake_sample_data.tpch_sf1.customer C
    LEFT JOIN snowflake_sample_data.tpch_sf1.orders o
    ON C.c_custkey = o.o_custkey
GROUP BY
    C.c_custkey,
    C.c_name,
    C.c_address
        );
      
  