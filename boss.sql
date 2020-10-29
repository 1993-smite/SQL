select usr.fio as user, boss.fio as boss
from sotrudniki as usr
left join sotrudniki as boss
on boss.id = usr.bossid
order by usr.fio