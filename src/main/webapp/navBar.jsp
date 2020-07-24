<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		String userName = (String) session.getAttribute("userName");
	String adminName = (String) session.getAttribute("adminName");
	%>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="ProductServlet">ProductList</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Search</a>
					</li>
					<%
		if (userName != null && adminName == null) {
	%>
					<li class="nav-item"><a class="nav-link" href="#">EditProfile</a>
					<li class="nav-item"><a class="nav-link" href="#">CartList</a>
					<li class="nav-item"><a class="nav-link" href="#">MyOrder</a>
					<li class="nav-item"><a class="nav-link" href="#">FeedBack</a>
					<%} %>
					
					
					<%
		if (adminName != null && userName == null) {
	%>
					<li class="nav-item"><a class="nav-link" href="Category.jsp">Category</a>
					<li class="nav-item"><a class="nav-link" href="addProduct.jsp">AddProduct</a>
					<li class="nav-item"><a class="nav-link" href="#">OrderList</a>
					<li class="nav-item"><a class="nav-link" href="#">FeedBackList</a>
					<li class="nav-item"><a class="nav-link" href="UserServlet">UserList</a>
					
					<%} %>
					
					<%
		if (userName == null && adminName == null) {
	%>
					<li class="nav-item"><a class="nav-link" href="addUser.jsp">Register</a>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
					
					<%
		}
	%>




	<%
		if (userName != null || adminName != null) {
	%>
					
					<li class="nav-item"><a class="nav-link" href="#">Logout</a>
					
					<%} %>
					</li>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>