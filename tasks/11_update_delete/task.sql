-- Задание 11. UPDATE DELETE
-- Дана таблица задач. Закрыть просроченные задачи со статусом todo,
-- затем удалить архивные задачи.

drop table if exists tasks;

create table tasks (
    id integer primary key,
    title text not null,
    status text not null,
    due_date text not null
);

insert into tasks(title, status, due_date) values
('report', 'todo', '2024-05-01'),
('lab', 'done', '2024-05-03'),
('old note', 'archive', '2024-04-01'),
('project', 'todo', '2024-06-01');

-- Решение
update tasks
set status = 'late'
where status = 'todo' and due_date < '2024-05-15';

delete from tasks
where status = 'archive';

select id, title, status, due_date
from tasks
order by id;
