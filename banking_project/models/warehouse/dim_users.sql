with dim_users as (
    select *
            from {{ ref('staging_users_data') }}
)
select * from dim_users