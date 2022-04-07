<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
	<title>New Dojo</title>
</head>
<body>
	<div class="container padding">
		<div class="row">
			<div class="col-4">
				<h1>New Dojo</h1>
				<form:form action="/dojos/create" method="post" modelAttribute="dojo">
					<div class="mb-3 row">
		    			<form:label path="name" cssClass="col-sm-2 col-form-label">Name:</form:label>
							<div class="col-sm-10">
								<form:input path="name" cssClass="form-control"/>
							</div>
						<form:errors path="name" cssClass="alerta"/>				
		  			</div>
		  			<div class="mb-3 row">
		  				<form:label path="name" cssClass="col-sm-2 col-form-label"></form:label>
							<div class="col-sm-10">
								<button type="submit">Create</button>
							</div>		
		  			</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>