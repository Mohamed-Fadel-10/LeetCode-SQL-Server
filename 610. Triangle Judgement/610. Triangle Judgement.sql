
--using iif() Function
select x  , y , z  , 
iif(Abs(x)+Abs(y)>Abs(z) and Abs(y)+Abs(z)>Abs(x) and Abs(z)+Abs(x)>Abs(y),'Yes','No')  as triangle 
from Triangle 

--------------------------------------------
--useing Case Stament 

select x  , y , z   , 
case
when Abs(x)+Abs(y)>Abs(z) and Abs(y)+Abs(z)>Abs(x) and Abs(z)+Abs(x)>Abs(y) then 'Yes'
else 'No'
end as triangle 
from Triangle 