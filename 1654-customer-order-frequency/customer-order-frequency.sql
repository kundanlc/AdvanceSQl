with cte as(
select
c.customer_id, c.name,
sum(case when to_char(o.order_date,'MM/YYYY') = '06/2020' then o.quantity * p.price else 0 end) as june_spent,
sum(case when to_char(o.order_date,'MM/YYYY') = '07/2020' then o.quantity * p.price else 0 end) as july_spent
from customers c
join Orders o on c.customer_id = o.customer_id
join Product p on p.product_id = o.product_id
where to_char(o.order_date,'MM/YYYY') in ( '06/2020', '07/2020')
group by c.customer_id, c.name)
select customer_id, name
from cte
where june_spent >= 100 and july_spent >= 100;