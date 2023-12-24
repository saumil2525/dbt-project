SELECT
    SUM(
        CASE
            WHEN id IS NULL THEN 1
            ELSE 0
        END
    ) / COUNT(*) AS percent_nulls
FROM
    analytics.dbt.first_model
GROUP BY
    id
HAVING
    SUM(
        CASE
            WHEN id IS NULL THEN 1
            ELSE 0
        END
    ) / COUNT(*) > 0.20