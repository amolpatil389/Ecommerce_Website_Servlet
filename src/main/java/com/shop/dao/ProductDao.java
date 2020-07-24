package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shop.config.DBConnect;
import com.shop.pojo.Product;

public class ProductDao {

	Connection con = DBConnect.getConnection();

	String sql = "insert into product(name,price,description,cid) values(?,?,?,?)";

	public boolean addProduct(Product p) {

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, p.getName());
			ps.setDouble(2, p.getPrice());
			ps.setString(3, p.getDescription());
			ps.setInt(4, p.getCid());

			int i = ps.executeUpdate();

			if (i > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Product> getProductList() {

		String sql = "select * from product";
		List<Product> plist = new ArrayList<Product>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setPrice(rs.getDouble(3));
				p.setDescription(rs.getString(4));
				p.setCid(rs.getInt(5));
				plist.add(p);
			}
			return plist;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public boolean deleteProduct(int id)
	{
		String sql = "delete from product where id = ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			int i = ps.executeUpdate();
			if(i>0)
			{
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	public Product getProductByid(int id) {

		String sql = "select * from product where id = ?";
		Product p = new Product();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setPrice(rs.getDouble(3));
				p.setDescription(rs.getString(4));
				p.setCid(rs.getInt(5));
				
			}
			return p;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	public boolean updateProduct(Product p) {
		String sql = "update product set name=?,price=?,description=?,cid=? where id=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, p.getName());
			ps.setDouble(2, p.getPrice());
			ps.setString(3, p.getDescription());
			ps.setInt(4, p.getCid());
			ps.setInt(5, p.getId());
			int i = ps.executeUpdate();

			if (i > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
