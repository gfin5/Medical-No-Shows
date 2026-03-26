select cast(SMS_received as bool) as MessageRecieved, countif(`No-show`=TRUE)/count(*) as NoShowRate
from `medicalnoshows.patients.noshows`
group by cast(SMS_received as bool)