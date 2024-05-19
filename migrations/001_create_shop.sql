create table if not exists customers (
    id integer primary key,
    name text not null,
    city text not null
);

create table if not exists products (
    id integer primary key,
    title text not null,
    price numeric not null check (price >= 0)
);

create table if not exists orders (
    id integer primary key,
    customer_id integer not null references customers(id),
    product_id integer not null references products(id),
    qty integer not null check (qty > 0),
    created_at text not null
);
