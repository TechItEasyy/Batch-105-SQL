package com.jdbc.connectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserManagement {
	//Step 1
	static final String DB_URL = "jdbc:mysql://localhost:3306/batch_105";
	static final String USER = "root";
	static final String PASS = "root";
	public static void main(String[] args) {
		
		try {
			//Step 2:
			Class.forName("com.mysql.jdbc.Driver");
			
			//Step 3:
			
			Connection con = DriverManager.getConnection(DB_URL,USER,PASS);
			
			if(con.isClosed()) {
				System.out.println("Could not stablish connection");
			}else {
				System.out.println("Connection stablished");
			}
			
			//Step 4:
			
			Statement stmt = con.createStatement();
			
			//insert into Users values(100,'Bob',pwd123)
			
			stmt.execute("insert into Users values(100,'Bob','pwd123')");
			
			//select * from Users;
			
			
			// Retrieval 
			ResultSet rs = stmt.executeQuery("select * from Users");
			while (rs.next()) {
				System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
			}
			
			//Update
			
			stmt.execute("update Users set pwd='pwd321'");
			
			rs = stmt.executeQuery("select * from Users");
			while (rs.next()) {
				System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
			}
			
			// Delete 
			//stmt.execute("delete from Users");
			rs = stmt.executeQuery("select * from Users");
			while (rs.next()) {
				//System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
				int userId = rs.getInt(1);
				String userName = rs.getString(2);
				String password = rs.getString(3);
				
				System.out.println("User Id is "+userId+" User Name is "+userName+" Password is "+password);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//Step 3
		

	}

}

// Exception -- Parent class
