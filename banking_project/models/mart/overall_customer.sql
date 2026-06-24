with overall_customers as (

  select *
from {{ ref('dim_users') }} u
left join {{ ref('fct_transactions') }} f
    using (client_id)
left join {{ ref('dim_merchant') }} m
    using (merchant_id)
left join {{ ref('dim_mcc') }} mc
    using (mcc_id)

)

select *
from overall_customers