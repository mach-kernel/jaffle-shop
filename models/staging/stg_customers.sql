with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,
        'foo', as new_change,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
