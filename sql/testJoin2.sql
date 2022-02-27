select concat(l.surname, ' ', l.name) as Lector
     , concat(data.surname, ' ' ,data.name) as Student
     , u.univ_name as University
     , data.subj_name as Subject
     , data.mark
from
    (
        select em.subj_id, em.mark, st.univ_id, st.surname, st.name, s.subj_name
        from
             (
                 select * from exam_marks where student_id = 4398
             ) em
        inner join student st
            on em.student_id = st.student_id
        inner join subject s
            on em.subj_id = s.subj_id
    ) data
    -- get university
    inner join university u
        on u.univ_id = data.univ_id
    -- get lector
    inner join subj_lect sl
        on sl.subj_id = data.subj_id
    inner join lecturer l
        on sl.lecturer_id = l.lecturer_id
               and l.univ_id = data.univ_id
