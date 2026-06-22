with dim_merchants as (
    SELECT DISTINCT
    {{ dbt_utils.generate_surrogate_key([
        'merchant_city',
        'merchant_state'
    ]) }} AS merchant_id,
    merchant_city,
    merchant_state
    from {{ ref('staging_transactions_data') }}
)
select * from dim_merchants
