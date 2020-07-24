<%@page import="com.shop.pojo.Product"%>
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

	<%
		List<Category> clist = new CategoryDao().getAllCategory();
	Product p = (Product) session.getAttribute("p");
	%>
	<form action="ProductServlet" method="post">
	
	<input type  = "hidden" name = "action" value = "updateProduct">

		<table>


			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=p.getId()%>"
					readonly="readonly"></td>
			</tr>

			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" value="<%=p.getName()%>"></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="text" name="price" value="<%=p.getPrice()%>"></td>
			</tr>

			<tr>
				<td>Description :</td>
				<td><textarea rows="5" cols="20" name="description"><%=p.getDescription()%></textarea></td>
			</tr>

			<tr>
				<td>Category</td>

				<td><select name="cid">
						<option <%=p.getCid()%>>-------Select--------</option>
						<%
							for (Category c : clist) {
						%>
						<option value="<%=c.getId()%>"><%=c.getName()%></option>

						<%
							}
						%>

				</select></td>




			</tr>

			<tr>
				<td><input type="submit" value="Update"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>






		</table>

	</form>

</body>
</html>