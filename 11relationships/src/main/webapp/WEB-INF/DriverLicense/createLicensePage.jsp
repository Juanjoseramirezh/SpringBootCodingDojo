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
<title>New License</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>New Lincense</h1>
			</div>
		</div>
		<form:form action="/addlicense" method="post"
			modelAttribute="addLicenseObject">
			<div class="row">
				<div class="col">
					<form:label path="person">Person</form:label>
					<form:select path="person">
						<c:forEach items="${personsList }" var="per">
							<form:option value="${per.id}">
								<c:out value="${per.firstName } ${per.lastName }" />
							</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form:label path="state">State</form:label>
					<form:select path="state">
						<c:forEach items="${states }" var="st">
							<form:option value="${st }">
								<c:out value="${st }" />
							</form:option>
						</c:forEach>
					</form:select>
				</div>
				<div class="row">
					<div class="col">
						<form:label path="expirationDate">Expiration Date</form:label>
						<form:input type="date" path="expirationDate" />
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="submit" value="Create License">
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>