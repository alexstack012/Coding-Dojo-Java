  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Languages</title>
</head>
<body>
	<section>
		<div class="container">
  			<table>
  			<thead>
  				<tr>
  					<td>Name</td>
  					<td>Creator</td>
  					<td>Version</td>
  					<td>Action</td>
  				</tr>
  			</thead>
  			<tbody>	
  				<c:forEach items="${languages}" var="language">
  				<tr>
  					<td><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
  					<td><c:out value="${language.creator}"/></td>
  					<td><c:out value="${language.version}"/></td>
  					<td><a href="/languages/delete/${language.id}">delete</a> <a href="/languages/edit/${language.id}">edit</a></td>
  				</tr>
  				</c:forEach>
  			</tbody>	
  			</table>
  			
  			<div>
    			Create a <strong>Languages</strong> into database.
  			</div>
  			
			<div class="columns" style="    
			display: flex;
    justify-content: center;
    align-content: center;
    align-items: center;">
					<div class="column">
			    		
			    		<h3>Name</h3>
			    		<h3>Language</h3>
			    		<h3>Version</h3>
			    		
			  		</div>
			  		<div class="column" style="    
			  		margin: 17px;
    				margin-top: 63px;">
			    		<form:form action="/create" method="post" modelAttribute="language">
			    		<div class="field">
  							<div class="control">
    						<form:input class="input" type="text" path="name"/>
    						<form:errors path="name"/>
  							</div>
						</div>
						<br>
			  			<div class="field">
  							<div class="control">
    						<form:input class="input" type="text" path="creator"/>
    						<form:errors path="creator"/>
  							</div>
						</div>
						<br>
						<div class="field">
  							<div class="control">
    						<form:input class="input" type="text" path="version"/>
    						<form:errors path="version"/>
  							</div>
						</div>
						<br>
						<div class="buttons is-right">
  							<input class="button is-primary is-right" type="submit"/> 	
						</div>
					</form:form>
			  		</div>
			  		
  			</div>
  			
	</div>
	</section>
</body>
</html>