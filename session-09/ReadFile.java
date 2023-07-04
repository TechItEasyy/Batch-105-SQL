package com.jdbc.connectivity;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ReadFile {

	public static void main(String[] args) {
		//int arr[] = {1,2,3,4};
		try {
			Scanner sc = new Scanner(new File("D:\\admin\\util_project\\prdcts_mariadb_refdata_admin\\data\\Docs\\User-Data.txt"));
			while(sc.hasNextLine()) {
				String line = sc.nextLine();
				//System.out.println("line is "+line);
				String dataArray[] = line.split(";");
				
				//System.out.println("dataArray size "+dataArray.length);
				
				System.out.println("User Id "+ dataArray[0]);
				System.out.println("User Name "+ dataArray[1]);
				System.out.println("User Password "+ dataArray[2]);
				
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
