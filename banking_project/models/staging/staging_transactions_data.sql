with transactions_data as (
    select
        *
    from {{ source('banking_project', 'transactions_data') }}
)

select id as transaction_id,
      date,
      client_id,
        card_id,
        amount,
        use_chip,
        merchant_city,
        merchant_state,
        mcc as mcc_id,
        errors
from transactions_data