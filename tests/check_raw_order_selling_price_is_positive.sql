with orders as (
                select * from {{ ref('raw_orders') }}
               )

    select orderid, sum(ordersellingprice) as total_sp  from orders
    group by orderid
    having total_sp <0
-- dbt test -s check_raw_order_selling_price_is_positive 
