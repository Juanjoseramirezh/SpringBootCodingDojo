<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<a href="/dashboard">Dashboard</a>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h2>
					<c:out value="${song.title }" />
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h2>
					<c:out value="${song.artist }" />
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h2>
					<c:out value="${song.rating }" />
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<a href="/delete/<c:out value="${song.id}"/>">Delete</a>
			</div>
		</div>
	</div>

</body>
</html>