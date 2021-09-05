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
		<div class="createEvent">
			<h3>Edit Your Event</h3>
			<p><form:errors path="event.*"/></p>
			<form:form method="POST" action="/events/${event.id}/update" modelAttribute="event">
			<input type="hidden" name="_method" value="put">
			<form:hidden path="host"/>
			<form:hidden path="attendees"/>
			<p>
	            <form:label class="col-sm-2 col-form-label" path="name">Event Name:</form:label>
	            <form:input class="form-control col-sm-6" type="text" path="name"/>
	        </p>
	        <p>
	        	<form:label class="col-sm-2 col-form-label" path="date">Date:</form:label>
	        	<form:input class="form-control col-sm-6" type="date" path="date"/>
	        <p>
	            <form:label class="col-sm-2 col-form-label" path="city">Location:</form:label>
	            <form:input class="form-control col-sm-6" type="text" path="city"/>
	        </p>
	        <p>
	            <form:label class="col-sm-2 col-form-label" path="state">State:</form:label>
	            <form:select path="state">
        			<c:forEach items="${states}" var="state">
            		<form:option value="${state}">${state}</form:option>
        			</c:forEach>
        		</form:select>
        	</p>
	        <input class="btn btn-primary" type="submit" value="Edit"/>
	        </form:form>
		</div>
    </div> <!-- End of Container -->
</body>
</html>