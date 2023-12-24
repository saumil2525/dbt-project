

SELECT
    *
FROM
    snowflake_sample_data.tpcds_sf10tcl.date_dim
WHERE
    d_date <= CURRENT_DATE


AND d_date >= (
    SELECT
        MAX(d_date)
    FROM
        analytics.dbt.dates
)
