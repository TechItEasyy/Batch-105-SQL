package com.java.connectivit;
import java.sql.*;
public class UserManagement
{
  static final String DB_URL = "jdbc:mysql://localhost:3306/batch_105";
  static final String USER = "root";
  static final String PASS = "root";
	public static void main(String[] args) 
	{
		try
		{
	       //		step2
			Class.forName("com.mysql.cj.jdbc.Driver");
			
//            Step3
			Connection con = DriverManager.getConnection(DB_URL,USER,PASS);
			
			if(con.isClosed())
			{
				System.out.println("could not stablished connection");
			}
			else
			{
				System.out.println("connection stablished");
			}
			
			// Step4
			Statement st = con.createStatement();
			//insert into user value(100,'shahrukh',12345)
			
			st.execute("insert into User values(100,'shahrukh',12345)");	
			st.execute("insert into User values(200,'abid',7895)");
			
			
			// select * from User;
			// retrieval
			ResultSet rs = st.executeQuery("select * from User");
			while(rs.next())
			{
	            System.out.println(rs.getInt(1)+" "+rs.getString(2)+ " "+ rs.getInt(3));
				
			}
			
		//	updte
			st.execute("update User set UPass = 54321 where UName = 'shahrukh'");
			rs= st.executeQuery("select * from User");
			while(rs.next())
			{
				System.out.println(rs.getInt(1)+" "+rs.getString(2)+ " "+ rs.getInt(3));
			}
			// delete 
//			 st.execute("delete from User");
			rs= st.executeQuery("select * from User");
			while(rs.next())
			{
//				System.out.println(rs.getInt(1)+" "+rs.getString(2)+ " "+ rs.getInt(3));
				
				int UId = rs.getInt(1);
				String UName = rs.getString(2);
				int UPass = rs.getInt(3);
				
				System.out.println("User Id is"+UId+"User Name is"+UName+"pass is"+UPass);
				
			}
			
			
			
			
		} catch (ClassNotFoundException | SQLException e)
		{
		  e.printStackTrace();
		}
	}

}
