package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shop.config.DBConnect;
import com.shop.pojo.User;

public class UserDao {

	Connection con = DBConnect.getConnection();

	public boolean addUser(User u) {
		String sql = "insert into user01(name,contact,email,gender,address,password) values(?,?,?,?,?,?)";

		try {

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getContact());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getGender());
			ps.setString(5, u.getAddress());
			ps.setString(6, u.getPassword());

			int i = ps.executeUpdate();
			if (i > 0) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
	
	public List<User> getallUser() {
		List<User> ulist = new ArrayList<User>();
		String sql = "select * from user01";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				User u = new User();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setContact(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setGender(rs.getString(5));
				u.setAddress(rs.getString(6));
				u.setPassword(rs.getString(7));

				ulist.add(u);
			}
			return ulist;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public User userlogin(String uname,String password) {
		
		String sql = "select email,password from user01 where email=? and password = ?";
		User u = new User();
		
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
			}
			return u;
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return null;
	}

}

