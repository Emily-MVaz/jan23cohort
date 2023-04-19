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
						<title>Edit Expense</title>
					</head>

					<body>
						<main>
							<div class="d-flex flex-column align-items-center">
								<h1 class="w-75">Edit Expense</h1>
								<form:form action="/expense/update/${expense.id}" method="post" modelAttribute="expenseForm"
									class="d-flex flex-column align-items-center py-2">
									<input type="hidden" name="_method" value="put">

									<div class="d-flex flex-row p-2">
										<label for="name" class="px-2">Expense Name:</label> <input type="text" name="name"
											value="${expense.name}" />
										<form:errors path="description" class="text-warning ms-2" />
									</div>

									<div class="d-flex flex-row p-2">
										<label for="vendor" class="px-2">Vendor:</label> <input type="text" name="vendor"
											value="${expense.vendor}" />
										<form:errors path="name" class="text-warning ms-2" />
									</div>

									<div class="d-flex flex-row p-2">
										<label for="amount" class="px-2">Amount:</label> <input name="amount" type="number"
											value="${expense.amount}" />
										<form:errors path="amount" class="text-warning ms-2 me-2 pe-1" />
									</div>

									<div class="d-flex flex-row p-2">
										<label for="description" class="px-2">Description:</label>
										<textarea name="description" rows="5" cols="22"><c:out
							value="${expense.description}" /></textarea>
										<form:errors path="name" class="text-warning ms-2" />
									</div>

									<button class="btn btn-primary m-2">Update Expense</button>
								</form:form>
							</div>
						</main>
					</body>

					</html>