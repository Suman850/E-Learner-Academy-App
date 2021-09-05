<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<%
  int year =  Calendar.getInstance().get(Calendar.YEAR);
%>
<footer>
    <div class="copyright"> &copy; <%=year%> Suman Gayen - FullStack Dev.  </div> 
</footer>

</body>
</html>