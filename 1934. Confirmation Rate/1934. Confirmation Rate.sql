-- Using SQL Server 

select s.user_id ,isnull(Round(cast(count(case when c.action='confirmed ' then 1 end ) as decimal(18,2)) / cast(count(*) as decimal(18,2)),2),0)as confirmation_rate 
from Signups s left outer join Confirmations c
on s.user_id =c.user_id 
group by s.user_id 
order by s.user_id  asc

-- Using MySQL Server 

select s.user_id ,ifnull(Round(Count(case when c.action='confirmed ' then 1 end ) / count(case when c.user_id<>0 then c.user_id end),2) ,0)as confirmation_rate 
from Signups s left outer join Confirmations c
on s.user_id =c.user_id 
group by s.user_id 


