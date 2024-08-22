select 
coalesce(e.employee_id, s.employee_id) as employee_id
from
Employees e
full outer join Salaries s on e.employee_id = s.employee_id
where s.salary is null or e.employee_id is null
order by coalesce(e.employee_id, s.employee_id);