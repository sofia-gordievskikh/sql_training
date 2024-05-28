# Базы данных СиСРТ МТУСИ, 2 курс

SQLite-практика: DDL, insert, join, group by, оконные функции.
Часть формата задач сделана по мотивам SQL-ex: короткое условие, фиксированная
схема, один запрос на файл.

## Схема

Даны таблицы `customers`, `products`, `orders`.

Файлы:

- `schema.sql` - создание таблиц;
- `seed.sql` - тестовые данные.
- `migrations/` - миграции проекта;
- `docs/erd.md` - ERD диаграмма.

## Задание 1.1

Вывести покупателей из Екатеринбурга и список товаров по убыванию цены.

Файл: `queries/01_basic.sql`.

## Задание 2.1

Для каждого заказа вывести покупателя, товар, количество и итоговую стоимость.

Файл: `queries/02_joins.sql`.

## Задание 3.1

Посчитать выручку по городам.

Файл: `queries/03_grouping.sql`.

## Задание 4.1

Пронумеровать заказы по убыванию стоимости через оконную функцию.

Файл: `queries/04_windows.sql`.

## Задание 5.1

Найти покупателей, у которых суммарная стоимость заказов больше средней
стоимости одного заказа по всей базе.

Файл: `queries/05_subquery.sql`.

## Задание 6.1

Вывести товары, которые ни разу не заказывали.

Файл: `queries/06_left_join.sql`.

## Задание 7.1

Для каждого города вывести самый дорогой заказ.

Файл: `queries/07_city_top_order.sql`.

## Проект

Мини-проект `student_shop`: база заказов учебного магазина.

Состав:

- миграции в `migrations/`;
- ERD в `docs/erd.md`;
- проверочные запросы в `queries/`.

```bash
sqlite3 shop.db < schema.sql
sqlite3 shop.db < seed.sql
sqlite3 shop.db < queries/01_basic.sql
```

## Дополнительный набор

Папка `tasks/` содержит отдельные SQL-файлы. В каждом файле есть своя схема,
тестовые данные, условие и решение.

| N | Тема | Сложность |
|---|---|---|
| 01 | SELECT WHERE | easy |
| 02 | ORDER BY LIMIT | easy |
| 03 | aggregate | easy |
| 04 | GROUP BY | easy |
| 05 | INNER JOIN | medium |
| 06 | LEFT JOIN | medium |
| 07 | subquery | medium |
| 08 | CASE | medium |
| 09 | window rank | medium |
| 10 | CTE report | hard |
| 11 | UPDATE DELETE | hard |
| 12 | multi-table report | hard |
