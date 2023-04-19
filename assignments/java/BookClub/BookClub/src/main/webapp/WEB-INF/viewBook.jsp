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
<title>New Book</title>
</head>
<body>
	<div class="container my-5 fs-5">
		<div class="d-flex justify-content-between align-items-center mb-5">
			<h2 class="display-3">${book.title}</h2>
			<a href="/books">back to shelves</a>
		</div>
		<c:if test="${book.user.id == sessionScope.UUID}">
			<p>
				<span class="text-danger">You</span> read <span class="text-primary">${book.title}</span>
				by <span class="text-success">${book.author}</span>
			</p>
			<p>Here are your thoughts:</p>
		</c:if>
		<c:if test="${book.user.id != sessionScope.UUID}">
			<p>
				<span class="text-danger">${book.user.name}</span> read <span
					class="text-primary">${book.title}</span> by <span
					class="text-success">${book.author}</span>
			</p>
			<p>Here are ${book.user.name}'s thoughts:</p>
		</c:if>
		<p class="border-top border-bottom col-6 p-3 fst-italic fw-light">${book.thoughts}</p>
		<c:if test="${book.user.id == sessionScope.UUID}">
			<div class="mt-3 col-6 text-end">
				<a class="me-3" href="/books/edit/${book.id}">Edit</a>
				<form:form action="/books/delete/${book.id}" method="post">
					<input type="hidden" name="_method" value="delete">
					<button class="btn btn-link fs-5">Delete</button>
				</form:form>
			</div>
		</c:if>
	</div>
</body>
</html>