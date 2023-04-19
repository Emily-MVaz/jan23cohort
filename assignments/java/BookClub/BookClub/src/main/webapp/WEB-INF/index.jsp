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
<title>Book Club</title>
</head>
<body>

	<div class="container my-5">
		<h1 class="display-2 text-primary">Book Club</h1>
		<p class="fs-5">A place for friends to share thoughts on books</p>
		<div class="row">
			<div class="col-6">
				<h2 class="display-3">Register</h2>
				<form:form action="/register" method="post" modelAttribute="user">
					<div class="mt-3">
						<form:label path="name" class="form-label">Name:</form:label>
						<form:input path="name" class="form-control" />
						<form:errors path="name" class="text-danger" />
					</div>
					<div class="mt-3">
						<form:label path="email" class="form-label">Email:</form:label>
						<form:input type="email" path="email" class="form-control" />
						<form:errors path="email" class="text-danger" />
					</div>
					<div class="mt-3">
						<form:label path="password" class="form-label">Password:</form:label>
						<form:input type="password" path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<div class="mt-3">
						<form:label path="confirmPassword" class="form-label">Confirm Password:</form:label>
						<form:input type="password" path="confirmPassword"
							class="form-control" />
						<form:errors path="confirmPassword" class="text-danger" />
					</div>
					<button class="btn btn-primary btn-lg mt-3 float-end">Register</button>
				</form:form>
			</div>
			<div class="col-6">
				<h2 class="display-3">Login</h2>
				<form:form action="/login" method="post" modelAttribute="loginUser">
					<div class="mt-3">
						<form:label path="loginEmail" class="form-label">Email:</form:label>
						<form:input type="loginEmail" path="loginEmail"
							class="form-control" />
						<form:errors path="loginEmail" class="text-danger" />
					</div>
					<div class="mt-3">
						<form:label path="loginPassword" class="form-label">Password:</form:label>
						<form:input type="password" path="loginPassword"
							class="form-control" />
						<form:errors path="loginPassword" class="text-danger" />
					</div>
					<button class="btn btn-primary btn-lg mt-3 float-end">Login</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>