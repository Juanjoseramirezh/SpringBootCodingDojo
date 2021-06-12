<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<title>Add Song</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<a href="/dashboard">Dashboard</a>
			</div>
		</div>

		<form:form action="/process" method="post" modelAttribute="addNew">
			<div class="row">
				<div class="col">
					<form:label path="title">Title:</form:label>
					<form:input path="title" />
					<form:errors path="title" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form:label path="artist">Artist:</form:label>
					<form:input path="artist" />
					<form:errors path="artist" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form:label path="rating">Rating:</form:label>
					<form:select path="rating">
						<form:option value="1">1</form:option>
						<form:option value="2">2</form:option>
						<form:option value="3">3</form:option>
						<form:option value="4">4</form:option>
						<form:option value="5">5</form:option>
						<form:option value="6">6</form:option>
						<form:option value="7">7</form:option>
						<form:option value="8">8</form:option>
						<form:option value="9">9</form:option>
						<form:option value="10">10</form:option>
					</form:select>
					<form:errors path="rating" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input class="btn btn-primary" type=submit value="Add Song">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>