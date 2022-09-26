CREATE TABLE dep
(
D_name varchar(30),
D_number int primary key,
D_address varchar(30)
)

insert into dep values('fayaz',102,'xyz')
insert into dep values('varun',112,'rty')
insert into dep values('vinith',212,'dfg')

select * from dep

---------------------------------------------------
create table stud 
(
S_id int,
S_name varchar(30),
S_age int
)
 insert into stud values (55,'xyz',12);
 insert into stud values (32,'bgh',11);

SELECT * from stud 

drop table stud;
TRUNCATE table stud;

----DELETE --------------------------
--DELETE from stud;

-----DELETE with condition----------------
DELETE from stud where S_id=32;

-------update---------------------------------
UPDATE stud set S_name='fayaz';

------------update with condition-----------------------
UPDATE stud set S_name='fayaz'where S_name='xyz';

----------alter commands-----------------------------
ALTER table stud ALTER column S_name varchar;

ALTER table stud ADD S_class int;

--ALTER table stud RENAME COLUMN S_class to S_marks;

ALTER table stud MODIFY column S_name varchar(10) ;

ALTER table stud ALTER column S_name varchar;

ALTER table stud drop column S_class;

EXEC sp_RENAME 'stud.S_name','S_marks','column';
--exec sp_rename 'tablename.oldcolumnname','newcolumnname','column';---



--------------------------------------------
CREATE TABLE dep
(
D_id int,
D_name varchar(30),
D_address varchar(30)
)

insert into dep values(102,'fayaz','parvati nagar')
insert into dep values(112,'varun','global village')
insert into dep values(212,'vinith','kengeri')

select * from dep

--truncate table dep












