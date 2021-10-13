<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String url = "";
	
	if (id.equals("admin") && pw.equals("1234")) {
		url = "main.jsp";
	}
	
	else {
		url = "login_form.jsp";
	}
	
	out.println("Enter the id('admin') and password('1234')");
%>
<jsp:forward page="<%=url %>">
	<jsp:param name="msg" value="Enter the id('admin') and password('1234')"/>
</jsp:forward>
</body>
</html>