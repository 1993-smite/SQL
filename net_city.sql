select nct.name_ru,count(*)
from net_city_ip nci
join net_city nc on nc.id = nci.city_id
join net_country nct on nct.id = nc.country_id
group by nct.name_ru
order by count(*) desc, nct.name_ru