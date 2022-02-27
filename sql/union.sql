select _c.title_ru as city
from _cities as _c
where _c.city_id in (1,17,157)
union
select c.title_ru as city
from countries as c
where c.country_id in (1,2,3)
order by city