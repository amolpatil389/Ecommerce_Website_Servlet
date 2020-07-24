<%@page import="com.shop.dao.CategoryDao"%>
<%@page import="com.shop.pojo.Category"%>
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

<%List <Category> clist = new CategoryDao().getAllCategory(); %>
	<form action="ProductServlet" method = "post">
	
		<input type  = "hidden" name = "action" value = "addProduct">
	

		<table>

			<tr>
				<td>Name :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="text" name="price"></td>
			</tr>

			<tr>
				<td>Description :</td>
				<td><textarea rows="5" cols="20" name ="description"></textarea></td>
			</tr>

			<tr>
				<td>Category</td>
				
				<td><select name="cid">
						<option>-------Select--------</option>
						<%for(Category c : clist){ %>
						<option value = "<%=c.getId() %>"><%= c.getName()%></option>
						
						<%} %>

				</select></td>




			</tr>
			
			<tr><td><input type = "submit" value = "Save"></td> <td><input type = "reset" value = "Reset"></td></tr>






		</table>

	</form>

</body>
</html>