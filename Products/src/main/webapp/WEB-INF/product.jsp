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
    <div class="container" style="display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 160px;"> <!-- Beginning of Container -->
        	<h1>New Product</h1>
	<form:form action="/products/new" method="post" modelAttribute="product">
	<div class="inputfield" style="    
	display: flex;
    flex-direction: column;
    align-items: flex-end;">
		<p>
			<form:label path="name">Name: </form:label>
			<form:errors path="name" />
			<form:input path="name" type="text" />
		</p>
		<p>
			<form:label path="description">Description: </form:label>
			<form:errors path="description" />
			<form:input path="description" type="text" />
		</p>
		<p>
			<form:label path="price">Price: </form:label>
			<form:errors path="price" />
			<form:input path="price" type="number" />
		</p>
	</div>
		<input style="background-color: darkturquoise;
    border-radius: 25%; margin-bottom: 15px; margin-left: 102px;" type="submit" value="Create" />
	</form:form>
	<a href="/categories/new" class="btn btn-success">Create a New Category</a>
    </div> <!-- End of Container -->
</body>
</html>