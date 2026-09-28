# Write your MySQL query statement below
# Write your MySQL query statement below
select e.name 
from  Employee e
join Employee emp
on e.id = emp.managerId
group by e.id,e.name
having count(emp.id) >= 5;