-- Задание 01. SELECT WHERE
-- Дана таблица студентов. Вывести имена студентов из группы A, у которых score >= 70.

drop table if exists students;

create table students (
    id integer primary key,
    name text not null,
    group_name text not null,
    score integer not null
);

insert into students(name, group_name, score) values
('Sofia', 'A', 88),
('Anna', 'A', 64),
('Ivan', 'B', 77),
('Masha', 'A', 91);

-- Решение
select name
from students
where group_name = 'A' and score >= 70
order by name;
