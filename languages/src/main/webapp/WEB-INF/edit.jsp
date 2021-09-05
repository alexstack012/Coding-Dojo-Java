<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
		<div class="container">
		<h1 style="
		display: flex;
    	align-items: center;
    	justify-content: center;
    	font-size: xxx-large;">Edit Languages</h1>
    	
			<div class="columns" style="
			display: flex;
   			align-items: center;
    		justify-content: center;">
					<div class="column">			    		
			    		<h3>Name</h3>
			    		<h3>Language</h3>
			    		<h3>Version</h3>			    		
			  		</div>
			  		<div class="column" style="    
			  		margin: 21px;
    				margin-top: 41px;">
			    		<form:form action="/update/${lang.id}" method="post" modelAttribute="lang">
			    		<input type="hidden" name="_method" value="put">
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
  							<div>
    						<form:input class="input" type="text" path="version"/>
    						<form:errors path="version"/>
  							</div>
						</div>
						<div>
  							<input type="submit"/> 	
						</div>
					</form:form>
			  		</div>
  			</div>  			
	</div>
	</section>
</body>
</html>