<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/styleDate.css">
<script type="text/javascript" src="js/appDate.js"></script>
<title>Date</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
			<p class="tag-p-date"> <c:out value="${date}"></c:out> </p>
			</div>
		</div>
	</div>
</body>
</html>