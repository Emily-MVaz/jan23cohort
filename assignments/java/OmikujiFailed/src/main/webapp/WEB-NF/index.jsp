<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
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
<title>Insert title here</title>
</head>
<body>
	<header class="d-flex justify-content-center flex-column m-5">
		<h1>Send an Omikuji</h1>
		<form action="/submit" method="post" class="col-6">
			<div class="d-flex flex-column">
				<label class="form-label">Pick any number from 5 to 25:</label>
				<input type="number" name="year" class="form-control">
			</div>
			<div class="d-flex flex-column">
				<label class="form-label">Enter the name of any city:</label>
				<input type="text" name="city" class="form-control">
			</div>
			<div class="d-flex flex-column">
				<label class="form-label">Enter the name of any real person:</label>
				<input type="text" name="person" class="form-control">
			</div>
			<div class="d-flex flex-column">
				<label class="form-label">Enter professional endeavor or hobby:</label>
				<input type="text" name="hobby" class="form-control">
			</div>
			<div class="d-flex flex-column">
				<label class="form-label">Enter any type of living thing:</label>
				<input type="text" name="animal" class="form-control">
			</div>
			<div class="d-flex flex-column">
				<label class="form-label">Say something nice to someone:</label>
				<textarea name="compliment" class="form-control" rows="3"></textarea>
			</div>
			<p class="mt-3">Send and show to a friend</p>
			<button class="btn btn-primary mt-2 float-end">Submit</button>
		</form>
	</header>
</body>
</html>