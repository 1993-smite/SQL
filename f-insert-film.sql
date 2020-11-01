create or replace function addFilm(
    p_name varchar
    , p_year integer
    , p_type varchar)
returns integer
LANGUAGE plpgsql
AS $$
    DECLARE v_typeId integer;
    DECLARE v_lastFilmId integer;
    DECLARE v_newFilmId integer;
    begin
        /* get typeId by name */
        select ft.id
        into v_typeId
        from "film-types" as ft
        where lower(ft.name) = lower(p_type);

        /* get last film id */
        select max(f.id)
        into v_lastFilmId
        from films as f;

        /* new id for film */
        v_newFilmId = (v_lastFilmId + 1);

        /* insert new film */
        insert into films
                (id, name, year, type_id, descriptions)
        values (v_newFilmId, p_name, p_year, v_typeId, '');

        return v_newFilmId;
    end;
$$;