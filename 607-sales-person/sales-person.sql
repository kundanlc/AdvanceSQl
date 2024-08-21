select
distinct sp.name
from 
SalesPerson sp
left join 
(select 
o.order_id, o.sales_id
from Orders o
join Company c on c.com_id = o.com_id
where c.name = 'RED') t
on sp.sales_id = t.sales_id
where t.order_id is null;