-- select * from subject;
select * from exam_marks em
inner join subject s on em.student_id = 4398 and s.subj_id = em.subj_id limit 100

select * from subj_lect sl
inner join lecturer l
    on sl.lecturer_id = l.lecturer_id
    and sl.subj_id = 12
    and l.univ_id = 1
-- select * from student where student.surname = 'Гречко'