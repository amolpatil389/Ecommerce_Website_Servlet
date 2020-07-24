<%@page import="com.shop.pojo.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>All Product Details</h1>

	<%
		List<Product> pl = (List<Product>) session.getAttribute("pl");
	%>


	<table cellpadding="10" cellspacing = "10" border = "1">

		<tr>
			<th>ID</th>
			<th>Name :</th>
			<th>Price</th>
			<th>Description</th>
			<th>Action</th>


		</tr>


		<%
		for (Product p : pl) { 
		%>
		<tr>
			<td><%=p.getId() %></td>
			<td><%= p.getName() %></td>
			<td><%= p.getPrice()%></td>
			<td><%= p.getDescription() %></td>
			<td><a href = "ProductServlet?action=editProduct&id=<%=p.getId()%>">Edit</a></td>
			<td><a href = "ProductServlet?action=deleteProduct&id=<%=p.getId()%>">Delete</a></td>
			



		</tr>

		<%} %>





	</table>
</body>
</html>