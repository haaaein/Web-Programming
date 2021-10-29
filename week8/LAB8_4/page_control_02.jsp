<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
	<jsp:forward page="page_control_04.jsp">
	
	<jsp:param value="page_control_02.jsp" name="src" />
</jsp:forward>
</body>
</html>