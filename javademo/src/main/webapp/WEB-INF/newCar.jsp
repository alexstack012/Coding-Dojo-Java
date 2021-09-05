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
<title>New Car</title>
  <!-- Bootstrap -->
  <link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
		<h1>Hi ${user.firstName}, would you like to make a new car</h1>
		<a href="/dashboard">Dashboard</a>
		<form:form action="/createCar" method="post" modelAttribute="car">
		<form:hidden path="user" value="${user.id}"/>
		
	<p>
		<form:label path="color">Car Color</form:label>
		<form:errors path="color"/>
		<form:input path="color"/>
	</p>
	<p>
		<form:label path="seats">Number of Seats</form:label>
		<form:errors path="seats"/>
		<form:input type="number" path="seats" />
	</p>
	<input type="submit" value="submit"/>
</form:form>
    </div> <!-- End of Container -->
</body>
</html>