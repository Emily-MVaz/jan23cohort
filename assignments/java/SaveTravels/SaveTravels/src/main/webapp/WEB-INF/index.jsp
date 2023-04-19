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
						<link rel="stylesheet" type="text/css" href="/css/style.css">
						<!-- For any Bootstrap that uses JS -->
						<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
						<meta charset="UTF-8">
						<title>Save Travels</title>
					</head>

					<body>
						<main>
							<div class="d-flex flex-column  align-items-center">
								<h1 class="w-75">Save Travels</h1>
								<!--*----------------TABLE------------------>
								<table class="table table-striped table-bordered w-75">
									<thead>
										<!--+-------COLUMN LABELS--------->
										<tr>
											<th scope="col">Expense</th>
											<th scope="col">Vendor</th>
											<th scope="col">Amount</th>
											<th scope="col">Actions</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${allExpenses}" var="i">
											<tr>
												<th scope="row"><a href="/expense/view/${i.id}">${i.name}</a></th>
												<td>${i.vendor}</td>
												<td>${i.amount}</td>
												<td class="d-flex flex-row">
													<a href="/expense/edit/${i.id}" class="me-2">edit</a> |
													<form:form action="/expense/delete/${i.id}" method="post">
														<input type="hidden" name="_method" value="delete">
														<button class="btn btn-secondary btn-sm ms-2">Delete</button>
													</form:form>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

								<h2>
									Add an Expense:
								</h2>
								<!--*----------------FORM------------------>
								<form:form action="/create" method="post" modelAttribute="expenseForm"
									class="d-flex flex-column align-items-end py-2 w-auto">

									<!--+---------EXPENSE NAME----------->
									<div class="d-flex flex-row justify-content-evenly p-2">
										<label for="name" class="px-2">Expense Name:</label> <input type="text" name="name" id="" />
										<form:errors path="description" class="text-warning ms-2" />
									</div>

									<!--+---------VENDOR----------->
									<div class="d-flex flex-row justify-content-evenly p-2">
										<label for="vendor" class="px-2">Vendor:</label> <input type="text" name="vendor" id="" />
										<form:errors path="vendor" class="text-warning ms-2" />
									</div>

									<!--+---------AMOUNT----------->
									<div class="d-flex flex-row justify-content-evenly p-2">
										<label for="amount" class="px-2">Amount:</label> <input name="amount" type="number" />
										<form:errors path="description" class="text-warning ms-2 me-2 pe-1" />
									</div>

									<!--+---------DESCRIPTION----------->
									<div class="d-flex flex-row justify-content-evenly p-2">
										<label for="description" class="px-2">Description</label>
										<textarea name="description" rows="5" cols="22"></textarea>
										<form:errors path="description" class="text-warning ms-2" />
									</div>

									<!--+---------SUBMIT BUTTON----------->
									<button class="btn btn-primary m-2">Submit</button>
								</form:form>
							</div>
						</main>
					</body>

					</html>