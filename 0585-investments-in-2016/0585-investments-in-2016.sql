# Write your MySQL query statement below
select round(sum(tiv_2016),2) as tiv_2016 
from
(select tiv_2016, 
count(tiv_2015) over(partition by concat(lat,lon)) as cnt_tiv_2015,
count(concat(lat,lon)) over(partition by tiv_2015) as cnt_lat_lon
from Insurance)A
where  cnt_tiv_2015=1 
and cnt_lat_lon>=2