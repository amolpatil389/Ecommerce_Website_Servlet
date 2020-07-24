
<%@page import="com.shop.dao.CategoryDao"%>
<%@page import="com.shop.pojo.Category"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="CategoryServlet" method="post">

		<table>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="cname"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Save"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>


		</table>


	</form>

	<%
		List<Category> cl = new CategoryDao().getAllCategory();
	%>

	<table>

		<tr>
			<th>ID</th>
			<th>Name</th>
		</tr>

		<%
			for (Category c : cl) {
		%>

		<tr>
			<td><%=c.getId()%></td>
			<td><%=c.getName()%></td>


		</tr>

		<%
			}
		%>
	</table>

</body>
</html>