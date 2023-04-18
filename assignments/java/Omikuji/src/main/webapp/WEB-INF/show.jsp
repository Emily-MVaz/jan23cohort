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
						<link rel="stylesheet" type="text/css" href="/css/show.css">
						<!-- For any Bootstrap that uses JS -->
						<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
						<meta charset="UTF-8">
						<title>Insert title here</title>
					</head>

					<body>
						<header>
							<h1>Here's Your Omikuji!</h1>
						</header>
						<main>
							<p class="col-4 fs-4">
								In <c:out value="${num}"></c:out> years,
								you will live in <c:out value="${city}"></c:out>
								with <c:out value="${name}"></c:out> as your roommate,
								selling <c:out value="${hobby}"></c:out> for a living.
								The next time you see a <c:out value="${livingThing}"></c:out> ,
								you will have good luck.
								Also, <c:out value="${nice}"></c:out>.
							</p>
							<a href="/omikuji">Go Back</a>
						</main>
					</body>

					</html>