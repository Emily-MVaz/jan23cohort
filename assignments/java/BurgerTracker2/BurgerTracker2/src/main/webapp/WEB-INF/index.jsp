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
<title>Burger Tracker 2</title>
</head>

<body>
	<main>
		<div class="d-flex flex-column  align-items-center">
			<h1 class="w-75">Burger Tracker</h1>
			<!--*----------------TABLE------------------>
			<table class="table table-striped table-bordered w-75">
				<thead>
					<!--+-------COLUMN LABELS--------->
					<tr>
						<th scope="col">Burger Name</th>
						<th scope="col">Restaurant Name</th>
						<th scope="col">Rating (out of 5)</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${allBurgers}" var="i">
						<tr>
							<th scope="row">${i.burgerName}</th>
							<td>${i.restaurantName}</td>
							<td>${i.rating}</td>
							<td><a href="/burger/edit/${i.id}" class="p-0 mx-2">Edit</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<h2>Add a Burger!</h2>
			<!--*----------------FORM------------------>
			<form:form action="/create" method="post" modelAttribute="burgerForm"
				class="d-flex flex-column align-items-center py-2">

				<!--+---------BURGER NAME----------->
				<div class="d-flex flex-row justify-content-end p-2">
					<label for="burgerName" class="px-2">Burger Name:</label> <input
						type="text" name="burgerName" id="" />
					<form:errors path="notes" class="text-warning ms-2" />
				</div>

				<!--+---------RESTAURANT NAME----------->
				<div class="d-flex flex-row justify-content-end p-2">
					<label for="restaurantName" class="px-2">Restaurant Name:</label> <input
						type="text" name="restaurantName" id="" />
					<form:errors path="restaurantName" class="text-warning ms-2" />
				</div>

				<!--+---------RATING----------->
				<div class="d-flex flex-row justify-content-end p-2">
					<label for="rating" class="px-2">Rating:</label> <input
						name="rating" type="number" />
					<form:errors path="notes" class="text-warning ms-2 me-2 pe-1" />
				</div>

				<!--+---------NOTES----------->
				<div class="d-flex flex-row justify-content-end p-2">
					<label for="notes" class="px-2">Notes:</label>
					<textarea name="notes" rows="5" cols="22"></textarea>
					<form:errors path="notes" class="text-warning ms-2" />
				</div>

				<!--+---------ADD BUTTON----------->
				<button class="btn btn-primary m-2">Add Burger</button>
			</form:form>
		</div>
	</main>
</body>

</html>