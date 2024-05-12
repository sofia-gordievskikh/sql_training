insert into customers(id, name, city) values
(1, 'Sofia', 'Ekaterinburg'),
(2, 'Anna', 'Moscow'),
(3, 'Ivan', 'Kazan'),
(4, 'Masha', 'Ekaterinburg');

insert into products(id, title, price) values
(1, 'notebook', 120.0),
(2, 'pen', 25.0),
(3, 'backpack', 2100.0),
(4, 'keyboard', 3400.0);

insert into orders(id, customer_id, product_id, qty, created_at) values
(1, 1, 1, 3, '2024-05-01'),
(2, 1, 3, 1, '2024-05-03'),
(3, 2, 2, 10, '2024-05-04'),
(4, 3, 4, 1, '2024-05-09'),
(5, 4, 1, 5, '2024-05-10'),
(6, 4, 2, 2, '2024-05-11');
