<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E Learner's Academy App</title>
</head>
<body>

	<%@include file="Header.jsp"%>

	<div class="main" >
		<div class="card class-list">
			<form action="java-full-stack">
				<p style="font-weight: bold;" >Class 1</p>
				<h2>Java Full Stack</h2>
				<button class="primary" type="submit">Details</button>
			</form>
		</div>


		<div class="card class-list">
			<form action="dotNet-full-stack">
				<p style="font-weight: bold;" >Class 2</p>
				<h2>DotNet Full Stack</h2>
				<button class="primary"  type="submit">Details</button>
			</form>
		</div>
		
		<div class="card class-list">
			<form action="php-full-stack">
				<p style="font-weight: bold;" >Class 3</p>
				<h2>PHP Full Stack</h2>
				<button class="primary"  type="submit">Details</button>
			</form>
		</div>

		<div class="card class-list">
			<form action="python-full-stack">
				<p style="font-weight: bold;">Class 4</p>
				<h2>Python Full Stack</h2>
				<button class="primary"  type="submit">Details</button>
			</form>
		</div>

		<div class="card class-list">
			<form action="students">
				<h2>Students master list</h2>
				<button class="primary"  type="submit">Details</button>
			</form>
		</div>
		
		<div class="card class-list">
			<form action="teachers">
				<h2>Teacher master list</h2>
				<button class="primary"  type="submit">Details</button>
			</form>
		</div>
		
		<div class="card class-list">
			<form action="subjects">
				<h2>Subjects master list</h2>
				<button class="primary"  type="submit">Details</button>
			</form>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>