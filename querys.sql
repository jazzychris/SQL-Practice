select count(status) as Total_Number_Outage_Events,
  status as Status,
  reason as Reason
from AEMR
where status = 'Approved' and year(start_time) = 2016
group by status,reason
order by reason

