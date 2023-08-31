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
	<a href="${pageContext.request.contextPath}/addTamarind">Add Tamarind</a>    
    <a href="${pageContext.request.contextPath}/spices">Home</a>
     <div  align="right">
          <a href="${pageContext.request.contextPath}/logout">Logout</a>
          </div>
	<br>
	<h3>List of all Tamarinds</h3>
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
			<c:forEach var="tamarind" items="${listTamarinds}">
				<tr>
					<td>${tamarind.quantity}</td>
					<td>${tamarind.price}</td>
					<td>${tamarind.totalPrice}</td>
					<td>${tamarind.rating}</td>
					<td>${tamarind.review}</td>
					<td><a
						href="${pageContext.request.contextPath}/editTamarind/${tamarind.tamarindId}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deleteTamarind/${tamarind.tamarindId}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>
</body>
</html>