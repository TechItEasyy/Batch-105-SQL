package com.connectivity;
import java.sql.*;
public class Account {
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/batch_105","root","Root");
		if (con.isClosed())
		{
			System.out.println("not connected");
		}
		else {
			System.out.println("connected");
		}
		Statement stmt=con.createStatement();
		stmt.execute("insert into Account values('Abid',5952375,20000)");
		stmt.execute("insert into Account values('shahrukh',8758338,340000)");
		stmt.execute("insert into Account values('naier',5684780,98000)");
		ResultSet rs = stmt.executeQuery("select * from Account");
		while (rs.next()) {
			System.out.println(rs.getString(1) + "  " + rs.getInt(2) + "  " + rs.getDouble(3));
		}
		
		//Update
		
				stmt.execute("update User set password=12345");
				rs=stmt.executeQuery("select* from User");
				while(rs.next())
				{
					System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
				}
				//st.execute("delete from User");
				rs=stmt.executeQuery("select* from User");
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
	catch(Exception e) {
		e.printStackTrace();
	}
	}
}
