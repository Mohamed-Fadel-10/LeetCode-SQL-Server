select p.product_id,
 round(isNull(Sum(Cast(u.units * p.price as Decimal(18, 2))) / Sum(Cast(u.units as Decimal(18, 2))),0), 2) as average_price
from Prices p left outer join UnitsSold u
on p.product_id = u.product_id 
Where u.purchase_date between p.start_date and p.end_date or u.product_id  is Null
Group by p.product_id;