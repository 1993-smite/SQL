CREATE function getCarModel(modelId integer)
returns setof varchar
LANGUAGE plpgsql
AS $$
    select c.name
    from car_model as c
    where c.id_car_model = modelId;
$$;

/*CALL getCarModel(1);*/