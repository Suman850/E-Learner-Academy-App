<%@page import="org.learner.academy.entity.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teachers</title>
</head>
<body>

	<%@include file="Header.jsp"%>


	<h2 >Teachers Master List</h2>

	<table class="table">
		<tr>
			<th>Teacher Id</th>
			<th>First-Name</th>
			<th>Last-Name</th>
			
		</tr>

		<%
		List<Teacher> teachers = (List) request.getAttribute("tchList");
		for (Teacher tch : teachers) {
		%>

		<tr>
			<td><%=tch.getTeacherId()%></td>
			<td><%=tch.getfName()%></td>
			<td><%=tch.getlName()%></td>
			
		</tr>

		<%
		}
		%>

	</table>


	<%@include file="footer.jsp"%>

</body>
</html>