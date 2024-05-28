-- Задание 03. Aggregate
-- Дана таблица заказов. Посчитать количество заказов и общую сумму.

drop table if exists orders;

create table orders (
    id integer primary key,
    customer text not null,
    total numeric not null
);

insert into orders(customer, total) values
('Sofia', 300),
('Anna', 250),
('Sofia', 900),
('Ivan', 100);

-- Решение
select count(*) as orders_count, sum(total) as revenue
from orders;
