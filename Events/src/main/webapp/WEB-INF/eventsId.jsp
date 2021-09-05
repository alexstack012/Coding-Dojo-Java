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
<body style="background-color: lightgrey;">
    <div class="container"> <!-- Beginning of Container -->
        		<h1 class="display-2"><c:out value="${event.name}"/></h1>
		<h5>Host: <c:out value="${event.host.first_name}"/></h5>
		<h5>Date: <fmt:formatDate pattern ="MMMM dd, yyyy" value ="${event.date}"/></h5>
		<h5>Location: <c:out value="${event.city}"/></h5>
		<h5>People who are attending this event: <c:out value="${event.attendees.size()}"/></h5>
		<table class="table eventTable">
		  <thead class="thead-light">
		    <tr>
		      <th scope="col">Name</th>
		      <th scope="col">Location</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach var="attendees" items="${event.attendees }">
			    <tr>
			      <th><c:out value="${attendees.first_name}"/> <c:out value="${attendees.last_name}"/></th>
			      <td><c:out value="${attendees.city}"/></td>
			    </tr>
	    	  </c:forEach>
		  </tbody>
		</table>
    </div> <!-- End of Container -->
</body>
</html>