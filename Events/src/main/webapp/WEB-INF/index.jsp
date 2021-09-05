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
    <div class="container" style="    
    display: flex;
    flex-direction: column;
    align-items: center;"> <!-- Beginning of Container -->
        		<h1 class="display-2">Welcome</h1>
        		<div class="bothBoxes" style="display: flex;
    flex-direction: row;">
		<div class="register">
			<h3>Register</h3>
			<p><form:errors path="user.*"/></p>
	    
	    	<form:form method="POST" action="/registration" modelAttribute="user">

	        <p>
	            <form:label class="col-sm-4 col-form-label" path="first_name">First Name:</form:label>
	            <form:input style="width: 500px;" class="form-control col-sm-6" type="text" path="first_name"/>
	        </p>
	        <p>
	            <form:label class="col-sm-4 col-form-label" path="last_name">Last Name:</form:label>
	            <form:input class="form-control col-sm-6" type="text" path="last_name"/>
	        </p>
	        <p>
	            <form:label class="col-sm-4 col-form-label" path="email">Email:</form:label>
	            <form:input class="form-control col-sm-6" type="email" path="email"/>
	        </p>
	        <p>
	            <form:label class="col-sm-4 col-form-label" path="city">City:</form:label>
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
	        <p>
	            <form:label  class="col-sm-4 col-form-label" path="password">Password:</form:label>
	            <form:password class="form-control col-sm-6" path="password"/>
	        </p>
	        <p>
	            <form:label class="col-sm-4 col-form-label" path="passwordConfirmation">Password Confirmation:</form:label>
	            <form:password class="form-control col-sm-6" path="passwordConfirmation"/>
	        </p>
	        <input class="btn btn-success" type="submit" value="Register"/>
	    </form:form>
		</div>
		<div class="login">
			<h3>Login</h3>
			    <p><c:out value="${error}" /></p>
		    <form method="post" action="/login">
		        <p>
		            <label class="col-sm-4 col-form-label" for="email">Email</label>
		            <input style="width: 500px;" class="form-control col-sm-6" type="text" id="email" name="email"/>
		        </p>
		        <p>
		            <label class="col-sm-4 col-form-label" for="password">Password</label>
		            <input class="form-control col-sm-6" type="password" id="password" name="password"/>
		        </p>
		        <input class="btn btn-primary" type="submit" value="Login"/>
		    </form>  
		</div>
		</div>
    </div> <!-- End of Container -->
</body>
</html>