<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	
	<section>
		<div class="container">
  			<h1><c:out value="${lang.name}"/></h1>
			<h1><c:out value="${lang.creator}"/></h1>
			<h1><c:out value="${lang.version}"/> </h1>
			<a href="">Edit</a><br>
			<a href="/languages/delete/<c:out value="${lang.id}"/>">Delete</a><br>
			<a href="/languages">DashBoard</a><br>
  			
		</div>
	</section>
</body>
</html>