<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!-- for forms -->
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
				<!-- for validation -->
				<%@ page isErrorPage="true" %>
					<!DOCTYPE html>
					<html>

					<head>
						<!-- for Bootstrap CSS -->
						<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
						<!-- YOUR own local CSS -->
						<link rel="stylesheet" type="text/css" href="/css/edit.css">
						<link rel="stylesheet" type="text/css" href="/css/style.css">
						<!-- For any Bootstrap that uses JS -->
						<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
						<meta charset="UTF-8">
						<title>Burger Tracker 2</title>
					</head>

					<body>
						<main>
							<div class="d-flex flex-column align-items-center">
								<h1 class="w-75">Edit Burger</h1>
								<form:form action="/burger/update/${burger.id}" method="post" modelAttribute="burgerForm"
									class="d-flex flex-column align-items-center py-2">
									<input type="hidden" name="_method" value="put">

									<div class="d-flex flex-row p-2">
										<label for="burgerName" class="px-2">Burger Name:</label> <input type="text" name="burgerName"
											value="${burger.burgerName}" />
										<form:errors path="notes" class="text-warning ms-2" />
									</div>

									<div class="d-flex flex-row p-2">
										<label for="restaurantName" class="px-2">Restaurant Name:</label> <input type="text"
											name="restaurantName" value="${burger.restaurantName}" />
										<form:errors path="burgerName" class="text-warning ms-2" />
									</div>

									<div class="d-flex flex-row p-2">
										<label for="rating" class="px-2">Rating:</label> <input name="rating" type="number"
											value="${burger.rating}" />
										<form:errors path="rating" class="text-warning ms-2 me-2 pe-1" />
									</div>

									<div class="d-flex flex-row p-2">
										<label for="notes" class="px-2">Notes:</label>
										<textarea name="notes" rows="5" cols="22"><c:out
							value="${burger.notes}" /></textarea>
										<form:errors path="burgerName" class="text-warning ms-2" />
									</div>

									<button class="btn btn-primary m-2">Update Burger</button>
								</form:form>
							</div>
						</main>
					</body>

					</html>