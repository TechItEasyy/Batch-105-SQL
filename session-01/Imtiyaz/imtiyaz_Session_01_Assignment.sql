create database Facebook;
Show Databases;
CREATE TABLE Account
(
userName varchar (155) not null,
password varchar (60) not null,
age int,
height double
);






insert into Account values ('Vikram','Vik@0099',33,6AccountAccount);
insert into Account values ('Sahrukh','Salman',null,null);
insert into Account values ('akram','chintu',null,null);
insert into Account values ('sifal','sif@34',18,5.6);
insert into Account values ('Sahrukh','Sah@223',21,5.9);
insert into Account values ('Minhaz','Min@33',24,6.1);
insert into Account values ('Salamn','Sal@887',26,5.8);
insert into Account values ('Sahtab','Saht@667',31,5.6);
insert into Account values ('sonu','Sonu23345',30,5.1);


Select * from Account;
SET SQL_SAFE_UPDATES = 0;

Update Account set age= 17 WHERE age = 24;

delete from account where height=6.1;

Select * from Account;
Update Account set age = 46 where userName = 'sonu';
select * from Account


TRUNCATE TABLE Account;

Select * from Account;







