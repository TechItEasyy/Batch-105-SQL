create  table StudentN(
	student_id int not null primary key,
	dept_id int not null, 
	student_name varchar(255),	
	marks float not null)
	
	insert into StudentN values(1,	3,	'John Smith',	78.5);
	insert into StudentN values(2,	1,	'Emma Johnson',	92.3);
	insert into StudentN values(3,	2,	'Michael Brown', 85.0);
	insert into StudentN values(4,	1,	'Sophia Davis',	79.8);
	insert into StudentN values(5,	3,	'Ethan Wilson',	88.2);
	insert into StudentN values(6,	2,	'Olivia Lee',	95.5);
	insert into StudentN values(6, 2, 'Olivia Lee', 95.5);
	insert into StudentN values(7, 1, 'Noah Clark', 82.1);
	insert into StudentN values(8, 2, 'Ava Anderson', 91.7);
	insert into StudentN values(9, 3, 'William Lee', 76.4);
	insert into StudentN values(10, 1, 'Isabella Moore', 89.9);
	insert into StudentN values(11, 2, 'Liam Taylor', 87.6);
	insert into StudentN values(12, 3, 'Mia Martinez', 81.3);
    insert into StudentN values(13, 1, 'James Anderson', 90.2);
    insert into StudentN values(14, 3, 'Harper Wright', 83.9);
    insert into StudentN values(15, 2, 'Benjamin Hill', 92.7);
    insert into StudentN values(16, 1, 'Amelia Murphy', 79.1);
    insert into StudentN values(17, 3, 'Lucas Turner', 88.4);
    insert into StudentN values(18, 2, 'Evelyn Scott', 94.8);
    insert into StudentN values(19, 1, 'Oliver Baker', 85.6);
    insert into StudentN values(20, 3, 'Charlotte Ward', 77.2);


	Select * from StudentN

	--3. get the student details having maximum marks

	Select max(marks) as highest_marks from StudentN
 --  get the student details having minimum marks;

     Select min(marks) as lowest_marks from StudentN

 --  get count of the student

     select count(*) total_no_student from StudentN

 --  get average marks

     Select avg(marks) as avg_marks from StudentN

 --  get summation of all the marks

    Select sum(marks) as total_marks from StudentN

 --  get the student details whose marks is more than 75
     
	 Select * from StudentN
	 where marks >75
   
 --  get the student details whose marks is less than 35

     Select * from StudentN
	 where marks <35