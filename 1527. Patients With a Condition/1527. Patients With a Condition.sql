select p.patient_id, p.patient_name, p.conditions 
from Patients p
cross apply string_split(p.conditions, ' ') as cond
where cond.value like 'DIAB1%';