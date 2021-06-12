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
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Dojo Survey Index</title>
</head>
<body>
	<div class="container">
		<p>
			<u>Submitted info</u>
		</p>
		<div class="row">
			<div class="col">
				<p>Name: <c:out value="${username}"></c:out> </p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p>Dojo location: <c:out value="${location }"></c:out></p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p>Favorite language: <c:out value="${language }"></c:out> </p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p>Comment: <c:out value="${comment }"></c:out> </p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<a href="/" class="btn btn-primary">Come Back</a>
			</div>
		</div>
	</div>
</body>
</html>