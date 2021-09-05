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
<title>dashboard</title>
  <link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
    <h1>Welcome ${user.firstName}</h1>
        <a href="/newCar">New Car</a>
        <h1>Need a ride?</h1>
        <div>
        <form action="/logout">
        <button class="btn-danger">LogOut</button>       
        </form>
        </div>
        
        <table class="table">
        	<thead>
        		<tr>
        			<th scope="col">Car Color</th>
        			<th scope="col">Driver</th>
        			<th scope="col">Number of Seats</th>
        			<th scope="col">Actions</th>
        		</tr>
        	</thead>
        	<tbody>
        		<c:forEach items="${allCars}" var="i">
        		<tr>
        				<td> <a href="/oneCar/${i.id}">${i.color}</a> </td>
        				
        				<td> <c:out value="${i.user.firstName}"/> </td>
        				
        				<td><c:out value="${i.seats}"/></td>
        			<c:choose>
        				<c:when test="${i.user.id == user.id}">
        				<td>
        					<a href="/editCar/${i.id}">Edit</a>
        					<a href="/car/${i.id}/delete">Delete</a>
        				</td>
        				</c:when>
        				<c:otherwise>
        				<td> Sorry - you dont own this car</td>
        				</c:otherwise>
        			</c:choose>
        		</tr>
        	</c:forEach>
        	</tbody>        
        </table>        
    </div> <!-- End of Container -->
</body>
</html>