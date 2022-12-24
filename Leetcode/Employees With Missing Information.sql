--Union All
SELECT employee_id FROM
(
    SELECT employee_id FROM Employees
    UNION ALL SELECT employee_id FROM Salaries
) t
GROUP BY employee_id
HAVING COUNT(*)=1
ORDER BY employee_id;


--Union
SELECT Employee_id
from Employees E
WHERE Employee_id NOT IN 
(SELECT Employee_id FROM SALARIES)
UNION
SELECT Employee_id
from SALARIES S
WHERE Employee_id NOT IN 
(SELECT Employee_id FROM Employees)
ORDER BY EMPLOYEE_ID

--Full Join
SELECT coalesce(a.employee_id,b.employee_id) as employee_id
FROM  EMPLOyees a full join salaries b 
on a.employee_id = b.employee_id
where a.employee_id is null or b.employee_id is null
order by 1