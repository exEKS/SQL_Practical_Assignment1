use assigment1;

with order_counts as (
    select customer_id, count(order_id) as order_count
    from orders
    group by customer_id
)
select *
from order_counts
where order_count > 1;
