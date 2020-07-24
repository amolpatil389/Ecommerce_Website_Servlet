<%@page import="com.shop.pojo.User"%>
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
	<%
		List<User> ul = (List<User>) session.getAttribute("ul");
	%>


	<table cellpadding="10" cellspacing = "10" border = "1">

		<tr>
			<th>ID</th>

			<th>Name</th>
			<th>Contact</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Address</th>

			<%
				for (User u : ul) {
			%>
		
		<tr>
			<td><%=u.getId()%></td>
			<td><%=u.getName()%></td>
			<td><%=u.getContact()%></td>
			<td><%=u.getEmail()%></td>
			<td><%=u.getGender()%></td>
			<td><%=u.getAddress()%></td>

		</tr>

		<%
			}
		%>



		</tr>




	</table>
</body>
</html>