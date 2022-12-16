select name, population, area
from ( select name, population, area,
    case 
        when area > 3000000 then 1
        when population > 25000000 then 1 
        else 0
        end as is_bigger from world) has_big
where is_bigger >0