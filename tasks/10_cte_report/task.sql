-- Задание 10. CTE report
-- Даны заказы магазина. Посчитать дневную выручку и накопительную выручку
-- по датам.

drop table if exists orders;

create table orders (
    id integer primary key,
    created_at text not null,
    total numeric not null
);

insert into orders(created_at, total) values
('2024-05-01', 300),
('2024-05-01', 200),
('2024-05-02', 900),
('2024-05-03', 150),
('2024-05-03', 350);

-- Решение
with daily as (
    select created_at, sum(total) as day_revenue
    from orders
    group by created_at
)
select
    created_at,
    day_revenue,
    sum(day_revenue) over (order by created_at) as revenue_running
from daily
order by created_at;
