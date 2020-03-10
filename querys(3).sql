select status as Status,
  reason as Reason,
  count(status) as Total_Number_Outage_Events,
  round(avg(timestampdiff(Minute, Start_Time, End_Time)/1440),2) as Average_Outage_Duration_Time_Days,
  year(start_time) as Year
from AEMR
where status = 'Approved'
group by reason, year
order by reason, year
