with cards_data as (
    select
        *
    from {{ source('banking_project', 'cards_data') }}
)
select id as card_id,
       client_id,
       card_brand,
       card_number,
       expires as expiration_date,
       cvv,
       has_chip,
       num_cards_issued,
       credit_limit,
       acct_open_date,
       year_pin_last_changed
 from cards_data