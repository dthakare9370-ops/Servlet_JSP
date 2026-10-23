package com.JdbcConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtility {
	
	final static String url = "jdbc:mysql://localhost:3306/User_jsp";
	final static String userName = "root";
	final static String password = "root";
	
	public static Connection getConnections() {
		Connection con = null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con =  DriverManager.getConnection(url,userName,password);
			System.out.println("Connection Establish Successfully !!");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
}
