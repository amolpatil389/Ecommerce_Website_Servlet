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
		List<Category> cl = new CategoryDao().getAllCategory();
	%>
 <div class="col-lg-3">

        <h1 class="my-4">Shop Name</h1>
        <div class="list-group">
        
        
		<%
			for (Category c : cl) {
		%>
        
          <a href="#" class="list-group-item"><%=c.getName() %></a>
          
          <% }%>
          
        </div>

      </div>

</body>
</html>