package com.connectivity;
import java.sql.*;
public class UserManagement {

	
	public static void main(String[] args) {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/batch_105","root","Root");
		if(con.isClosed())
		{
			System.out.println(" not connected");
		}
		else {
			System.out.println(" connected");
		}
		Statement st=con.createStatement();
		st.execute(" insert into user values(1001,'Abid',723535)");
		st.execute(" insert into user values(1002,'shahrukh',28535)");
		st.execute(" insert into user values(1003,'naier',100535)");
		
		// Retrieval 

		ResultSet rs=st.executeQuery("select* from User");
		while(rs.next())
		{
			System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
		}
		
		//Update
		
		st.execute("update User set password=12345");
		rs=st.executeQuery("select* from User");
		while(rs.next())
		{
			System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
		}
		//st.execute("delete from User");
		rs=st.executeQuery("select* from User");
		while(rs.next())
		{
			//System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
			int id=rs.getInt(1);
			String name=rs.getString(2);
			int pass=rs.getInt(3);
			System.out.println("id "+id+" name "+name+" password "+pass);
		}
		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
