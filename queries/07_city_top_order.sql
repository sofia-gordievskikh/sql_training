with order_values as (
    select
        c.city,
        c.name,
        p.title,
        o.qty * p.price as total,
        dense_rank() over (
            partition by c.city
            order by o.qty * p.price desc
        ) as rnk
    from orders o
    join customers c on c.id = o.customer_id
    join products p on p.id = o.product_id
)
select city, name, title, total
from order_values
where rnk = 1
order by city;
