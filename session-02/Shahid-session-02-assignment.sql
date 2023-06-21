show databases;
use batch105;
create table Student1 
(
roll_no int not null,
std_name varchar(20),
std_section varchar(1) DEFAULT 'c'
);

select * from Student1;

insert into Student1(roll_no,std_name) values(1,'Abhay k');
insert into Student1(roll_no,std_name) values(2,'Asish k');
insert into Student1(roll_no,std_name) values(3,'Arpna k');
insert into Student1(roll_no,std_name) values(4,'Aakriti k');
insert into Student1(roll_no,std_name) values(5,'Aryan k');
insert into Student1(roll_no,std_name) values(6,'boby k');
insert into Student1(roll_no,std_name) values(7,'Cindrella');
insert into Student1(roll_no,std_name) values(8,'A k');
insert into Student1(roll_no,std_name) values(9,'Akshay kr');
insert into Student1(roll_no,std_name) values(10,'Abhay k');
insert into Student1(roll_no,std_name) values(11,'Tisha k');
insert into Student1(roll_no,std_name) values(12,'Disha k');
insert into Student1(roll_no,std_name) values(13,'Kajal k');
insert into Student1(roll_no,std_name) values(14,'sentella');
insert into Student1(roll_no,std_name) values(15,'Ganga k');
insert into Student1(roll_no,std_name) values(16,'Pradip k');
insert into Student1(roll_no,std_name) values(17,'Amit k');
insert into Student1(roll_no,std_name) values(18,'Rajesh k');
insert into Student1(roll_no,std_name) values(19,'Abhishek k');
insert into Student1(roll_no,std_name) values(20,'Chandramohan k');
insert into Student1(roll_no,std_name) values(15,'Ganga k');

select * from Student1;

-- Add column.

ALTER TABLE Student1 ADD adress varchar(15);

select * from Student1;


-- Update column name.

ALTER TABLE Student1
modify roll_no double;

select * from Student1;


-- Rename column name.

ALTER TABLE Student1
RENAME COLUMN std_name to Student_name;

select * from Student1;