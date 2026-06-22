with dim_cards as (
    select *
            from {{ ref('staging_cards_data') }}
)
select * from dim_cards