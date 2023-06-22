-- create database abid
-- use abid;
create table department(
dept_id int not null,
dept_name varchar(200),
primary key(dept_id)
);

create table student(
stId int not null,
dept_id int not null,
stName varchar(200),
marks double,
primary key(stId),
foreign key(dept_id) references department(dept_id) on delete cascade
);





insert into department values(001,'mca');
insert into department values(002,'bca');
insert into department values(004,'b-tech');

insert into student values(1001,001,'Abid',98);
insert into student values(1002,002,'shahrukh',75);
insert into student values(1003,001,'saaz',65);
insert into student values(1004,004,'naier',60);
insert into student values(1006,002,'isma',55);
insert into student values(1007,004,'shan',50);
insert into student values(1008,001,'raaz',45);
insert into student values(1005,002,'sona',35);
insert into student values(1009,002,'dear',30);

select * from student;
-- desc student;

create table book(
bId int not null unique,
bAuthor varchar(200) unique
);
 insert into book values(110,'abid');
 insert into book values(115,'shahrukh');


select * from student where marks>75;


select * from student where marks<35;

select * from student where stName like's%';

select * from student where stName like 'aa%';

select marks from student order by marks asc;

select marks from student order by marks desc;

 select * from student where marks in(55,65,45);

select * from student where marks between 55 and 98;

create table Autotest(
name varchar(200),
roll int not null auto_increment,
primary key(roll)
);
alter table Autotest auto_increment=100;

insert into Autotest(name) values('abid');
insert into Autotest(name) values('abid');
insert into Autotest(name) values('abid');
insert into Autotest(name) values('abid');

select * from Autotest;


delete  from department;

select * from deparment;