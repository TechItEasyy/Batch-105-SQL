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
		String USER = "root";
		String PASS = "root";
		String insertQuery = "insert into Users values(?,?,?)";
		String selectQuery = "select * from Users";
		try {
			//file
			Scanner sc = new Scanner(new File("D:\\admin\\util_project\\prdcts_mariadb_refdata_admin\\data\\Docs\\User-Data.txt"));
			//db
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_URL,USER,PASS);
			PreparedStatement pstmt = con.prepareStatement(insertQuery);
			
			while(sc.hasNextLine()) {
				String line = sc.nextLine();
				//System.out.println("line is "+line);
				String dataArray[] = line.split(";");
				
				//System.out.println("dataArray size "+dataArray.length);
				
				System.out.println("User Id "+ dataArray[0]);
				System.out.println("User Name "+ dataArray[1]);
				System.out.println("User Password "+ dataArray[2]);
				int userId = Integer.parseInt(dataArray[0]);
				pstmt.setInt(1, userId);
				//pstmt.setInt(1, Integer.parseInt(dataArray[0]));
				pstmt.setString(2, dataArray[1]);
				pstmt.setString(3, dataArray[2]);
				pstmt.executeUpdate();
				
			}
			
			ResultSet rs = pstmt.executeQuery(selectQuery);
			while (rs.next()) {
				int userId = rs.getInt(1);
				String userName = rs.getString(2);
				String password = rs.getString(3);
				
				System.out.println("User Id is "+userId+" User Name is "+userName+" Password is "+password);
			}
			
		} catch (FileNotFoundException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
