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

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="/surveyDojo" method="POST">
			<div class="row">
				<div class="col">
					<label class="form-label">Your Name</label>
				</div>
				<div class="col">
					<input type="text" name="username">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label">Dojo Location</label>
				</div>
				<div class="col">
					<select class="form-select" name="location">
						<option value="sanjose" selected>San Jose</option>
						<option value="california">California</option>
						<option value="silconvalley">Silcon Valley</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label">Favorite language</label>
				</div>
				<div class="col">
					<select class="form-select" name="language">
						<option value="python" selected>Pyhton</option>
						<option value="java">Java</option>
						<option value="c++">C++</option>
						<option value="ruby">Ruby</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label">Comment</label>
				</div>
				<div class="row">
					<div class="col">
						<input type="textarea" name="comment">
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<input class="btn btn-primary" type="submit" value="Submit">
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>

