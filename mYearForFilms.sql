select
        (select sum(f.year)
            from films as f)
            /
        (select count(*)
            from films)
    as mYear
;