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
	<title>New Ninja</title>
</head>
<body>
	<div class="container padding">
			<div class="row">
				<div class="col-6">
					<h1>New Ninja</h1>
					<form:form action="/ninjas/create" method="post" modelAttribute="ninja">
						<div class="mb-3 row">
			    			<form:label path="dojo" cssClass="col-sm-2 col-form-label">Dojo:</form:label>
			    				<div class="col-sm-10">
			    					<form:select path="dojo" class= "form-control">
										<c:forEach var="d" items="${dojos}">
											<form:option value="${d.id}">${d.name}</form:option>
										</c:forEach>
									</form:select>	
			    				</div>	
			  			</div>
						<div class="mb-3 row">
			    			<form:label path="first_name" cssClass="col-sm-2 col-form-label">First Name:</form:label>
								<div class="col-sm-10">
									<form:input path="first_name" cssClass="form-control"/>
								</div>
							<form:errors path="first_name" cssClass="alerta"/>				
			  			</div>
			  			<div class="mb-3 row">
			    			<form:label path="last_name" cssClass="col-sm-2 col-form-label">Last Name:</form:label>
								<div class="col-sm-10">
									<form:input path="last_name" cssClass="form-control"/>
								</div>
							<form:errors path="last_name" cssClass="alerta"/>				
			  			</div>
			  			<div class="mb-3 row">
			    			<form:label path="age" cssClass="col-sm-2 col-form-label">Age:</form:label>
								<div class="col-sm-10">
									<form:input path="age" cssClass="form-control"/>
								</div>
							<form:errors path="age" cssClass="alerta"/>				
			  			</div>
			  			<div class="mb-3 row">
			  				<form:label path="age" cssClass="col-sm-2 col-form-label"></form:label>
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