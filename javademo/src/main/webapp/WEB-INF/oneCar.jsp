<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title Here</title>
  <!-- Bootstrap -->
  <link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
		<h1>Hello ${user.firstName}, take a look at this car</h1>
		<a href="/dashboard">Dashboard</a>
	<h3>${car.color}</h3>
	<h3>${car.seats}</h3>
	<h3>${car.user.firstName}</h3>
        <c:choose>
        	<c:when test="${car.user.id == user.id}">
        		<td>
        			<a href="/editCar/${car.id}">Edit</a>
        			<a href="/car/${car.id}/delete">Delete</a>
        		</td>
        	</c:when>
        	<c:otherwise>
        		<td> Sorry - you dont own this car</td>
        	</c:otherwise>
        </c:choose>
	
    </div> <!-- End of Container -->
</body>
</html>