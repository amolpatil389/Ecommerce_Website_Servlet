package com.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.UserDao;
import com.shop.pojo.User;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  UserDao ud = new UserDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("index.jsp");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		
		if(uname!=null && uname.equals("admin") && password.equals("123"))
		{
			session.setAttribute("adminName", uname);
			response.sendRedirect("index.jsp");
			
		}else {
		
		User u = ud.userlogin(uname, password);
		if(u!=null && u.getEmail().equals(uname) && u.getPassword().equals(password))
		{
			session.setAttribute("userName", uname);
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		}
	}

}
