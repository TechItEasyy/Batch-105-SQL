package com.session08;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserManagement2 {

	
		//Step 1
		static final String DB_URL = "jdbc:mysql://localhost:3306/batch_105";
		static final String USER = "root";
		static final String PASS = "root";
		public static void main(String[] args) {
			
			String insertQuery = "insert into Users values(?,?,?)";
			
			String selectQuery = "select * from Users";
			
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
				
				//Statement stmt = con.createStatement();
				
				PreparedStatement pstmt = con.prepareStatement(insertQuery);
				
				InputData  id = new InputData();
				
				id.prepareListOfUsers();
				
				List<Users> listOfUsrs = id.getUserList();
				
				System.out.println("Number of Users in the list "+listOfUsrs.size());
				
				for(Users u : listOfUsrs) {
					System.out.println("User id "+u.getUserId()+ "User Name "+u.getUserName()+" Password "+u.getPassword());
				}
				
				for(Users u : listOfUsrs) {
					pstmt.setInt(1, u.getUserId());
					pstmt.setString(2, u.getUserName());
					pstmt.setString(3, u.getPassword());
					pstmt.executeUpdate();
				}
				
				
//				pstmt.setInt(1, 1);
//				pstmt.setString(2, "Sameer k");
//				pstmt.setString(3, "pwd1234");
				
				//insert into Users values(100,'Bob',pwd123)
				
//				stmt.execute("insert into Users values(100,'Bob','pwd123')");
//				stmt.execute("insert into Users values(101,'Bob1','pwd123')");
//				stmt.execute("insert into Users values(102,'Bob2','pwd123')");
//				stmt.execute("insert into Users values(103,'Bob3','pwd123')");
//				stmt.execute("insert into Users values(104,'Bob4','pwd123')");
				
				//select * from Users;
				
				
				// Retrieval 
				
				ResultSet rs = pstmt.executeQuery(selectQuery);
				while (rs.next()) {
					int userId = rs.getInt(1);
					String userName = rs.getString(2);
					String password = rs.getString(3);
					
					System.out.println("User Id is "+userId+" User Name is "+userName+" Password is "+password);
				}
				
				//Update
				/*
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
				*/
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//Step 3
			


	}

}
