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
<title>Dashboard</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<a href="/songs/new">Add New</a>
			</div>
			<div class="col">
				<a href="/search/topten">Top Song</a>
			</div>
			<div class="col">
				<form action="/search" method="POST">
					<input type="search" name="artist" placeholder="Artist"> <input
						type="submit" value="Search">
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table>
					<thead>
						<tr>
							<th>Title</th>
							<th>Rating</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${songs }" var="song">
							<tr>
								<td><a href="/songs/<c:out value="${song.id }"/>"><c:out
											value="${song.title }" /></a></td>
								<td><c:out value="${song.rating }" /></td>
								<td><a href="/delete/<c:out value="${song.id }"/>">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>