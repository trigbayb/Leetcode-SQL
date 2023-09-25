# Write your MySQL query statement below
select a.employee_id, a.name, count(b.employee_id) as reports_count, round(avg(b.age)) as average_age
from Employees a
join Employees b on a.employee_id=b.reports_to
group by employee_id, name
order by employee_id
