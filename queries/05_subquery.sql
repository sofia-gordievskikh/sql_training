select
    c.name,
    sum(o.qty * p.price) as customer_total
from customers c
join orders o on o.customer_id = c.id
join products p on p.id = o.product_id
group by c.id, c.name
having sum(o.qty * p.price) > (
    select avg(order_total)
    from (
        select qty * price as order_total
        from orders
        join products on products.id = orders.product_id
    ) t
)
order by customer_total desc;
