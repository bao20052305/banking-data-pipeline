WITH dim_dates AS (
    SELECT DISTINCT
       date AS full_date
    FROM {{ ref('staging_transactions_data') }}
)

SELECT
    TO_NUMBER(TO_CHAR(full_date, 'YYYYMMDD')) AS date_id,
    full_date,
    YEAR(full_date) AS year,
    MONTH(full_date) AS month,
    DAY(full_date) AS day
FROM dim_dates