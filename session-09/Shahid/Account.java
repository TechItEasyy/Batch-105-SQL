package com.jdbc.connectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Account {
	
	static final String DB_URL = "jdbc:mysql://localhost:3306/batch_105";
	static final String USER = "root";
	static final String PASS = "Shahid@0909";

	public static void main(String[] args) throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(DB_URL,USER,PASS);
			
			if(con.isClosed()) {
				System.out.println("Not stablish connection");
			}else {
				System.out.println("Connection stablished");
			}
		
			Statement stmt = con.createStatement();
			
			// Retrive.
			
			stmt.execute("insert into Account values('Charles',1125462,75000)");
			
			ResultSet rs = stmt.executeQuery("select * from Account");
			while (rs.next()) {
				System.out.println(rs.getString(1) + "  " + rs.getInt(2) + "  " + rs.getDouble(3));
			}
			
				//Update
				
				stmt.execute("update Account set accountNumber='1122334'where accountName = 'Charles'");
				
				rs = stmt.executeQuery("delete from Account ");
				while (rs.next()) {
				System.out.println(rs.getString(1) + "  " + rs.getInt(2) + "  " + rs.getDouble(3));
			}
				//Delete
				
				stmt.execute("DELETE FROM Account");
				
				rs = stmt.executeQuery("select * from Account ");
				while (rs.next()) {
					System.out.println(rs.getString(1) + "  " + rs.getInt(2) + "  " + rs.getDouble(3));
					
					String accountName = rs.getString(1);
					int accountNumber = rs.getInt(2);
					int accountBalance = rs.getInt(3);
					System.out.println("Account name is "+accountName+" Account number is "+accountNumber+" Account balence is "+accountBalance);
					
				}
				

		       }catch (ClassNotFoundException e) {
			    e.printStackTrace();
		}

	}

}
