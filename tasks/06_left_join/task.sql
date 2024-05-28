-- Задание 06. LEFT JOIN
-- Даны товары и продажи. Найти товары без продаж.

drop table if exists sales;
drop table if exists products;

create table products (
    id integer primary key,
    title text not null
);

create table sales (
    id integer primary key,
    product_id integer not null references products(id),
    qty integer not null
);

insert into products(id, title) values
(1, 'pen'), (2, 'notebook'), (3, 'marker'), (4, 'bag');

insert into sales(product_id, qty) values
(1, 10), (2, 3), (1, 5);

-- Решение
select p.title
from products p
left join sales s on s.product_id = p.id
where s.id is null
order by p.title;
