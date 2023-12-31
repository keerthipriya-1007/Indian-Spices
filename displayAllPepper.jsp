<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Users</title>
</head>
<body>
	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/addPepper">Add Pepper</a>
	<a href="${pageContext.request.contextPath}/spices">Home</a>
	 <div  align="right">
          <a href="${pageContext.request.contextPath}/logout">Logout</a>
          </div>
	<br>
	<h3>List of all Peppers</h3>
	${message}
	<br>
	<br>
	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>Quantity</th>
			<th>PricePerQty</th>
				<th>TotalPrice</th>
				<th>Rating</th>
				<th>Review</th>
				<th>Edit</th>
				<th>delete</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="pepper" items="${listPeppers}">
				<tr>
					<td>${pepper.quantity}</td>
					<td>${pepper.price}</td>
					<td>${pepper.totalPrice}</td>
					<td>${pepper.rating}</td>
					<td>${pepper.review}</td>
					<td><a
						href="${pageContext.request.contextPath}/editPepper/${pepper.pepperId}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deletePepper/${pepper.pepperId}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>
</body>
</html>