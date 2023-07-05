package com.jdbc.connectivity;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class FileToDb {
	
	
	public static void main(String[] args) {
		  String DB_URL = "jdbc:mysql://localhost:3306/batch_105";
		  String USER="root";
		  String PASS = "Patna@2022";
		  String insertQuery = "insert into employee values(?,?,?)";
		  String selectquery = "Select * from employee";

		try {
			//file reading
			Scanner sc = new Scanner(new File("E:\\Data.txt"));
			//connecting to db
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			
			while(sc.hasNextLine()) {
				String line = sc.nextLine();
//				System.out.println("line is "+ line);
				String dataArray[]=line.split(";");
				
//				System.out.println("DataArray size is "+ dataArray.length);
				
				System.out.println("empId "+dataArray[0]);
				System.out.println("EmpName "+dataArray[1]);
				System.out.println("Salary "+dataArray[2]);
				
				
				
				int empId = Integer.parseInt(dataArray[0]);
//				int Salary = Integer.parseInt(dataArray[2])
				double Salary =Double.parseDouble(dataArray[2]);
				
				pstmt.setInt(1, empId);
				pstmt.setString(2, dataArray[1]);
//				pstmt.setInt(3, Salary);
				pstmt.setDouble(3, Salary);
				pstmt.executeUpdate();
			}
			
			ResultSet rs = pstmt.executeQuery(selectquery);
			
			while(rs.next()) {
				int empId = rs.getInt(1);
				String EmpName = rs.getString(2);
				double Salary = rs.getDouble(3);
				
				System.out.println("empId is "+empId+" EmpName is "+EmpName+" Salary is "+Salary);
				
			}
			
		} catch (FileNotFoundException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
