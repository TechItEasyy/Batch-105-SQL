-- use facebook
create table student(
rollNumber int not null,
StudentName varchar(100),
Section varchar(200) default 'c'
);
-- select * from student


insert into student(rollNumber,StudentName) 
values(001,"Naier"),(1002,"Abid"),(1002,"Sharukh"),(1003,"Deepak"),(1004,"Mayank"),(1005,"Salman"),
(1006,"Gaurav"),(1007,"Hannan"),(1008,"Gautam"),(1009,"Sharik"),(1010,"Sonu");

-- select * from student

alter table student add address varchar(100);
-- select * from student

alter table student modify column rollNumber double;

desc student;

ALTER TABLE student
RENAME COLUMN StudentName TO Student_Name;

desc student;