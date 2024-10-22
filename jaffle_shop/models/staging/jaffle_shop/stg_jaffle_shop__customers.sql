with 

source as (
    select * from {{ source('jaffle_shop', 'customers') }}
),

transformed as (

    select 
    id as customer_id,
    LAST_NAME as customer_last_name,
    FIRST_NAME as customer_first_name,
    FIRST_NAME || ' ' || LAST_NAME as full_name

    from source
)

select * from transformed