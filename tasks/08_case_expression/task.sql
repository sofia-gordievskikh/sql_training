-- Задание 08. CASE
-- Дана таблица оценок. Вывести имя и текстовый статус: pass/fail/excellent.

drop table if exists marks;

create table marks (
    id integer primary key,
    student text not null,
    score integer not null
);

insert into marks(student, score) values
('Sofia', 88),
('Anna', 52),
('Ivan', 71),
('Masha', 95);

-- Решение
select
    student,
    case
        when score >= 90 then 'excellent'
        when score >= 60 then 'pass'
        else 'fail'
    end as status
from marks
order by student;
