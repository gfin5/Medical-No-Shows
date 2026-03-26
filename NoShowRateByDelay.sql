SELECT CASE
  WHEN date_diff(AppointmentDay, ScheduledDay, day)=0 Then "Same Day"
  WHEN date_diff(AppointmentDay, ScheduledDay, day)=1 Then "Next Day"
  WHEN date_diff(AppointmentDay, ScheduledDay, day) between 2 and 7 Then "Same Week"
  When date_diff(AppointmentDay, ScheduledDay, day) between 8 and 14 Then "Over 1 Week Away"
  Else "2 or More Weeks Away"
  End as SchedulingDelay, countif(`No-show`=TRUE)/count(*) as NoShowRate

from `medicalnoshows.patients.noshows`
group by (CASE
  WHEN date_diff(AppointmentDay, ScheduledDay, day)=0 Then "Same Day"
  WHEN date_diff(AppointmentDay, ScheduledDay, day)=1 Then "Next Day"
  WHEN date_diff(AppointmentDay, ScheduledDay, day) between 2 and 7 Then "Same Week"
  When date_diff(AppointmentDay, ScheduledDay, day) between 8 and 14 Then "Over 1 Week Away"
  Else "2 or More Weeks Away"
  END)