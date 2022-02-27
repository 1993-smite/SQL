create or replace function get_generations (
	id_model integer
)
returns table (
	name varchar,
	begin_dt varchar,
	end_dt varchar
)
language plpgsql
as $$
declare
    var_r record;
begin
	for var_r in(
            select *
            from car_generation as cg
	     where cg.id_car_model = id_model
        ) loop  name := var_r.name ;
		        begin_dt := var_r.year_begin;
                end_dt := var_r.year_end;
           return next;
	end loop;
end; $$