with fct_transactions as (
    select
        transaction_id,
        TO_NUMBER(TO_CHAR(date, 'YYYYMMDD')) AS date_id,
        client_id,
        card_id,
        amount,
        use_chip,
        {{ dbt_utils.generate_surrogate_key([
        'merchant_city',
        'merchant_state'
    ]) }} AS merchant_id,
        mcc_id,
        errors
    from {{ ref('staging_transactions_data') }}
)
select * from fct_transactions