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
<title>Shelves</title>
</head>
<body>
	<div class="container my-5 fs-5">
		<div class="row">
			<div class="col">
				<h2 class="display-4">Welcome, ${user.name}</h2>
				<p>Books from everyone's shelves:</p>
			</div>
			<div
				class="col d-flex flex-column justify-content-around align-items-end">
				<a href="/logout">Logout</a> <a href="/books/new">+ Add a book!</a>
			</div>
		</div>
		<table class="table table-striped border mt-3">
			<thead>
				<th scope="col">ID</th>
				<th scope="col">Title</th>
				<th scope="col">Author Name</th>
				<th scope="col">Posted By</th>
			</thead>
			<tbody>
				<c:forEach var="book" items="${allBooks}">
					<tr>
						<td>${book.id}</td>
						<td><a href="/books/${book.id}">${book.title}</a></td>
						<td>${book.author}</td>
						<td>${book.user.name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>