# Базы данных СиСРТ МТУСИ, 2 курс

SQLite-практика: DDL, insert, join, group by, оконные функции.

## Схема

Даны таблицы `customers`, `products`, `orders`.

Файлы:

- `schema.sql` - создание таблиц;
- `seed.sql` - тестовые данные.

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

```bash
sqlite3 shop.db < schema.sql
sqlite3 shop.db < seed.sql
sqlite3 shop.db < queries/01_basic.sql
```
