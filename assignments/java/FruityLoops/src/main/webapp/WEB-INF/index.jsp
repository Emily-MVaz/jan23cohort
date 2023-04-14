<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Fruity Loops</title>
</head>
<body class="container m-5">
	<header>
		<h1 class="title">Fruit Store</h1>
	</header>
	<main>
		<table class="table">
			<thead>
				<tr class="table-title">
					<th scope="col">Name</th>
					<th scope="col">Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="fruit" items="${fruits}">
					<tr>
						<td><c:out value="${fruit.name}"></c:out></td>
						<td><c:out value="${fruit.price}"></c:out></td>
					</tr>
					<p></p>
				</c:forEach>
			</tbody>
		</table>

	</main>

</body>
</html>