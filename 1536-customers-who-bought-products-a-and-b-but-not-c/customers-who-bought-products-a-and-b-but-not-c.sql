select c.customer_id, c.customer_name
from Customers c join
Orders o on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having sum(case when o.product_name = 'A' then 1 else 0 end ) > 0 and 
sum(case when o.product_name = 'B' then 1 else 0 end ) > 0 and 
sum(case when o.product_name = 'C' then 1 else 0 end ) = 0
order by c.customer_id;