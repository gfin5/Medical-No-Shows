select case
  when Age <18 then 'Child (Under 18)'
  when Age between 18 and 30 then 'Young Adult (18-29)'
  when Age between 30 and 49 then 'Adult (30-49)'
  when Age between 50 and 70 then 'Older Adult (50-70)'
  when Age >70 then 'Elderly (Over 70)'
  END as AgeGroup, countif(`No-show`=TRUE)/count(*) as NoShowRate

from `medicalnoshows.patients.noshows`

group by (case
  when Age <18 then 'Child (Under 18)'
  when Age between 18 and 30 then 'Young Adult (18-29)'
  when Age between 30 and 49 then 'Adult (30-49)'
  when Age between 50 and 70 then 'Older Adult (50-70)'
  when Age >70 then 'Elderly (Over 70)'
  END)

order by
  case AgeGroup
    when 'Child (Under 18)' then 1
    when 'Young Adult (18-29)' then 2
    when 'Adult (30-49)' then 3
    when 'Older Adult (50-70)' then 4
    when 'Elderly (Over 70)' then 5
    END