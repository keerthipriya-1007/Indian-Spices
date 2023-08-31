<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.GFG {
	background-color: #62e7a1;
	border: 2px solid black;
	color: blue;
	padding: 5px 10px;
	text-align: center;
	display: inline-block;
	font-size: 20px;
	margin: 10px 20px;
	cursor: pointer;
	text-decoration: none;
}
</style>
<a href="home.jsp" class="GFG">Home</a>
<title>Login</title>

</head>
<body >  
<div class="background-image">
	<form:form id="loginForm" modelAttribute="login" action="loginProcess"
		method="post">
		<table align="center">
			<tr>
				<td><form:label path="username">Username: </form:label></td>
				<td><form:input path="username" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="login" name="login" >Login</form:button></td>
			</tr>

			<tr></tr>
			<tr>
				<td></td>
				<td><a href="resetpassword" class="GFG">resetpassword</a></td>
				
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
	background-image:url(https://w0.peakpx.com/wallpaper/853/650/HD-wallpaper-herbs-and-spices-food.jpg);
	background-size:cover;
	background-repeat:no-repeat;
	height:100vh;
	}</style>


</html>