select
  'Diabetes' as Condition,
  countif(`No-show`=TRUE)/count(*) as NoShowRate
from `medicalnoshows.patients.noshows`
where Diabetes=1

UNION ALL

select
  'Hypertension' as Condition,
  countif(`No-show`=TRUE)/count(*) as NoShowRate
from `medicalnoshows.patients.noshows`
where Hipertension=1

UNION ALL

select
  'Alcoholism' as Condition,
  countif(`No-show`=TRUE)/count(*) as NoShowRate
from `medicalnoshows.patients.noshows`
where Alcoholism=1

UNION ALL

select
  'Handicap' as Condition,
  countif(`No-show`=TRUE)/count(*) as NoShowRate
from `medicalnoshows.patients.noshows`
where Handcap=1

UNION ALL

select
  'NoCondition' as Condition,
  countif(`No-show`=TRUE)/count(*) as NoShowRate
from `medicalnoshows.patients.noshows`
where Hipertension=0 and Diabetes=0 and Handcap=0 and Alcoholism=0
