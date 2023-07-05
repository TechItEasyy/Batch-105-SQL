package com.jdbc.connectivity;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class FileToDbAndDbToFile {

	public static void main(String[] args) throws IOException {
		String DB_URL = "jdbc:mysql://localhost:3306/batch_105";
		String USER = "root";
		String PASS = "root";
		String insertQuery = "insert into Users values(?,?,?)";
		String selectQuery = "select * from Users";
		
		String selectEmployee = "select * from Employee";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_URL,USER,PASS);
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			
			String inputFilePath = "D:\\admin\\util_project\\prdcts_mariadb_refdata_admin\\data\\Docs\\TestFile.txt";
			String outputFilePath = "D:\\\\admin\\\\util_project\\\\prdcts_mariadb_refdata_admin\\\\data\\\\Docs\\\\Employee-List.txt";
			List<Users> listOfUsers = FileUtility.readFromFile(inputFilePath);
			
			for(Users u: listOfUsers) {
				pstmt.setInt(1, u.getUserId());
				pstmt.setString(2, u.getUserName());
				pstmt.setString(3, u.getPassword());
				pstmt.executeUpdate();
			}
			ResultSet rs = pstmt.executeQuery(selectQuery);
			while (rs.next()) {
				int userId = rs.getInt(1);
				String userName = rs.getString(2);
				String password = rs.getString(3);				
				System.out.println("User Id is "+userId+" User Name is "+userName+" Password is "+password);
			}
			//Reading Employees
			Employee e = new Employee();
			List<Employee> listOfEmployees = new LinkedList<>();
			
			ResultSet rse = pstmt.executeQuery(selectEmployee);
			while (rse.next()) {
				int empId = rse.getInt(1);
				String empName = rse.getString(2);
				Double salary = rse.getDouble(3);
				
				e.setEmployeeId(empId);
				e.setEmpName(empName);
				e.setSalary(salary);
				
				listOfEmployees.add(e);
				
				//System.out.println("User Id is "+userId+" User Name is "+userName+" Password is "+password);
			}
			
			FileUtility.writeIntoFile(outputFilePath, listOfEmployees);
			
			
						
		} catch (FileNotFoundException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
