<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title><c:out value="${lenguage.name }" /></title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<a href="/lenguage"> Dashboard </a> <a
					href="/lenguage/delete/<c:out value="${lenguage.id }"/>">Delete</a>
			</div>
		</div>
		<form:form action="/lenguage/edit/{id}" method="post"
			modelAttribute="modLeng">
			<div class="row">
				<div class="col">
					<form:label path="name">Name</form:label>
					<form:input path="name" />
					<form:errors  path="name" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form:label  path="creator">Creator</form:label>
					<form:input  path="creator" />
					<form:errors  path="creator" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form:label path="currentVersion">Version</form:label>
					<form:input  path="currentVersion" />
					<form:errors  path="currentVersion" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input class="btn btn-primary" type="submit" value="submit">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>