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
<title>New Dojo</title>
</head>
<body>
	<div class="container mt-5">
		<h1 class="display-3">New Dojo</h1>
		<form:form action="/dojos/create" method="post" modelAttribute="dojo"
			class="col-4">
			<div class="my-3">
				<form:label path="name" class="form-label">Name:</form:label>
				<form:input path="name" type="text" class="form-control" />
				<form:errors path="name" class="text-danger" />
			</div>
			<button class="btn btn-primary float-end">Submit</button>
		</form:form>
	</div>
</body>
</html>