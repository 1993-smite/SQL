select f.type_id, f.year, f.name
from films as f
group by  f.type_id, f.year, f.name
limit 100000