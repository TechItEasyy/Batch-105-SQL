package com.jdbc.connectivity;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class FileUtility {
	public static void writeIntoFile(String filePath, List<Employee> listOfEmployees) throws IOException {
		
		FileWriter fw = new FileWriter(filePath);
		
		for(Employee e : listOfEmployees) {
			
			int eId = e.getEmployeeId();
			String name = e.getEmpName();
			Double salary = e.getSalary();
			/*
			  \n -> new line
			  \t -> tab
			 
			 */
			
			fw.write(eId + "#" + name + "#" + salary+"\n");
		}
		fw.close();
		
	}
	
	public static List<Users> readFromFile(String filePath) throws FileNotFoundException {
		
		Scanner sc = new Scanner(new File(filePath));
		
		Users u = new Users();
		
		List<Users> list = new ArrayList<Users>();
		
		while(sc.hasNextLine()) {
			String line = sc.nextLine();
			String dataArray[] = line.split(";");
			
			int userId = Integer.parseInt(dataArray[0]);
			
			u.setUserId(userId);
			u.setUserName(dataArray[1]);
			u.setPassword(dataArray[2]);
			
			list.add(u);
			
		}
		
		return list;
	}
}
