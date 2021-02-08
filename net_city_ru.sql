select nct.name_ru,count(*)
from net_ru nr
join net_city nc on nc.id = nr.city_id
join net_country nct on nct.id = nc.country_id
group by nct.name_ru
order by count(*) desc