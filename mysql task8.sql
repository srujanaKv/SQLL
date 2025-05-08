Create database college_info;
use college_info;

create table  student_info(
student_id int,student_name varchar(20),
student_branch varchar(20),college_name varchar(20),
student_age int);

create table college_info(
college_id int,student_id int,
college_name varchar(20),no_of_students bigint,
college_location varchar(20));

alter table student_info add constraint student_ids_pk primary key(student_id);

alter table student_info add constraint student_age_chk check(student_age>18);

alter table college_info add constraint student_id_fk foreign key(student_id) references student_info(student_id);

alter table college_info add constraint no_of_students_chk check(no_of_students>200);

alter table student_info  modify column college_name varchar(50);
/* insertion */
insert into  student_info values(1,'srujana k v','cs','kvg college',22);
insert into  student_info values(12,'vojeshwini','cs','kvg college of engg',22);
insert into  student_info values(13,'monisha','ec','Rv college of engg',22);
insert into  student_info values(14,'hruthik','civil','canara college of engg',22);
insert into  student_info values(15,'prithvi','mech','sahyadri college of engg',22);
insert into  student_info values(16,'ajay','civil','reva college of engg',22);
insert into  student_info values(17,'agasthya','mech','dayananda saraswathi',22);
insert into  student_info values(18,'amogha','cs','christ college of engg',22);
insert into  student_info values(19,'meghna','cs','kvg college of engg',22); 
insert into  student_info values(20,'chandraprabha','cs','kvg college of engg',22);
insert into  student_info values(21,'karthik','civil','srinivas college of engg',22);
insert into  student_info values(22,'aaryan','ec','pesat college of engg',22);
insert into  student_info values(23,'mohith','cs','MITE college of engg',22);
insert into  student_info values(24,'shraddha','ec','acharya college',22);
insert into  student_info values(25,'jhanvi','mech','christ college of engg',22);

select * from student_info;

insert into  college_info values(201,1,'kvg college',500,'sullia');
insert into  college_info values(202,12,'kvg college',400,'sullia');
insert into  college_info values(203,13,'Rv college',350,'Banglore');
insert into  college_info values(204,14,'canara college',300,'Manglore');
insert into  college_info values(205,15,'sahyadri college',250,'Manglore');
insert into  college_info values(206,16,'reva college',600,'Yelahanka');
insert into  college_info values(207,17,'dayananda saraswathi',700,'Bijapura');
insert into  college_info values(208,18,'Adhichunchanagiri',550,'hassan');
insert into  college_info values(209,19,'Christ University',800,'Rajajinagar'); 
insert into  college_info values(210,20,'Maharaja college',750,'Mysore');
insert into  college_info values(211,21,'Annamalai university',650,'kerala');
insert into  college_info values(212,22,'Acharya college',520,'jaynagara');
insert into  college_info values(213,23,'Srinivas college',250,'Davanagere');
insert into  college_info values(214,24,'Maharani college',250,'kalburgi');
insert into  college_info values(215,25,'PESAT college',400,'shivamogga');

select * from college_info;
 
 Alter table student_info add column student_percentage int;
 
 alter table college_info add column no_of_staffs int; 
 
 /*Renaming the column */
 Alter table student_info rename column student_percentage to no_of_subjects; 
 
Alter table student_info rename column student_branch to student_course; 
  
Alter table student_info rename column college_name to college_location; 

Alter table college_info rename column no_of_staffs to no_of_lectures;

Alter table college_info rename column college_name to name_of_college;

Alter table college_info rename column college_location to college_district;

Alter table student_info modify column no_of_subjects int;

Alter table student_info modify column student_course varchar(50);

Alter table student_info modify column college_location varchar(50);

Alter table college_info modify column no_of_lectures int; 

Alter table college_info modify column name_of_college varchar(50);

Alter table college_info modify column college_district varchar(50); 

//update query//

update student_info set no_of_subjects=5 where student_name='srujana k v';
update student_info set no_of_subjects=5 where student_name='vojeshwini';
update student_info set no_of_subjects=5 where student_name='monisha';
update student_info set no_of_subjects=5 where student_name='hruthik';
update student_info set no_of_subjects=5 where student_name='prithvi';

update student_info set student_course='engineering' where student_id='1';
update student_info set student_course='engineering' where student_id='12';
update student_info set student_course='engineering' where student_id='13';
update student_info set student_course='engineering' where student_id='14';
update student_info set student_course='engineering' where student_id='15';

update student_info set college_location='sullia' where student_id='1';
update student_info set college_location='sullia' where student_id='12';
update student_info set college_location='manglore' where student_id='13';
update student_info set college_location='banglore' where student_id='14';
update student_info set college_location='shivamogga' where student_id='15';


update college_info set no_of_lectures=12 where college_id=201;
update college_info set no_of_lectures=13 where college_id=202;
update college_info set no_of_lectures=14 where college_id=203;
update college_info set no_of_lectures=15 where college_id=204;
update college_info set no_of_lectures=11 where college_id=205;

update college_info set name_of_college='kvg college' where college_id=201;
update college_info set name_of_college='kvg college'where college_id=202;
update college_info set name_of_college='christ college'where college_id=203;
update college_info set name_of_college='reva college'where college_id=204;
update college_info set name_of_college='adhichunchanagiri'where college_id=205;


select count(*) as no_of_subjects from student_info;
select sum(no_of_students)as total_students from college_info;
select max(no_of_lectures)as max_of_lectures from college_info;
select min(no_of_subjects)as subjects from student_info;
select avg(no_of_students)as average_students from college_info;
select avg(no_of_subjects) as total_subjects from students_info group by student_name; 
select max(no_of_lectures)as total_lectures from college_info group by college_name having no_of_lectures>0;
select * from student_info where student_id=12 or student_name='vojeshwini';
select * from college_info where college_id in(202,205,208);
select * from  student_info where student_id not in(1,13,15,18); 
select * from college_info where name_of_college between 'Adhichunchanagiri' and 'Christ college';
 select * from college_info where college_id not between 205 and 209;

joins:

select * from student_info s innerjoin college_info c
 on s.student_id=c.student_id;
 
 
 select s.student_id,c.student_id from
 student_info s LEFT JOIN college_info c on
 s.student_id=c.student_id;

select s.student_id,c.student_id from
 student_info s RIGHT JOIN college_info c on
 s.student_id=c.student_id;

select student_id from student_information
union
select student_id from college_info;