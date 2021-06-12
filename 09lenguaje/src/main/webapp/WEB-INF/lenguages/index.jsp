<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lenguage</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<table>
					<thead>
						<tr>
							<td>Name</td>
							<td>Creator</td>
							<td>Version</td>
							<td>Action</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${lenguages}" var="lang">
							<tr>
								<td><a href="/lenguage/<c:out value="${lang.id }"/>"><c:out
											value="${lang.name }" /></a></td>
								<td><c:out value="${lang.creator }" /></td>
								<td><c:out value="${lang.currentVersion }" /></td>
								<td><a href="/lenguage/delete/<c:out value="${lang.id }"/>">Delete</a><a
									href="/lenguage/edit/<c:out value="${lang.id }"/>">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<form:form action="/lenguage" method="POST" modelAttribute="addLeng">
			<div class="row">
				<div class="col">
					<form:label  path="name">Name</form:label>
					<form:input  path="name" />
					<form:errors  path="name" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form:label path="creator">Creator</form:label>
					<form:input path="creator" />
					<form:errors path="creator" />
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