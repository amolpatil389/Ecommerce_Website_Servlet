package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shop.config.DBConnect;
import com.shop.pojo.Category;

public class CategoryDao {

	Connection con = DBConnect.getConnection();

	public boolean addCategory(String name) {

		String sql = "insert into  category (cname) values (?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			//ps.setString(1, name);
			ps.setString(1, name);
			int i = ps.executeUpdate();
			if (i > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}
	
	public List<Category> getAllCategory(){
		
		List <Category> clist = new ArrayList<Category>();
		
		String sql = "select * from category";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Category c = new Category();
				c.setId(rs.getInt(1));
				c.setName(rs.getString(2));
				clist.add(c);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return clist;
		
	}

}
