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
    margin-top: 170px;"> <!-- Beginning of Container -->
        	<h1>
		<c:out value="${category.name}" />
	</h1>
	<h2>Products:</h2>
	<ul>
		<c:forEach items="${category.products }" var="product">
			<li><c:out value="${product.name}" /></li>
		</c:forEach>
	</ul>
	<h2>Add Product:</h2>

	<form action="/categories/${category.id}" method="POST">
		<label for="product">Product:</label> <select name="product">
			<c:forEach items="${products}" var="product">
				<option value="${product.id}">
					<c:out value="${product.name}" />
				</option>
			</c:forEach>
		</select><br>
		<br> <input style="background-color: darkturquoise;
    border-radius: 25%; margin-bottom: 15px;" type="submit" value="Add Product">
	</form>
	<a href="/products/new" class="btn btn-success">Create a New Product</a>
    </div> <!-- End of Container -->
</body>
</html>