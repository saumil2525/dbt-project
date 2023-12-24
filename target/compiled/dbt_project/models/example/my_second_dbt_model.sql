-- Use the `ref` function to select from other models


SELECT
    *,
    True AS first_var
FROM
    analytics.dbt.first_model
WHERE
    id >= 200