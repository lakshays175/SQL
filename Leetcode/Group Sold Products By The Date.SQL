SELECT SELL_DATE,COUNT(product) NUM_SOLD,STRING_AGG(product,',') AS PRODUCTS
from 
        (SELECT DISTINCT SELL_DATE,PRODUCT
        FROM Activities
        ) AS Activities 
group by sell_date
order by sell_date,STRING_AGG(product,',')


--Fast 
select sell_date, count(product) num_sold, STRING_AGG(product,',') WITHIN GROUP(order by product) as products from (select distinct * from Activities) as a 
group by sell_date
order by sell_date