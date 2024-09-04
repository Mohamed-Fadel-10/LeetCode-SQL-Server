
declare @x int 
select @x= Count(u.user_id) from Users u
select r.contest_id , Round(100*(Cast( Count(r.user_id) as decimal(18,2))/@x) ,2)as percentage 
from Users u inner join Register r
on u.user_id = r.user_id
group by r.contest_id
order by percentage desc, r.contest_id asc
