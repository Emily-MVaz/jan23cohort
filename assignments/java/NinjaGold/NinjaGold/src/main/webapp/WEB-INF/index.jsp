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
						<title>Ninja Gold</title>
					</head>

					<body>
						<div class="container">
							<!--*--------------------HEADER---------------------->
							<div class="header d-flex">
								<h3>Your Gold:</h3>
								<p class="ms-3 border border-dark p-1 fs-5 col-1">
									<c:out value="${count}"></c:out>
								</p>
								<!--+------------RESET BUTTON-------------->
								<form action="reset" method="post">
									<button class="mx-5 p-1">Reset</button>
								</form>
							</div>

							<!--*--------------------CARDS---------------------->
							<div class="row mt-5">
								<div class="row">
									<div class="col border border-dark p-3 text-center m-2">
										<h3>Farm</h3>
										<p>(earns 10-20 gold)</p>
										<form action="/gold/farm" method="post">
											<button class="btn btn-lg">Find Gold!</button>
										</form>
									</div>
									<div class="col border border-dark p-3 text-center m-2">
										<h3>Cave</h3>
										<p>(earns 5-10 gold)</p>
										<form action="/gold/cave" method="post">
											<button class="btn btn-lg">Find Gold!</button>
										</form>
									</div>
									<div class="col border border-dark p-3 text-center m-2">
										<h3>House</h3>
										<p>(earns 2-5 gold)</p>
										<form action="/gold/house" method="post">
											<button class="btn btn-lg">Find Gold!</button>
										</form>
									</div>
									<div class="col border border-dark p-3 text-center m-2">
										<h3>Quest</h3>
										<p>(earns/ takes 0-50 gold)</p>
										<form action="/gold/quest" method="post">
											<button class="btn btn-lg">Find Gold!</button>
										</form>
									</div>
									<div class="col border border-dark p-3 text-center m-2">
										<h3>Spa</h3>
										<p>(costs 5-20 gold)</p>
										<form action="/gold/spa" method="post">
											<button class="btn btn-lg">Find Gold!</button>
										</form>
									</div>
								</div>

								<!--*--------------------ACTIVITY---------------------->
								<div class="row">
									<h3>Activities:</h3>
									<div class="border border-dark m-2 p-3 overflow-auto" style="max-height: 300px;">
										<c:forEach var="activity" items="${activities}">
											<c:if test="${activity.contains('earned' )}">
												<p class="text-success">
													<c:out value="${activity}" />
												</p>
											</c:if>
											<c:if test="${activity.contains('lost')}">

												<p class="text-danger">
													<c:out value="${activity}" />
												</p>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</body>

					</html>