create database product;
use product;
create table product_info(id int not null,product_name varchar(20) unique,product_type varchar(20),
price bigint,net varchar(20),exp_date varchar(20),mfg_date varchar(20),
check(product_name<16));
create table order_info(id int not null,owner_name varchar(20) unique,order_date varchar(20),
receive_date varchar(20),description_of_order varchar(20),qty int,payment_mode varchar(20),
check(id<16));
insert into product_info values(1, 'Laptop', 'Electronics', 799.99, 50,'2028-03-15' , '2024-01-15'),
(2, 'Smartphone', 'Electronics', 499.99, 100, '2028-03-15', '2024-02-20'),
(4, 'Headphones', 'Electronics', 79.99, 200, '2028-03-15', '2024-04-05'),
(5, 'Smartwatch', 'Electronics', 149.99, 150, '2028-03-15', '2024-05-25'),
(6, 'Printer', 'Electronics', 129.99, 60, '2028-03-15', '2024-06-15'),
(7, 'Camera', 'Electronics', 899.99, 25, '2028-03-15', '2024-07-20'),
(8, 'Keyboard', 'Electronics', 49.99, 180, '2028-03-15', '2024-08-10'),
(9, 'Mouse', 'Electronics', 29.99, 300, '2028-03-15', '2024-09-05'),(10, 'Monitor', 'Electronics', 199.99, 40, 'ViewTech', '2024-10-25'),
(11, 'Chair', 'Furniture', 89.99, 70, '2028-03-15', '2024-01-10'),
(12, 'Desk', 'Furniture', 199.99, 30, '2028-03-15', '2024-02-15'),
(13, 'Sofa', 'Furniture', 499.99, 10, '2028-03-15', '2024-03-20'),
(14, 'Lamp', 'Furniture', 39.99, 120, '2028-03-15', '2024-04-25'),
(15, 'Bookshelf', 'Furniture', 149.99, 25, '2028-03-15', '2024-05-30');

