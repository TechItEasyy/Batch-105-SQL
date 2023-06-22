-- use abid;
create table Examples(
 Name varchar(200),
 age int
 );
 
 -- USING INSERT COMMAND
 
 insert into Examples values('Abid',22);
 insert into Examples values('shahrukh',24);
 insert into Examples values('naier',32);
 insert into Examples values('sona',10);
 insert into Examples values('baba',40);
    
    select * from Examples;
    
    -- USING WHERE CLAUSE AND UPDATE
    
    update  Examples set Name ='farhan' where age=10;
    
        select * from Examples;

   -- USING DELETE WITH WHERE CLAUSE

delete from Examples where age=32;

        select * from Examples;


        -- USING LIKE


        select * from Examples where Name like 'f%';
        
                select * from Examples;


           --  USING IN


select  Name,age from Examples where Name in('Abid','shahrukh');


       -- USING NOT IN


select  Name,age from Examples where Name not in('Abid','shahrukh');


            -- USING BETWEEN and AND 


select  * from Examples where age  between 24 and 22;



		





    
    
