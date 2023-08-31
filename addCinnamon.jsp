<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/spices">Home</a>
<div  align="right">
          <a href="${pageContext.request.contextPath}/logout">Logout</a>
          </div>
	<h1>Cinnamon Details</h1>
	
        <form:form method="POST" action="saveCinnamon" modelAttribute="cinnamon">
             <table>
                <tr>
                    <td><form:label path="quantity">Quantity</form:label></td>
                    <td><form:input path="quantity"/></td>
                </tr>
                <tr>
                    <td><form:label path="price">Price Per Qty</form:label></td>
                    <td><form:input path="price"/></td>
                </tr>
                <tr>
                    <td><form:label path="rating">Rating</form:label></td>
                    <td><form:input path="rating"/></td>
                </tr>
                 <tr>
                    <td><form:label path="review">Review</form:label></td>
                    <td><form:input path="review"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

</body>
</html>