select count(status) as Total_Number_Outage_Events,
  reason as Reason,
  year(start_time) as Year
from AEMR
where status = 'Approved' and reason = 'Forced'
group by reason, year
order by reason, year
