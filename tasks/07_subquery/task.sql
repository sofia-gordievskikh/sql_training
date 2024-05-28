-- Задание 07. Subquery
-- Дана таблица сотрудников. Вывести сотрудников с зарплатой выше средней.

drop table if exists employees;

create table employees (
    id integer primary key,
    name text not null,
    salary integer not null
);

insert into employees(name, salary) values
('Sofia', 90000),
('Anna', 70000),
('Ivan', 65000),
('Masha', 110000);

-- Решение
select name, salary
from employees
where salary > (select avg(salary) from employees)
order by salary desc;
