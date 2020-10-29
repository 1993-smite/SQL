/*EXPLAIN ANALYSE*/
select u.univ_name, l.surname, l.name, s.subj_name, st.surname, st.name, em.subj_id, em.student_id, em.mark
    from exam_marks em
inner join student st on em.student_id = 4398 and em.student_id = st.student_id
inner join subj_lect sl on sl.subj_id  = em.subj_id
inner join subject s on em.subj_id = s.subj_id
inner join lecturer l on sl.lecturer_id = l.lecturer_id
inner join university u on l.univ_id = u.univ_id and rating = (select max(rating) from university)