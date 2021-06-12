<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Top Ten</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>Top ten Songs:</h2>
			</div>
			<div class="col">
				<a href="/dashboard">Dashboard</a>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<ul>
					<c:forEach items="${songs }" var="song">
						<li><c:out value="${song.rating}" /> - <a
							href="/songs/<c:out value="${song.id }"/>"> <c:out
									value="${song.title }" />
						</a> - <c:out value="${song.artist }" /></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>