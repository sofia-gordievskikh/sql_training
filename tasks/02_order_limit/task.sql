-- Задание 02. ORDER BY LIMIT
-- Дана таблица товаров. Вывести два самых дорогих товара.

drop table if exists products;

create table products (
    id integer primary key,
    title text not null,
    price numeric not null
);

insert into products(title, price) values
('pen', 25),
('notebook', 120),
('keyboard', 3400),
('mouse', 1600),
('backpack', 2100);

-- Решение
select title, price
from products
order by price desc, title
limit 2;
