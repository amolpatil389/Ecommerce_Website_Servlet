package com.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.CategoryDao;


public class CategoryServlet extends HttpServlet {
	
	/**
	 * 
	 */
	CategoryDao cd = new CategoryDao();
	private static final long serialVersionUID = 1L;
	

 

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("cname");
		boolean b = cd.addCategory(name);
		if(b)
		{
			response.sendRedirect("Category.jsp");
		}
		
		
		
		
	}

}
