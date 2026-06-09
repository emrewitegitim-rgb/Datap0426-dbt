with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        products_id,
        turnover,
        qty

    from source

)

select * from renamed