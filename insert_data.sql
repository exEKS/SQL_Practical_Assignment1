use assigment1;

insert into customers (customer_id, name, email, country) values
(1, 'john doe', 'john@example.com', 'usa'),
(2, 'jane smith', 'jane@example.com', 'canada'),
(3, 'alice brown', 'alice@example.com', 'uk'),
(4, 'bob white', 'bob@example.com', 'australia'),
(5, 'emma green', 'emma@example.com', 'germany');

insert into products (product_id, product_name, category, price) values
(1, 'laptop', 'electronics', 1000.00),
(2, 'phone', 'electronics', 500.00),
(3, 'headphones', 'accessories', 100.00),
(4, 'backpack', 'bags', 50.00),
(5, 'mouse', 'accessories', 25.00);

insert into orders (order_id, customer_id, order_date) values
(1, 1, '2025-05-01'),
(2, 2, '2025-05-02'),
(3, 3, '2025-05-03'),
(4, 4, '2025-05-04'),
(5, 5, '2025-05-05');

insert into order_details (order_detail_id, order_id, product_id, quantity) values
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 3, 4, 1),
(5, 4, 5, 3),
(6, 5, 1, 1);

insert into payments (payment_id, order_id, payment_date, amount) values
(1, 1, '2025-05-01', 1200.00),
(2, 2, '2025-05-02', 500.00),
(3, 3, '2025-05-03', 50.00),
(4, 4, '2025-05-04', 75.00),
(5, 5, '2025-05-05', 1000.00);

select * from customers;

select * from products;

select * from orders;

select * from order_details;

select * from payments;
