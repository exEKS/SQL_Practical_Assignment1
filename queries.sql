use assigment1;

select 
    c.name as customer_name,
    o.order_id,
    p.product_name,
    od.quantity,
    pay.amount
from orders as o
join customers as c on o.customer_id = c.customer_id
join order_details as od on o.order_id = od.order_id
join products as p on od.product_id = p.product_id
join payments as pay on o.order_id = pay.order_id;

select *
from customers
where country = 'usa';

select c.customer_id, c.name, count(o.order_id) as order_count
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id, c.name
having count(o.order_id) > 1;

select * 
from products
order by price desc;

select *
from products
limit 3;
