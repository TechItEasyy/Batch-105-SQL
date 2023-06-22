  create database university ;
  
  use University;
  
 create table department(
dept_id int not null  primary key ,
 dept_name varchar(100)
 );
 
 desc department;
 
 insert into department(dept_id,dept_name)
values(1001,"Mathematics Department"),(1002,"MCA Department"),
 (1003,"MBA Department"),(1004,"Msc Department");

select * from department;

 create table Student1(
  student_id int not null unique,
  dept_id int ,
  student_name varchar(255) not null,
  marks double,
  foreign key (dept_id) references department(dept_id)
 );
 desc Student1;
insert into Student1(student_id,student_name,marks)
values(101,"Anwar",85),(102,"Abhiraj",78),(103,"Ritesh",66),(104,"Anwar",42),
(105,"Salman",60),(106,"Hannan",69),(107,"Rishab",82),(108,"Sadia",65),
(109,"Gaurav",45),(110,"Taushif",55),(111,"Naznee",80),(112,"Ganpati",44),
(113,"Sharik",65),(114,"Naier",80),(115,"Sonu",53),(116,"Saif",77);

select * from Student1;
  create table book(
  book_ID varchar(100) unique,
 Author_Name varchar(100) unique
);

desc book;

SELECT * FROM Student1 WHERE marks > 75;

select * from Student1 where marks < 35;

select * from Student1 where student_name like 'G%';

-- select * from Student1 where student_name like '%aa%';

select * from Student1 order by marks asc;

select * from Student1 order by marks desc;

SELECT * FROM Student1 WHERE marks IN (69, 78,80);

SELECT * FROM Student WHERE marks NOT IN (42, 45, 54);

SELECT * FROM Student WHERE marks BETWEEN 45 AND 55;

SELECT * FROM Student WHERE marks BETWEEN 44 AND 80;

CREATE TABLE AutoTest (
  testId INT auto_increment primary key,
  Name varchar(100),
  address varchar(100)
) ;
alter table AutoTest auto_increment = 100;

desc AutoTest;

insert into AutoTest(testId,Name,address) 
values(default,"deepak","banmankhi"),(default,"Abid","bhagalpur"),
(default,"chandan","patna"),(default,"rahul","madhepura"),
(default,"Faiz","purnea");

select * from AutoTest;

DELETE FROM department WHERE dept_id = 1001;


