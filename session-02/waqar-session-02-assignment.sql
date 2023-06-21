
create table Student 
(
rollNumber int not null,
std_name varchar(255),
section varchar(255) DEFAULT 'C'
);



insert into Student(rollNumber,std_name) values(1,'Diksha');
insert into Student(rollNumber,std_name) values(2,'Bilal');
insert into Student(rollNumber,std_name) values(3,'Jyoti');
insert into Student(rollNumber,std_name) values(4,'Adarsh');
insert into Student(rollNumber,std_name) values(5,'Vinay');
insert into Student(rollNumber,std_name) values(6,'Jatin');
insert into Student(rollNumber,std_name) values(7,'Suresh');
insert into Student(rollNumber,std_name) values(8,'Nikhil');
insert into Student(rollNumber,std_name) values(9,'Akhil');
insert into Student(rollNumber,std_name) values(10,'Komal');
insert into Student(rollNumber,std_name) values(11,'Rajesh');
insert into Student(rollNumber,std_name) values(12,'Amit');
insert into Student(rollNumber,std_name) values(13,'Piyush');
insert into Student(rollNumber,std_name) values(14,'Surbhi');
insert into Student(rollNumber,std_name) values(15,'Jaya');
insert into Student(rollNumber,std_name) values(16,'Abhay');
insert into Student(rollNumber,std_name) values(17,'Sunny');
insert into Student(rollNumber,std_name) values(18,'Avinash');
insert into Student(rollNumber,std_name) values(19,'Aatif');
insert into Student(rollNumber,std_name) values(20,'Aasif');


select * from Student;

-- Added column name addresses.

ALTER TABLE Student ADD addresses varchar(255);

select * from Student;


-- Update column name.

ALTER TABLE Student
alter column rollNumber float;

select * from Student;


-- Rename column name.



EXEC sp_rename 'Student.Std_name', 'Student_name', 'COLUMN'


select * from Student;