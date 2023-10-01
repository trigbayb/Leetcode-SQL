
select distinct A.product_id as product_id, 
       case when B.product_id is null then 10 else max_price end as price
        
from Products A
left join 
(select distinct product_id, first_value(new_price) over (partition by product_id order by change_date desc) as max_price from Products
where change_date<='2019-08-16'
) B 
on A.product_id=B.product_id 
