get whih are the all movies in cites name mumbai
select s.id,m.movie_name,s.fees,s.start_time,s.end_time,h.hall_name,t.t_name,c.city_name
from city as c
inner join theater as t on c.id = t.city_id
inner join scheduling as s on s.theater_id = t.id
inner join movie as m on s.movie_id = m.id
inner join hall as h on s.hall_id = h.id
where  c.city_name = 'Mumbai' and s.start_time > now();


--**************************************************************************************************************************
--get movies in particular city
select s.id,m.movie_name,s.fees,s.start_time,s.end_time,h.hall_name,t.t_name,c.city_name
from city as c
inner join theater as t on c.id = t.city_id
inner join scheduling as s on s.theater_id = t.id
inner join movie as m on s.movie_id = m.id
inner join hall as h on s.hall_id = h.id
where  c.city_name = 'Mumbai' and s.start_time > now() and m.id=9;

--**************************************************************************************************************************
--Book_ticket
INSERT INTO Booking(u_id,sched_id) VALUES(2,3)

--**************************************************************************************************************************
-- get users booking ticket
select b.b_id, u.name, ss.movie_name,ss.fees,ss.start_time,ss.end_time,ss.hall_name,ss.t_name,ss.city_name FROM booking as b join user_new as u on b.u_id=u.id join (select s.id,m.movie_name,s.fees,s.start_time,s.end_time,h.hall_name,t.t_name,c.city_name
from city as c
inner join theater as t on c.id = t.city_id
inner join scheduling as s on s.theater_id = t.id
inner join movie as m on s.movie_id = m.id
inner join hall as h on s.hall_id = h.id
where  s.start_time > now()
) as ss on b.sched_id=ss.id where u_id=2
