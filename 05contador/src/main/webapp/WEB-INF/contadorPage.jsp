<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>
					You have visited <a href="/your_server">This page</a>
					<c:out value="${count}"> times</c:out>
				</h2>
			</div>
			<div class="container">
				<div class="row">
					<div class="col">
						<a href="/your_server">Test another visit?</a>
						<a href="/doblecontador">Revisa x 2!!</a>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<a href="/reset">Reset</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>