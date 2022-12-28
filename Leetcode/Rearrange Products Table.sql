--UnPivot
SELECT product_id ,Store,Price
from 
(SELECT product_id ,store1, store2, store3 FROM Products) as P
UNPIVOT
(
Price 
for Store IN
(store1, store2, store3)
) AS UNPVT


--Union
select product_id, 'store1' as store, store1 as price from Products p 
where store1 is not NULL
union
select product_id, 'store2' as store, store2 as price from Products p 
where store2 is not NULL
union
select product_id, 'store3' as store, store3 as price from Products p 
where store3 is not NULL


--Cross Apply Values
select 
    p.product_id, t.store,t.price 
from 
    Products as p
cross apply
(
    values 
        ('store1', store1),
        ('store2', store2), 
        ('store3', store3)
) as t (store, price)
where
    t.price is not null