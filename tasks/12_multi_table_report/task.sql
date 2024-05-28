-- Задание 12. Multi-table report
-- Даны студенты, курсы и попытки сдачи. Для каждого курса вывести число
-- студентов, средний лучший балл и максимальный лучший балл.

drop table if exists attempts;
drop table if exists courses;
drop table if exists students;

create table students (
    id integer primary key,
    name text not null
);

create table courses (
    id integer primary key,
    title text not null
);

create table attempts (
    student_id integer not null references students(id),
    course_id integer not null references courses(id),
    score integer not null
);

insert into students(id, name) values
(1, 'Sofia'), (2, 'Anna'), (3, 'Ivan');

insert into courses(id, title) values
(1, 'SQL'), (2, 'ML');

insert into attempts(student_id, course_id, score) values
(1, 1, 70),
(1, 1, 88),
(2, 1, 91),
(3, 1, 55),
(1, 2, 80),
(3, 2, 77);

-- Решение
with best_attempt as (
    select student_id, course_id, max(score) as best_score
    from attempts
    group by student_id, course_id
)
select
    c.title,
    count(*) as students_count,
    round(avg(b.best_score), 2) as avg_best_score,
    max(b.best_score) as max_best_score
from best_attempt b
join courses c on c.id = b.course_id
group by c.id, c.title
order by c.title;
