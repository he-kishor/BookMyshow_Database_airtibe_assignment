--showing the the theater in particular city
select * from theater as t join city as c 
on t.city_id=c.id where c.city_name='Mumbai';-- <= type city Name
--You can check the theater data in mumbai city at "Theater_based_on_city.csv" file



--**************************************************************************************************************************
--check the hall in particular theater with name base on "Theater_based_on_city.csv" file
select * from hall as h join theater as t 
on h.theater_id=t.id WHERE t.t_name='PVR Cinemas - Andheri'

--You can check the hall data where the theater "PVR Cinemas-Andheri" have how many hall "hall_base_on_theater.csv" file


--**************************************************************************************************************************
--Schedule hall for the movie show or Book hall for the movie show
insert INTO Scheduling(theater_id, hall_id, movie_id, fees,start_time,end_time) VALUES (1,56 ,45,500, '2024-12-30 14:00:00', '2024-12-30 16:00:00');

--**************************************************************************************************************************
--you can check the hall is schedule for the movie in the "hall_schedule.csv" file
select * from Scheduling;
