do $$
declare
    page integer := 2;
    pageCount integer := 40;
begin
    query select cs.name
    from car_serie as cs
    offset page * (pageCount - 1)
    limit pageCount
    INTO myrec;
end $$;