select c.title_ru
from _cities as c
join countries c2 on c.country_id = c2.country_id
where c2.title_ru = 'Россия'
    and (c.title_ru like 'Б%'
    or c.title_ru like 'С%')
order by c.title_ru;