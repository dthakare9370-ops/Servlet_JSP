	package com.service;
	
	import java.sql.ResultSet;
	
	import com.dao.UserDao;
	import com.entity.User;
	
	public class UserService {
		UserDao dao = new UserDao();
		
		public String insert(User user) {
			return dao.insert(user);
		}
		
		public ResultSet userLogin(String email,String password) {
			return dao.userLogin(email, password);
		}
		
	}
