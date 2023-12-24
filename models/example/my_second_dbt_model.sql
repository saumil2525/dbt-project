-- Use the `ref` function to select from other models
{{ config(
    materialized = 'table',
    alias = 'second_model',
) }}

SELECT
    *,
    {{ var('my_first_variable') }} AS first_var
FROM
    {{ ref('my_first_dbt_model') }}
WHERE
    id >= {{ var('my_third_variable') }}
