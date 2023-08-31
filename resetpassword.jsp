<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<div class="background-image">

	<form:form id="resetpasswordForm" modelAttribute="resetpassword" action="resetpasswordProcess"
		method="post">
		<table align="center">
		
		<tr>
				<td><form:label path="username">Username: </form:label></td>
				<td><form:input path="username" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><form:label path="newpassword">newpassword: </form:label></td>
				<td><form:input path="newpassword" name="newpassword" id="newpassword" /></td>
			</tr>
			<tr>
				<td><form:label path="confirmpassword">confirmpassword:</form:label></td>
				<td><form:password path="confirmpassword" name="confirmpassword"
						id="confirmpassword" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="resetpassword" name="resetpassword">ResetPassword</form:button></td>
			</tr>

			<tr></tr>
			<tr>
				<td></td>
				<td><a href="home.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
	</div>

</body>
<style>
	.background-image{
	background-image:url(https://www.ubackground.com/_ph/9/2/699547809.jpg);
	background-size:cover;
	background-repeat:no-repeat;
	height:100vh;
	}</style>
</html>