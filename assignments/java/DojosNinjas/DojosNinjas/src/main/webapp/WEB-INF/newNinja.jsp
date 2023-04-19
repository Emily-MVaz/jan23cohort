<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- for validation -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>New Ninja</title>
</head>
<body>
	<div class="container mt-5">
		<h1 class="display-3">New Ninja</h1>
		<form:form action="/ninjas/create" method="post"
			modelAttribute="ninja" class="col-4">
			<div class="my-3">
				<form:label path="firstName" class="form-label">First Name:</form:label>
				<form:input path="firstName" type="text" class="form-control" />
				<form:errors path="firstName" class="text-danger" />
			</div>
			<div class="my-3">
				<form:label path="lastName" class="form-label">Last Name:</form:label>
				<form:input path="lastName" type="text" class="form-control" />
				<form:errors path="lastName" class="text-danger" />
			</div>
			<div class="my-3">
				<form:label path="age" class="form-label">Age:</form:label>
				<form:input path="age" type="number" class="form-control" />
				<form:errors path="age" class="text-danger" />
			</div>
			<div class="my-3">
				<form:label path="dojo" class="form-label">Dojo:</form:label>
				<form:select path="dojo" class="form-select">
					<option disabled selected>-- Select a Dojo--</option>
					<c:forEach var="dojo" items="${dojos}">
						<form:option value="${dojo.id}">
							<c:out value="${dojo.name}" />
						</form:option>
					</c:forEach>
				</form:select>
				<form:errors path="dojo" class="text-danger" />
			</div>

			<button class="btn btn-primary float-end">Submit</button>
		</form:form>
	</div>
</body>
</html>