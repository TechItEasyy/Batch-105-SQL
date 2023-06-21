-- use facebook
create table student
(
rollno int not null,
name varchar(200),
section varchar(100) default 'c'
);
insert into student values(1,'abid');
insert into student values(2,'naier');
insert into student values(3,'shahrukh');
insert into student values(4,'saaz');
insert into student values(5,'shan');
insert into student values(6,'sona');
insert into student values(7,'saira');
insert into student values(8,'salman');
insert into student values(9,'shan');
insert into student values(10,'minhaz');
insert into student values(11,'asif');
insert into student values(12,'sakib','a');
insert into student values(13,'akif');
insert into student values(14,'tazim');
insert into student values(15,'raaz');
insert into student values(16,'saif');
insert into student values(17,'samar');
insert into student values(18,'munnu');
insert into student values(19,'ayman');
insert into student values(20,'minhaz','b');

select * from student;

-- using alter

alter table student add address varchar(300);

-- modify table

alter table student modify column rollno double;

-- descendig
 desc student;
 
 -- rename table
 
 alter table student rename column name to StName;
 alter table student rename column rollno to RollNo;
 
 
 
 