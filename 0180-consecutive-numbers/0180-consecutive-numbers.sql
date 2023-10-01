# Write your MySQL query statement below
select distinct num as ConsecutiveNums
from  
(select num, 
        lag(num) over (order by id) as lags, 
        lead(num) over (order by id) as leads
from Logs)A
where num=lags
and num=leads
