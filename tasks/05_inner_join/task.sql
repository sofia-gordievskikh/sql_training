-- Задание 05. INNER JOIN
-- Даны покупатели и заказы. Вывести имя покупателя и сумму каждого заказа.

drop table if exists orders;
drop table if exists customers;

create table customers (
    id integer primary key,
    name text not null
);

create table orders (
    id integer primary key,
    customer_id integer not null references customers(id),
    total numeric not null
);

insert into customers(id, name) values
(1, 'Sofia'), (2, 'Anna'), (3, 'Ivan');

insert into orders(customer_id, total) values
(1, 300), (1, 900), (2, 250);

-- Решение
select c.name, o.total
from orders o
join customers c on c.id = o.customer_id
order by c.name, o.total;
