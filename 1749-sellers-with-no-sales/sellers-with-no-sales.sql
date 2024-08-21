select s.seller_name
from Seller s 
left join Orders o on s.seller_id = o.seller_id and extract('year' from o.sale_date) = 2020
where o.order_id is null
order by s.seller_name;