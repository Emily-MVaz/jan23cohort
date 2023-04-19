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
<title>Insert title here</title>
</head>
<body>
	<main
		class="d-flex flex-column justify-content-center align-items-center">
		<div class="d-flex flex-column align-items-center w-75">
			<div
				class="d-flex flex-row justify-content-between align-items-center mt-5 w-100">
				<h1>Expense Details</h1>
				<a href="/">Go Back</a>
			</div>
			<div class="d-flex flex-row justify-content-between w-50 mt-3">
				<p>Expense Name:</p>
				<p>${expense.name}</p>
			</div>
			<div class="d-flex flex-row justify-content-between w-50">
				<p>Expense Description:</p>
				<p>${expense.description}</p>
			</div>
			<div class="d-flex flex-row justify-content-between w-50">
				<p>Vendor:</p>
				<p>${expense.vendor}</p>
			</div>
			<div class="d-flex flex-row justify-content-between w-50">
				<p>Amount Spent:</p>
				<p>$${expense.amount}</p>
			</div>
		</div>
	</main>
</body>
</html>