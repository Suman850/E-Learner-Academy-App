<%@page import="java.util.List"%>
<%@page import="com.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>

	<%@include file="Header.jsp"%>
	
	
		<h2>Students Master List</h2>

	<table class="table">
		<tr>
			<th>Roll-NO.</th>
			<th>First-Name</th>
			<th>Last-Name</th>
			<th>Class</th>
		</tr>

		<%
		List<Student> students = (List) request.getAttribute("stdList");
		for (Student std : students) {
		%>

		<tr>
			<td><%=std.getRollNo()%></td>
			<td><%=std.getfName()%></td>
			<td><%=std.getlName()%></td>
			<td> <%= std.getCourse().getClassName() %>  </td>
		</tr>

		<%
		}
		%>

	</table>


	<%@include file="footer.jsp"%>
</body>
</html>