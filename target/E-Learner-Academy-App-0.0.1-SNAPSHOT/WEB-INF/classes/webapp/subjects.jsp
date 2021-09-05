<%@page import="com.entity.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subjects</title>
</head>
<body>

    <%@include file="Header.jsp"%>
    
	<h2>Subject Master List</h2>

	<table class="table">
		<tr>
			<th>Subject_Id</th>
			<th>Subject</th>
			<th>Teacher</th>
			<th>Class</th>
		</tr>

		<%
		List<Subject> subjects = (List) request.getAttribute("subList");
		for (Subject sub : subjects) {
		%>
		<tr>
			<td><%=sub.getSubjectId()%></td>
			<td><%=sub.getSubjectName()%></td>
			<td><%=sub.getTeacher().getfName()%> <%=sub.getTeacher().getlName()%></td>
			<td><%= sub.getCourse().getClassName() %> </td>
		</tr>

		<%
		}
		%>

	</table>



	<%@include file="footer.jsp"%>



</body>
</html>