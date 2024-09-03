select Department, Employee, Salary from 
(
    select d.name Department, e.name Employee, e.salary Salary , rank() over(partition by d.id order by e.salary desc) as rn
    from employee e join
    department d
    on d.id = e.departmentId) abc
where abc.rn = 1;