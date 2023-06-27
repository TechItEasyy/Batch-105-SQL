use facebook;
create table Department
(
Dept_id int not null unique,
Dept_Name varchar(100) not null
);

desc Department;
select * from Department;
insert into Department(Dept_id,Dept_Name)values(01,"MCA"),(02,"MBA"),
(03,"BCA"),(04,"Mcom"),(05,"MSC");


create table Employee
(
Emp_id int not null unique,
Dept_id int not null,
Emp_Name varchar(100) not null,
Emp_city varchar(100) not null
);

desc Employee;
select * from Employee;

insert into Employee(Emp_id,Dept_id,Emp_Name,Emp_city)
values(101,01,"Sharukh","Bhagalpur"),
(102,02,"Deepak","Banmankhi"),
(103,03,"Rajesh","Puenia"),
(104,02,"Abid","Patna"),
(105,04,"Gaurav","Madhepura"),
(106,03,"Agniwesh","Munger");

 -- inner join
 
 select e.Dept_id,d.Dept_id,d.Dept_Name,e.Emp_id,e.Emp_Name,e.Emp_city from Department d
 inner join Employee e on e.Dept_id = d.Dept_id;
 
 -- left  join
 
 select d.Dept_id,d.Dept_Name,e.Emp_id,e.Emp_Name,e.Emp_city from Department d
 left join Employee e on e.Dept_id = d.Dept_id;

-- Right join

select e.Dept_id,d.Dept_id,d.Dept_Name,e.Emp_id,e.Emp_Name,e.Emp_city from Department d
Right join Employee e on e.Dept_id = d.Dept_id;

--  join

select e.Dept_id,d.Dept_id,d.Dept_Name,e.Emp_id,e.Emp_Name,e.Emp_city from Department d
join Employee e where e.Dept_id = d.Dept_id;


create table Student1
(
StName Varchar(200) not null,
marks double not null,
gender varchar(6) not null, 
addressId int not null,
Foreign key(addressId) references Address(addressId)
 );
  desc Student1;
  select * from Student1;
  
 insert into Student1(StName,marks,gender,addressId)
 values("Sharukh",55,"Male",10001),
 ("Deepak",80,"Male",10002),
 ("Abid",70,"Male",10001),
 ("Sadia",90,"Female",10003),
 ("Gautam",85,"Male",10002),
 ("Rani",60,"female",10003);
 
 
 create table Address
 (
 addressId int not null  primary key ,
 state varchar(200) not null,
 country varchar(100) not null
 );
 
 desc Address;
 select * from Address;
 
 insert into Address(addressId,state,country)
 values(10001,"Bihar","India"),
 (10002,"DHAKA","Bangladesh"),
 (10003,"Cicago","America");
 
 create view HighScoringMaleStudents as 
 select st.StName,st.marks from Student1 st where st.marks  > 75 and st.gender ="Male";
 
 select * from HighScoringMaleStudents;
 
 select st.StName,st.marks from Student1 st 
 where st.addressId in (select addressId from Address where state="bihar"); 
