package com.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.UserDao;
import com.shop.pojo.User;
 
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       User u = new User();
       UserDao ud = new UserDao();
       


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		List<User> ul = ud.getallUser();
		session.setAttribute("ul", ul);
		response.sendRedirect("userList.jsp");
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name= request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		
		if(password!=null && password.equals(cpassword))
		{
			u.setAddress(address);
			u.setContact(contact);
			u.setEmail(email);
			u.setGender(gender);
			u.setName(name);
			u.setPassword(password);
			
			boolean b = ud.addUser(u);
			
			if(b) {
				response.sendRedirect("index.jsp");
			}
			
			
			
		}else
		{
			System.out.println("Password are not Same");
		}
		
		
	}

}
