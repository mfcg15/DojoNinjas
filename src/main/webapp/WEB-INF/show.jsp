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
	<title>Dojo Page</title>
</head>
<body>
	<div class="conatiner padding">
		<div class="row">
			<div class="col-12 extremos">
				<h1 class= "tituloDojo"><c:out value="${dojo.name}"/> Ninjas</h1>
				<table class="table table-striped table-bordered">
					<thead class="table-secondary">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Age</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="ninja" items="${dojo.ninjas}">
							<tr>
								<td><c:out value="${ninja.getFirst_name()}"/></td>
								<td><c:out value="${ninja.getLast_name()}"/></td>
								<td><c:out value="${ninja.getAge()}"/></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>