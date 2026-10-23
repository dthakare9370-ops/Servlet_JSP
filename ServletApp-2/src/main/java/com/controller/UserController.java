package com.controller;

import java.sql.ResultSet;

import com.entity.User;
import com.service.UserService;

public class UserController {
	UserService service = new UserService();
	
	public String insert(User user) {
		return service.insert(user); 
	}
	
	public ResultSet userLogin(String email,String password) {
		return service.userLogin(email, password); 
	}
}
