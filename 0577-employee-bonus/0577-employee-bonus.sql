# Write your MySQL query statement below
# Write your MySQL query statement below
select Employee.name , b.bonus
from Bonus as b 
right join Employee 
on Employee.empId = b.empId
where Bonus < 1000 or Bonus is null;