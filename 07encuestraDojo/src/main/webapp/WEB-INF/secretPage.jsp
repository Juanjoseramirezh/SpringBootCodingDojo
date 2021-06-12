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

<title>Secret Page</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>
					Hola
					<c:out value="${username }"></c:out>
					! seleccionaste
					<c:out value="${language }"> como tu mejor opcion!!</c:out>

				</h1>
				<h2>Felicidades!!</h2>
			</div>
		</div>
	</div>
</body>
</html>