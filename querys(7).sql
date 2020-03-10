select Participant_Code,
  status as Status,
  Year(start_time) as Year,
  round(avg(round(timestampdiff(Minute, start_time, end_time)/1440,2)),2) as Average_Outage_Duration_Time_Days
from AEMR
where status = 'Approved'
group by Participant_Code, status, Year
order by Average_Outage_Duration_Time_Days desc
