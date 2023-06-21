-- create database facebook

-- use facebook

-- create table account(
 -- userName varchar(100),
 -- password  varchar(100),
 -- age int,
  -- height double
  -- );

-- desc account1;

 insert into account(userName,password,age,height) 
 values
 ("Naier","1111111",25,5.9),("Sharukh","2222222",17,5.3),
 ("Abid","33333333",19,5.6),("Deepak","44444444",25,5.8),
 ("Taushif","5555555",27,5.9),("Saif","666666666",20,5.7),
 ("Rajesh","77777777",28,5.5),("Sharik","8888888",25,5.4),
 ("Arzoo","999999999",23,5.2),("Salman","1010101010",19,5.8);
-- select * from account
-- insert into account(userName,password)values("Abhiraj","1212121212"),
 -- ("Sonu raj","13131313");

-- select * from account;
  -- set sql_safe_updates = 0;
  -- delete from account where age = 17;

-- update account set password="Naier123" where userName="Naier";
-- select userName, height from account