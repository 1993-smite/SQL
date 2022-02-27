create or replace function getCarModel(id integer)
returns table(id_car_model integer, name varchar)
LANGUAGE plpgsql
AS $$
    begin
        return query
        select *
        from car_model as c
        where c.id_car_model = id;
    end;
$$;