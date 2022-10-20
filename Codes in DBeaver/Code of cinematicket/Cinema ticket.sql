-----------------Cinema Ticket Booking-----------------

CREATE TABLE Nasreen_FA_CinemaTicket (
    [Film_Type] nvarchar(255),
    [film_code] float,
    [cinema_code] float,
    [total_sales] float,
    [tickets_sold] float,
    [tickets_out] float,
    [show_time] float,
    [occu_perc] float,
    [ticket_price] float,
    [ticket_use] float,
    [capacity] float,
    [date] float,
    [month] float,
    [quarter] float,
    [day] float
)


select * from Nasreen_FA_CinemaTicket

--update  Nasreen_FA_CinemaTicket set film_type='Action',film_code=2120
---where cinema_code='71';

update Nasreen_FA_CinemaTicket set film_type='Triller',film_code=2025
where cinema_code=304;

------------------------------------target table-------------


CREATE TABLE Nasreen_FA_CinemaTicket_SCD1 (
    [Film_Type] nvarchar(255),
    [film_code] float,
    [cinema_code] float,
    [total_sales] float,
    [tickets_sold] float,
    [tickets_out] float,
    [show_time] float,
    [occu_perc] float,
    [ticket_price] float,
    [ticket_use] float,
    [capacity] float,
    [date] float,
    [month] float,
    [quarter] float,
    [day] float
)


select * from Nasreen_FA_CinemaTicket_SCD1


--drop table Nasreen_FA_CinemaTicket_trg

--update Nasreen_FA_CinemaTicket_trg set show_time=5 where cinema_code='304'

-------------------------------------source scd2 table--------------
CREATE TABLE Nasreen_FA_CinemaTicket_SCD2 (
    [Film_Type] nvarchar(255),
    [film_code] float,
    [cinema_code] float,
    [total_sales] float,
    [tickets_sold] float,
    [tickets_out] float,
    [show_time] float,
    [occu_perc] float,
    [ticket_price] float,
    [ticket_use] float,
    [capacity] float,
    [date] datetime,
    [month] float,
    [quarter] float,
    [day] float,
    [start_date] datetime,
    [End_date] datetime
)

select * from Nasreen_FA_CinemaTicket_SCD2

---truncate table Nasreen_FA_CinemaTicket_SCD2

alter table Nasreen_FA_CinemaTicket_SCD2 add Start_date datetime,End_date datetime;

--drop table Nasreen_FA_CinemaTicket_SCD2

---truncate table Nasreen_FA_CinemaTicket_SCD2




-------------------------------target------------------------



-------------------------------Flat file src to DB dst-----------------

CREATE TABLE FA_ff_to_sql(
    [Film_Type] varchar(50),
    [film_code] varchar(50),
    [cinema_code] varchar(50),
    [total_sales] varchar(50),
    [tickets_sold] varchar(50),
    [tickets_out] varchar(50),
    [show_time] varchar(50),
    [occu_perc] varchar(50),
    [ticket_price] varchar(50),
    [ticket_use] varchar(50),
    [capacity] varchar(50),
    [date] varchar(50),
    [month] varchar(50),
    [quarter] varchar(50),
    [day] varchar(50)
)


select * from FA_ff_to_sql

---Truncate table FA_ff_to_sql

-------------------------Aggregates table------------------

select  count(total_sales) as t_sales,
max(tickets_sold) as max_T_sold, max(ticket_price) as max_T_price, 
min(show_time) as min_S_time from Nasreen_FA_CinemaTicket

select distinct Film_Type from Nasreen_FA_CinemaTicket





















