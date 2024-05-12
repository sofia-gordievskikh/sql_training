drop table if exists orders;
drop table if exists customers;
drop table if exists products;

create table customers (
    id integer primary key,
    name text not null,
    city text not null
);

create table products (
    id integer primary key,
    title text not null,
    price numeric not null
);

create table orders (
    id integer primary key,
    customer_id integer not null,
    product_id integer not null,
    qty integer not null,
    created_at text not null,
    foreign key (customer_id) references customers(id),
    foreign key (product_id) references products(id)
);
