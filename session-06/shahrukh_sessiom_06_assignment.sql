-- use project1;
create table department1
(
  deptId int,
  deptName varchar(100)
);

desc department1;
create table employe1
(
 empId int unique,
 deptId int not null,
 empName varchar(100) not null,
 empCity varchar(100) not null
 
);

insert into department1 values(301,'b tech');
insert into department1 values(302,'m tech');
insert into department1 values(303,'bca');
insert into department1 values(304,'mba');

insert into employe1 values(401,301,'shahrukh','bhagalpur');
insert into employe1 values(402,302,'abid','bhagalpur');
insert into employe1 values(403,303,'naier','purnea');
insert into employe1 values(404,304,'farid','bhagalpur');
insert into employe1 values(405,304,'gulab','kolkata');
select * from employe1;

select * from department1 d inner join employe1 e where d.deptId = e.deptId; 

select e.empId,e.empName,d.deptId, d.deptName,e.empCity from department1 d right join employe1 e on d.deptId = e.deptId; 

select e.empId,e.empName,d.deptId, d.deptName,e.empCity from department1 d left join employe1 e on d.deptId = e.deptId; 

select e.empId,e.empName,d.deptId, d.deptName,e.empCity from department1 d  join employe1 e on d.deptId = e.deptId; 

create table address
(
 addId int,
 state varchar(100),
 country varchar(50),
 primary key(addId)
);

create table student1
(
 stName varchar(100),
 marks double,
 gender varchar(1),
 addId int,
 foreign key(addId) references address(addId)
);

insert into address values(501,'bihar','india');
insert into address values(502,'jharkhand','usa');
insert into address values(503,'up','india');
insert into address values(504,'haryana','pakistan');
insert into address values(505,'mumbai','india');

insert into student1 values('shahrukh' ,95,'m',501);
insert into student1 values('abid' ,85,'m',502);
insert into student1 values('naier' ,75,'m',503);
insert into student1 values('isma' ,65,'f',504);

create view st_sc_max_sfi as select s.stName,s.gender,s.marks from student1 s
 where marks>75 and gender = 'm';
 select * from st_sc_max_sfi; 
 
 select stName,marks from student1 where addId in (select addId from address where state = 'bihar');