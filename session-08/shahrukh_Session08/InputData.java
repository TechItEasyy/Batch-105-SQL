package com.session08;
import java.util.ArrayList;
import java.util.List;
public class InputData {
	List<Users> userList = new ArrayList<Users>();

	public List<Users> getUserList() {
		return userList;
	}

	public void setUserList(List<Users> userList) {
		this.userList = userList;
	}
	
	public void prepareListOfUsers() {
		Users  u1 = new Users();
		u1.setUserId(1);
		u1.setUserName("User1");
		u1.setPassword("password1");
		userList.add(u1);
		
		Users  u2 = new Users();
		u2.setUserId(2);
		u2.setUserName("User2");
		u2.setPassword("password2");
		userList.add(u2);
		
		
		Users  u3 = new Users();
		u3.setUserId(3);
		u3.setUserName("User3");
		u3.setPassword("password3");
		userList.add(u3);
		
		Users  u4 = new Users();
		u4.setUserId(4);
		u4.setUserName("User4");
		u4.setPassword("password4");
		userList.add(u1);
		
		Users  u5 = new Users();
		u5.setUserId(5);
		u5.setUserName("User5");
		u5.setPassword("password5");
		userList.add(u5);
		
		
	}

}
