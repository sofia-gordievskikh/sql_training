select
    c.name,
    p.title,
    o.qty,
    p.price * o.qty as total
from orders o
join customers c on c.id = o.customer_id
join products p on p.id = o.product_id
order by total desc;
