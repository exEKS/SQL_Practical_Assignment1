create database assigment1;

use assigment1;


create table customers(
	customer_id int primary key,
	name varchar(50),
	email varchar(100),
	country varchar(50));

create table products (
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    price decimal(10, 2));

create table orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    foreign key (customer_id) references customers(customer_id));

create table order_details (
    order_detail_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id));

create table payments (
    payment_id int primary key,
    order_id int,
    payment_date date,
    amount decimal(10, 2),
    foreign key (order_id) references orders(order_id)
);