package com.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.ProductDao;
import com.shop.pojo.Product;

/**
 * Servlet implementation class ProductServlet
 */

public class ProductServlet extends HttpServlet {

	Product p = new Product();
	ProductDao pd = new ProductDao();
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String action = request.getParameter("action");
		if (action != null && action.equals("deleteProduct")) {

			int id = Integer.parseInt(request.getParameter("id"));
			boolean b = pd.deleteProduct(id);
			if (b)
				response.sendRedirect("ProductServlet");

		} else if (action != null && action.equals("editProduct")) {
			int id = Integer.parseInt(request.getParameter("id"));
			Product p1 = pd.getProductByid(id);
			session.setAttribute("p", p1);
			response.sendRedirect("updateProduct.jsp");
		}

		else {
			List<Product> pl = pd.getProductList();
			session.setAttribute("pl", pl);
			response.sendRedirect("productList.jsp");

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		String name = request.getParameter("name");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));
		int cid = Integer.parseInt(request.getParameter("cid"));
		p.setCid(cid);
		p.setDescription(description);
		p.setName(name);
		p.setPrice(price);
		if (action != null && action.equals("addProduct")) {
			boolean b = pd.addProduct(p);
			
			if (b) {
				response.sendRedirect("index.jsp");
			}

		}else if(action!=null && action.equals("updateProduct")) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			p.setId(id);
			
			boolean b = pd.updateProduct(p);
			if(b) {
				response.sendRedirect("ProductServlet");
			}
			
		}

		

	}

}
