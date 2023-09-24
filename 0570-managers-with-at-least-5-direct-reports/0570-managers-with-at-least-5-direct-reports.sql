# Write your MySQL query statement below
select a.name 
from Employee a
join Employee b on a.id=b.managerId
where b.managerId is not null
group by b.managerId 
having count(*)>=5