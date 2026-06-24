with dim_mcc as(
    select *
            from {{ ref('staging_mcc_codes') }}
)
select * from dim_mcc