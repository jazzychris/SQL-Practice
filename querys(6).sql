select count(*) as Total_Number_Outage_Events,
  Participant_Code,
  status as Status,
  year(start_time) as Year
from AEMR
where status = 'Approved'
group by status,Year, Participant_Code
order by  Year, Participant_Code
