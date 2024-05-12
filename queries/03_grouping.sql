select
    c.city,
    sum(o.qty * p.price) as revenue
from orders o
join customers c on c.id = o.customer_id
join products p on p.id = o.product_id
group by c.city
order by revenue desc;
