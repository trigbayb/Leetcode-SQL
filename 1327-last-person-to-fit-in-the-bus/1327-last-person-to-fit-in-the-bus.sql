# Write your MySQL query statement below
select person_name
from
(select person_name, sum(weight) over(order by turn) as wei
from Queue)A
where wei<=1000
order by wei desc
limit 1