select Neighbourhood as Neighborhood, count(*) as TotalPatients, countif(`No-show`=TRUE)/count(*) as NoShowRate
from `medicalnoshows.patients.noshows`
group by Neighbourhood
order by NoShowRate