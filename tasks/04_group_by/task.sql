-- Задание 04. GROUP BY
-- Дана таблица продаж. Посчитать выручку по каждому городу.

drop table if exists sales;

create table sales (
    id integer primary key,
    city text not null,
    amount numeric not null
);

insert into sales(city, amount) values
('Kazan', 700),
('Moscow', 1200),
('Kazan', 500),
('Perm', 300),
('Moscow', 800);

-- Решение
select city, sum(amount) as revenue
from sales
group by city
order by revenue desc;
