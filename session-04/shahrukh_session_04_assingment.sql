-- use facebook;
create table department1
(
 deptId int not null,
 deptName varchar(100),
 primary key(deptId)
);
create table student1
(
 stdId int not null unique,
 deptId int not null,
 -- deptName varchar(100),
 stdName varchar(100),
 stdMarks double,
 foreign key(deptId) references department1(deptId)
 
);
insert into department1 values(101,'bca');
insert into department1 values(102,'mca');
insert into department1 values(103,'b-tech');
insert into department1 values(104,'m-tech');
select * from department1;
select * from student1;

alter table student1 drop column deptName;
insert into student1 values(1001,101,'naier',25);
insert into student1 values(1002,101,'abid',98);
insert into student1 values(1003,102,'shahrukh',55);
insert into student1 values(1004,102,'raj',45);
insert into student1 values(1005,103,'amit',38);
insert into student1 values(1006,103,'farid',46);
insert into student1 values(1007,104,'rehan',58);
insert into student1 values(1008,104,'gulab',65);
insert into student1 values(1009,102,'fraz',75);
insert into student1 values(1010,101,'areeb',85);
insert into student1 values(1010,101,'aareeb',85);
select * from student1 where stdMarks > 75;
select * from student1 where stdMarks < 35;
select max(stdMarks) from student1;
select min(stdMarks) from student1;

select sum(stdMarks) from student1;
select count(stdMarks) from student1;
select avg(stdMarks) from student1;
select * from student1 where stdName like 'k%';
select * from student1 where stdName like 'aa%';
select * from student1 where stdName like '%ee%';
select stdMarks from student1 order by stdMarks asc;

select stdMarks from student1 where stdMarks in (55,65,75);
select stdMarks from student1 where stdMarks not in (55,65,75);
select stdMarks from student1 where stdMarks between 65 and 95;

 create table backup select * from student1;
 
 select * from backup;
 
 drop table student1;


