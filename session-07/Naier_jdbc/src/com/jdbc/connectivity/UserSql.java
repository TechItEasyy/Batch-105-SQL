package com.jdbc.connectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserSql {
	static final String DB_URL = "jdbc:mysql://localhost:3306/Assignment_JDBC";
	static final String USER = "root";
	static final String PASS = "Naierali3@";

	public static void main(String[] args) {
		try
		{
			//Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(DB_URL,USER,PASS);
			
			if(con.isClosed()) {
				System.out.println("Could not stablish connection");
			}else {
				System.out.println("Connection stablished");
			}
			
			// insert command
			
			Statement st = con.createStatement();
			st.execute("insert into Account1(accountName,accountNumber,accountBalance) values('Naier',123456789,3000),('Sharukh',11223344,5000),('Saif',111222,2000)");
			
			
			// Select Command
			
			ResultSet rs = st.executeQuery("select * from Account1");
			
			while (rs.next()) {
				System.out.println(rs.getString(1) + "  " + rs.getInt(2) + "  " + rs.getDouble(3));
			}
			
			// update command
			
			
			st.execute("update Account1 set accountName='Abid' where accountNumber=123456789");
			rs = st.executeQuery("select * from Account1");
			while(rs.next()){
				
				System.out.println(rs.getString(1)+ " "+rs.getInt(2)+ " "+ rs.getDouble(3));
			}
			
			
			// Delete Command
			//st.execute(delete from Account1 where accountName='Abid');
			rs = st.executeQuery("Select * From Account1");
			while(rs.next()) {
				String accountName = rs.getString(1);
				int accountNumber = rs.getInt(2);
				Double accountBalance = rs.getDouble(3);
				
				System.out.println(" Account Name is "+accountName+" Account Number is "+accountNumber+" Account Balance is "+accountBalance);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
