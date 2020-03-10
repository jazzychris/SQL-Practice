select count(status) as Total_Number_Outage_Events,
  status as Status,
  reason as Reason
from AEMR
where year(start_time) = 2017 and status = 'Approved'
group by status,reason
order by reason, status
