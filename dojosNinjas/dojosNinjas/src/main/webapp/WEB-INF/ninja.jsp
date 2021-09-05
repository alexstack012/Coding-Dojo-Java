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
    	<h1>New Ninja</h1>
	<form:form action="/ninjas/new" method="POST"
		modelAttribute="ninja">
        <div class="input-group mb-3">
  			<form:label class="input-group-text" for="inputGroupSelect01" path="dojo">Dojo:</form:label>
  				<form:select class="form-select" id="inputGroupSelect01" path="dojo">
			<c:forEach items="${dojos}" var="dojo">
				<form:option value="${dojo.id}">
					<c:out value="${dojo.name} Location" /> 
				</form:option>
			</c:forEach>
  				</form:select>
		</div>
		<div class="mb-3">
  			<form:label path="first_name" for="exampleFormControlInput1" class="form-label">First Name</form:label>
 			<form:input path="first_name" type="text" class="form-control" id="exampleFormControlInput1" placeholder="First Name"></form:input>
		</div>
		<div class="mb-3">
  			<form:label path="last_name" for="exampleFormControlInput1" class="form-label">Last Name</form:label>
 			<form:input path="last_name" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Last Name"/>
		</div>
		<div class="mb-3">
  			<form:label path="age" for="exampleFormControlInput1" class="form-label">Age</form:label>
 			<form:input path="age" type="number" class="form-control" id="exampleFormControlInput1" placeholder="Age"/>
		</div>
		<br>
		<button type="submit" value="Create" class="btn btn-success">Submit</button>
		</form:form>
    </div> <!-- End of Container -->
</body>
</html>