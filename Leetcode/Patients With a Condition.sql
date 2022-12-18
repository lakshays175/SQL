SELECT patient_id,patient_name  ,conditions
from patients  
WHERE CASE WHEN CHARINDEX(' DIAB1',conditions)>0 THEN 1 ELSE 
CASE WHEN CHARINDEX('DIAB1',conditions) =1 THEN 1 ELSE 0 END END =1