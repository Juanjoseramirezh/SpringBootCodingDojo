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
<title>Secret Code</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<form method="POST" action="/login">
					<p> <c:out value="${error}"></c:out> </p>
					<label>What is the code?</label> <input type="text" name="password"
						placeholder="insert the code">
					<div class="row">
						<div class="col">
							<button type="submit" class="btn btn-primary">Try Code</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>