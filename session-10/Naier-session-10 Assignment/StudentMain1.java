package com.student;


import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class StudentMain1 {

	public static void main(String[] args) throws SQLException, IOException {
		String DB_URL = "jdbc:mysql://localhost:3306/EmpDetails";
        String userName = "root";
		String pass = "Naierali3@";
		String insertQuery = "insert into Student values(?,?,?)";
		String selectStudent = "select * from Student";
		String outputFilePath = "C:\\Users\\Dell\\Desktop\\Sql\\Naier-session-9.txt";
		
		Connection con = DriverManager.getConnection(DB_URL,userName,pass);
		PreparedStatement pstmt = con.prepareStatement(insertQuery);
		
		if(con.isClosed()) {
			System.out.println("Connection Unsuccessfully");
		}else
		{
			System.out.println("Connection successfully");
		}
		
		    Student s = new Student();
			List<Student> listOfStudent = new LinkedList<Student>();
			
			ResultSet rse = pstmt.executeQuery(selectStudent);
		        while (rse.next()) {
				int studentId = rse.getInt(1);
				String StudentName = rse.getString(2);
				Double marks = rse.getDouble(3);
				
				s.setStudentId(studentId);
				s.setStudentName(StudentName);
				s.setMarks(marks);
				
				listOfStudent.add(s);
				
				// its programe create text file in folder  
				
				//System.out.println("User Id is "+userId+" User Name is "+userName+" Password is "+password);
			}
			
			FileUtility.writeIntoFile(outputFilePath, listOfStudent);
			
		
	}

}
