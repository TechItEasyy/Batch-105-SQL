1. create a table department
	-dept_id int not null primary key
	-dept_name varchar
2. create a table Student
	-student_id int not null unique
	-dept_id foreign key(department->dept_id)
	-student_name not null varchar	
	-marks double
3. get the student details having maximum marks
   get the student details having minimum marks;
   get count of the student
   get average marks
   get summation of all the marks
   get the student details whose marks is more than 75
   get the student details whose marks is less than 35
4. get the student details whose name start from K
   get the student details whose has aa in their name
5. get student details in ascending order of marks
   get student details in descending order of marks
6. get student details whose marks in (55,65,85)
   get student details whose marks not in (55,65,85)
   get student details whose marks between 45 and 55
7. get count of student from each department
   get max of marks from each department
   get average of marks from each department
8. get count of student from each department having count more than 2
9. Select all the columns with aliasing
10.Create a backup table of Student 
