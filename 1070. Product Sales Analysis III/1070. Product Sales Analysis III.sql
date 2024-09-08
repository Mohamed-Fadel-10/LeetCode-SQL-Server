with ProductAnalysis as (
select * from(
select  distinct s.product_id , s.year as [first_year] , s.quantity , s.price ,Dense_Rank()
over (partition by s.product_id order by s.year asc) as RN
from Sales s join Product p on
s.product_id=p.product_id
) as newTable
where RN=1
)
select  product_id , first_year , quantity ,price from ProductAnalysis