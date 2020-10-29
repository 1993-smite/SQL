select c.name, cs.name, cc.name, cm.name
from car_characteristic_value as cv
join car_characteristic cc on cv.id_car_characteristic = cc.id_car_characteristic
join car_modification cm on cv.id_car_modification = cm.id_car_modification
join car_serie cs on cm.id_car_serie = cs.id_car_serie
join car_model c on cm.id_car_model = c.id_car_model
join car_mark m on c.id_car_mark = m.id_car_mark
offset 100;