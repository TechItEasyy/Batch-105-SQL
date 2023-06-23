create database Naier;
use Naier;

create table Department
(
dept_id int not null primary key,
dept_name varchar(100)
);
desc Department;
insert into Department(dept_id,dept_name)
values(01,"MCA"),(02,"Msc"),(03,"BioTech"),(04,"MBA");

select * from Department;
 
 CREATE TABLE Student (
    student_id int not null unique,
    dept_id int,
    student_name varchar(255) not null,
    marks Double,
    foreign key (dept_id) references Department (dept_id)
);
desc Student;

insert into Student(student_id,dept_id,student_name,marks)
values(1,01,"Naier",80.5),(2,01,"Taushif",70.5),(3,01,"Saif",65.5),(4,01,"Sharik",60.5),
(5,02,"Ganpati",45),(6,02,"Sonu",55),(7,02,"Gaurav",60),(8,02,"Isma",65),
(9,03,"Sadia",45),(10,03,"Warsha",90),(11,03,"Sabbir",66),(12,03,"Sadia",80),
(13,04,"Rahul",60),(14,04,"Rishab",70),(15,04,"Rani",65),(16,04,"Salman",55);

select * from Student;
SELECT * FROM Student WHERE marks = (SELECT MAX(marks) FROM Student);
SELECT * FROM Student WHERE marks = (SELECT MIN(marks) FROM Student);

SELECT COUNT(*) FROM Student;
SELECT AVG(marks) FROM Student;
SELECT SUM(marks) FROM Student;

select * from Student where marks > 75;
select * from Student where marks<50;

select * from Student where student_name like 'G%';
SELECT * FROM Student WHERE student_name LIKE '%bb%';

select * from Student order by marks asc;
select * from Student order by marks desc;

select * from Student where marks in (55, 65, 85);
select * from Student  where marks not in (55, 65, 85);
select * from Student where marks between 45 and 55;

-- select dept_id, COUNT(*) as student_count from Student group by dept_id;
-- select dept_id, MAX(marks) as max_marks from Student group by dept_id;
-- select dept_id, avg(marks) as avg_marks from Student group by dept_id;
-- select dept_id, COUNT(*) as student_count from Student group by dept_id having COUNT(*) > 2;
-- select student_id as ID, dept_id as DepartmentID, student_name as name, marks asScore from Student;
create table StudentBackup as select * from Student;
desc StudentBackup;











