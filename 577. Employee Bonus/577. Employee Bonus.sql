
-- Using SubQuery For Search about empId in Bonus Table 
select e.name, b.bonus from Employee e
left outer join Bonus b
on e.empId = b.empId
where b.bonus <1000 or e.empId not in (Select empId from  Bonus) 

-- Or Using Normal Select and Join With "IS" Operator For Check 

select e.name, b.bonus from Employee e
 left outer join Bonus b
 on e.empId = b.empId
 where b.bonus <1000 or b.bonus is Null
