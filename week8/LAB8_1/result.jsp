<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result.jsp</title>
</head>
<body>
<h2>전달된 파라미터 이름들</h2>

<%
	Enumeration<String> names = request.getParameterNames();
	while(names.hasMoreElements()) {
		String name = names.nextElement();
		out.println(name + "<br>");
	}
	out.println("<hr>");
	
	String type = request.getParameter("type");
	out.println("타입::" + type + "<br>");
	out.println("아이디::" + request.getParameter("strID") + "<br>");
	out.println("비밀번호::" + request.getParameter("strPwd") + "<br>");
%>
</body>
</html>