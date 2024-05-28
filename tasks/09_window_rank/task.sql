-- Задание 09. Window rank
-- Дана таблица результатов. Для каждого факультета проставить место студента
-- по убыванию score.

drop table if exists results;

create table results (
    id integer primary key,
    faculty text not null,
    student text not null,
    score integer not null
);

insert into results(faculty, student, score) values
('CS', 'Sofia', 88),
('CS', 'Anna', 91),
('CS', 'Ivan', 70),
('Math', 'Masha', 95),
('Math', 'Petr', 75);

-- Решение
select
    faculty,
    student,
    score,
    dense_rank() over (partition by faculty order by score desc) as place_in_faculty
from results
order by faculty, place_in_faculty, student;
