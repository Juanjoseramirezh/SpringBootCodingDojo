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
				<h1>
					<c:out value="${lenguage.name }" />
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h1>
					<c:out value="${lenguage.creator }" />
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h1>
					<c:out value="${lenguage.currentVersion }" />
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<a href="/lenguage/delete/<c:out value="${lenguage.id }"/>">Delete</a><a
					href="/lenguage/edit/<c:out value="${lenguage.id }"/>">Edit</a>
			</div>
		</div>
	</div>
</body>
</html>