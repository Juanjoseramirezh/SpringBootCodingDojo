<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
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
<title>Ninja Gold Game</title>
</head>
<body>
	<div class="container">


		<div class="row">
			<div class="col">
				<h2>Your Gold</h2>
				<h2 id="h2_tag_the_gold">
					<c:out value="${gold}"></c:out>
				</h2>
			</div>
		</div>
		<!-- APLICACION PARA MOSTRAR LA CANTIDAD DE ORO -->
		<div class="row">
			<div class="col">
				<form action="/accion" method="POST">
					<p>Farm</p>
					<br>
					<p>(earn 10-20 Gold)</p>
					<input type="hidden" name="construccion" value="farm"> <input
						type="submit" value="Find Gold!">
				</form>
			</div>
			<div class="col">
				<form action="/accion" method="POST">
					<p>Cave</p>
					<br>
					<p>(earn 5-10 Gold)</p>
					<input type="hidden" name="construccion" value="cave"> <input
						type="submit" value="Find Gold!">
				</form>
			</div>
			<div class="col">
				<form action="/accion" method="POST">
					<p>House</p>
					<br>
					<p>(earn 2-5 Gold)</p>
					<input type="hidden" name="construccion" value="house"> <input
						type="submit" value="Find Gold!">
				</form>
			</div>
			<div class="col">
				<form action="/accion" method="POST">
					<p>Casino!</p>
					<br>
					<p>(earn/taken 0-50 Gold)</p>
					<input type="hidden" name="construccion" value="casino"> <input
						type="submit" value="Find Gold!">
				</form>
			</div>
		</div>
		<!-- APLICACION PARA MOSTRAR LOS 4 FORMS -->
		<div class="row">
			<div class="col">
				<p>Activities</p>
				<a href="/reset">Reset</a>
			</div>

		</div>
		<div class="row">
			<div class="col">
				<ul>
					<%
					if (session.getAttribute("actividad") != null) {
					%>
					<%
					ArrayList<String> historial = (ArrayList<String>) session.getAttribute("actividad");
					%>
					<%
					for (int i = 0; i < historial.size(); i++) {
					%>
					<%
					if (historial.get(i).contains("lost")) {
					%>
					<li style="color: red;"><%=historial.get(i)%></li>
					<%
					} else {
					%>
					<li style="color: green;"><%=historial.get(i)%></li>
					<%
					}
					%>
					<%
					}
					%>
					<%
					}
					%>
				</ul>
			</div>
		</div>
		<!-- APLICACION PARA MOSTRAR EL HISTORIAL -->
	</div>
</body>
</html>