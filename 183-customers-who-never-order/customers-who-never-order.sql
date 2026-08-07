# Write your MySQL query statement below
select customers.name as Customers
from orders
right join customers
on orders.customerId = customers.id
where orders.customerId is null
;