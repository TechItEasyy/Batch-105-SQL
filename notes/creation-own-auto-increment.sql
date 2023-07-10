-- Create a table with two colum, one will be increnmented by sql, other will be incremented manually 
CREATE TABLE AccountNumbers (
	userId  int not null primary key auto_increment,
    accountNumber INT NULL
)auto_increment = 1001;
-- over ride the delimiter with $$
DELIMITER $$
-- create a function which will generate account number starting from 52444
 create function generateAccountNumber()
 returns int
 deterministic
 begin
 	declare 
     v_accountNumber int;
     set v_accountNumber = 52443 + (select count(accountNumber) from AccountNumbers) + 1;
	 return v_accountNumber;
  end$$
-- restore the delimiter to ;
DELIMITER ;

-- while iserting into table call the function to get the next account number
insert into AccountNumbers(accountNumber) values(generateAccountNumber());
select * from AccountNumbers;

-- delete from AccountNumbers;
-- set sql_safe_updates = 0;
-- drop table AccountNumbers;
-- drop function generateAccountNumber;
