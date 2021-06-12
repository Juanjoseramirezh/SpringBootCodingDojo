<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>New Person</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>New Person</h1>
			</div>
		</div>
		<form:form action="/addperson" method="post"
			modelAttribute="addPersonObject">
			<div class="row">
				<div class="col">
					<form:label path="firstName">First Name</form:label>
					<form:input path="firstName" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form:label path="lastName">Last Name</form:label>
					<form:input path="lastName" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="submit" value="Create">
				</div>
			</div>
		</form:form>

	</div>
</body>
</html>