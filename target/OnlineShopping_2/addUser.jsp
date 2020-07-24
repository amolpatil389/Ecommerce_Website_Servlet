<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form action="UserServlet" method="post">

		<table cellpading="10" cellspacing="10" border = "1" align="center">

			<tr>
				<td>Name :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Contact :</td>
				<td><input type="text" name="contact"></td>
			</tr>

			<tr>
				<td>Email :</td>
				<td><input type="text" name="email"></td>
			</tr>

			<tr>
				<td>Gender</td>
				<td><select name="gender">
						<option>Select</option>
						<option>Male</option>
						<option>FeMale</option>



				</select></td>
			</tr>

			<tr>
				<td>Address :</td>
				<td><textarea rows="5" cols="30 " name = "address"></textarea></td>
			</tr>

			<tr>
				<td>Password :</td>
				<td><input type="text" name="password"></td>
			</tr>

			<tr>
				<td>Confirm Password :</td>
				<td><input type="text" name="cpassword"></td>
			</tr>
			
			
				<tr>
				<td><input type="Submit" name="Save"></td>
				<td><input type="Reset" name="Reset"></td>
			</tr>
			

		</table>





	</form>

</body>
</html>