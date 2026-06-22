with mcc_codes as (
    select
        *
    from {{ source('banking_project', 'mcc_codes') }}
)
select m.mcc_id, m.Description as description
 from mcc_codes m