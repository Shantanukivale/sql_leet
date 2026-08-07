# Write your MySQL query statement below
select d.name as Department , e.name as Employee ,e.salary as Salary
from employee as e
join department as d
on e.departmentId = d.id
join
(
    select departmentId, max(salary) as msalary 
    from employee
    group by departmentId
) as m
on e.departmentId = m.departmentId
And e.salary=m.msalary
;