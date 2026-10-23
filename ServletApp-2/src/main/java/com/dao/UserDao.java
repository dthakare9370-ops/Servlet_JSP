package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.JdbcConnection.JDBCUtility;
import com.entity.User;

public class UserDao {

    static Connection con = JDBCUtility.getConnections();

    
    public ResultSet userLogin(String email, String password) {
    		ResultSet rs = null;
    		try {
    			
    			PreparedStatement pst = con.prepareStatement("select * from users where email = ? and password = ?");
    			pst.setString(1,email);
    			pst.setString(2, password);
    			
    			
    			rs = pst.executeQuery();    			
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    		return rs;
    }
    
    
    
    public String insert(User user) {

        try {

            String sql = "INSERT INTO users "
                       + "(firstname, lastname, email, mobile_no, password) "
                       + "VALUES (?, ?, ?, ?, ?)";

            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, user.getFirstName());
            pst.setString(2, user.getLastName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getMobileNo());
            pst.setString(5, user.getPassword());

            int value = pst.executeUpdate();

            if (value > 0) {
                return "User Registered Successfully";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "User Registration Failed";
    }
}