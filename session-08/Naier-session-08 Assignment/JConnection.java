package com.employee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class JConnection {
	static final String DB_URL = "jdbc:mysql://localhost:3306/EmpDetails";
	static final String USER = "root";
	static final String PASS = "Naierali3@";
	
	 
	 
	public static void main(String[] args) {
		 String insertQuery = "insert into Employee values (?,?,?)";
		  String selectQuery = "select * from Employee";
		
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
			if(con.isClosed()) {
				System.out.println("Connection is not Established");
			}
			else
			{
				System.out.println("Connectionis Established");
	  		}
			
			PreparedStatement psmt = con.prepareStatement(insertQuery);
			
			JinputData jid = new JinputData();	
			
			jid.prepareListOfEmployee();   
			
			List<Employee1>listofEmp = jid.getEmplist();
			
			System.out.println("Numbers of Users in the list "+listofEmp.size());
			
			for(Employee1 e : listofEmp)
			{
				System.out.println("Employee Id is "+e.getEmp_id()+" Employee Name is "+e.getEname()+" Employee Salary is "+e.getSalary());
			}
			
			for(Employee1 e : listofEmp)
			{
				psmt.setInt(1, e.getEmp_id());
				psmt.setString(2, e.getEname());
				psmt.setDouble(3, e.getSalary());
				psmt.executeUpdate();
			}
			
			ResultSet rs= psmt.executeQuery(selectQuery);
			while(rs.next())
			{
				int Emp_id = rs.getInt(1);
				String Ename = rs.getString(2);
				double Salary = rs.getDouble(3);
				System.out.println("Employee Id is "+Emp_id+" Employee Name is "+Ename+" Salary is "+Salary);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
