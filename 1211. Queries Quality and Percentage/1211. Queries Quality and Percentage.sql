
--using SQLServer 
select q.query_name ,Round(AVG(cast (rating as decimal(18,2))/cast(position as decimal(18,2))),2)as quality , 
Round(100 * Sum(cast(case when rating < 3 then 1 else 0 end as decimal(18,2))) / cast(Count(*) as decimal(18,2)),2) as poor_query_percentage
from Queries q
where q.query_name is not null
group by q.query_name 
order by q.query_name  desc

-- using MYSQl

select q.query_name ,Round(SUM(q.rating/q.position ) /Count( q.query_name),2)as quality , 
Round((sum(q.rating<3) / Count(q.query_name)) * 100,2) as poor_query_percentage
from Queries q
where q.query_name is not null
group by q.query_name 
