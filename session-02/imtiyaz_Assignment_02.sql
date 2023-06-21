create table Student
(rollNumber int null,
 stdName varchar(145),
 section varchar(232) default "c"
 );
 
 select * from Student
SET SQL_SAFE_UPDATES = 0;
 insert into Student(rollNumber,stdName) values(1,'alpha');
 insert into Student(rollNumber,stdName) values(2,'nagma');
 insert into Student(rollNumber,stdName) values(3,'rani');
 insert into Student(rollNumber,stdName) values(4,'soni');
 insert into Student(rollNumber,stdName) values(5,'moni');
 insert into Student(rollNumber,stdName) values(6,'nusrat');
 insert into Student(rollNumber,stdName) values(7,'siba');
 insert into Student(rollNumber,stdName) values(8,'mehak');
 insert into Student(rollNumber,stdName) values(9,'chandda');
 insert into Student(rollNumber,stdName) values(10,'rahul');
 insert into Student(rollNumber,stdName) values(11,'sohan');
 insert into Student(rollNumber,stdName) values(12,'mohan');
 insert into Student(rollNumber,stdName) values(13,'raju');
 insert into Student(rollNumber,stdName) values(14,'monu');
 insert into Student(rollNumber,stdName) values(15,'sanju');
 insert into Student(rollNumber,stdName) values(16,'ghalib');
 insert into Student(rollNumber,stdName) values(18,'monika');
 insert into Student(rollNumber,stdName) values(19,'nihrika');
 insert into Student(rollNumber,stdName) values(17,'ghajni');
 insert into Student(rollNumber,stdName) values(20,'samli');
 select * from Student
 
 -- Added column name addresses.
 
 SET SQL_SAFE_UPDATES = 0;
 ALTER TABLE Student ADD addresses varchar(355);
 
select * from Student

ALTER TABLE Student
modify rollNumber double;

select * from Student
ALTER TABLE Student
RENAME COLUMN stdName to StudentName;

select* from Student

