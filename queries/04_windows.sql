select
    c.name,
    o.created_at,
    o.qty * p.price as total,
    rank() over (order by o.qty * p.price desc) as revenue_rank
from orders o
join customers c on c.id = o.customer_id
join products p on p.id = o.product_id;
