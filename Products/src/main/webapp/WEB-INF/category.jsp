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
    <div class="container" style="    
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 140px;"> <!-- Beginning of Container -->
        	<h1>New Category</h1>
	<form:form action="/categories/new" method="post" modelAttribute="category">
		<p style="    
		margin-top: 25px;
    	margin-bottom: 25px;">
			<form:label path="name">Name: </form:label>
			<form:errors path="name" />
			<form:input path="name" type="text" />
		</p>
		<input style="background-color: darkturquoise;
    border-radius: 25%;
    margin-left: 82px; margin-bottom: 15px;" type="submit" value="Create" />
	</form:form>
	<a href="/products/new" class="btn btn-success">Create a New Product</a>
    </div> <!-- End of Container -->
</body>
</html>