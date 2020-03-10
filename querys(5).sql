select status as Status,
  reason as Reason,
  count(status) as Total_Number_Outage_Events,
  month(start_time) as Month
from AEMR
where year(start_time) = 2016 and status = 'Approved'
group by status, reason, Month
order by reason, status
