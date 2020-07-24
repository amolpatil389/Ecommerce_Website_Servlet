<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Error Occured </h1>









<%
		String userName = (String) session.getAttribute("userName");
	String adminName = (String) session.getAttribute("adminName");
	%>
	<h2>
		<a href="">Home</a>
	</h2>

	<h2>
		<a href="ProductServlet">ProductList</a>
	</h2>

	<h2>
		<a href="">Search</a>
	</h2>

	
	<h2>
		<a href="">EditProfile</a>
	</h2>


	<h2>
		<a href="">CartList</a>
	</h2>

	<h2>
		<a href="">MyOrder</a>
	</h2>

	<h2>
		<a href="">Feedback</a>
	</h2>

	

	<%
		if (adminName != null && userName == null) {
	%>
	<h2>
		<a href="Category.jsp">Category</a>
	</h2>
	<h2>
		<a href="addProduct.jsp">Add Product</a>
	</h2>

	<h2>
		<a href="addUser.jsp">Register</a>
	</h2>


	<h2>
		<a href="UserServlet">UserList</a>
	</h2>


	<h2>
		<a href="">OrderList</a>
	</h2>


	<%
		}
	%>

	<%
		if (userName == null && adminName == null) {
	%>
	<h2>
		<a href="addUser.jsp">Register</a>
	</h2>










	<h2>
		<a href="login.jsp">Login</a>
	</h2>

	<%
		}
	%>




	<%
		if (userName != null || adminName != null) {
	%>

	<h2>
		<a href="LoginServlet">Logout</a>
	</h2>

	<%
		}
	%>

</body>
</html>