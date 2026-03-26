SELECT 
  format_date('%a', AppointmentDay) as DayofWeek, 
  countif(`No-show`=TRUE)/count(*) as NoShowRate

from `medicalnoshows.patients.noshows`
group by format_date('%a', AppointmentDay)
order by
  case DayofWeek
    when 'Mon' then 1
    when 'Tue' then 2
    when 'Wed' then 3
    when 'Thu' then 4
    when 'Fri' then 5
    when 'Sat' then 6
    END
