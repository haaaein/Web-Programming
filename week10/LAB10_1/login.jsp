<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String username = (String)session.getAttribute("user");
	if (username != null) {
		out.print("<div id='logout'>");
		out.print("<form action='checker.jsp'>");
		out.print(username + "님 환영합니다.<br>");
		
		out.print("<input type='submit' value=로그아웃>");
		out.print("<input type='hidden' name='action' value='logout'>");
		out.print("</form></div>");
	} else {
		out.print("<div id=login>");
		out.print("<form name='form1' method='post' action='checker.jsp'>");
		out.print("아이디 : <input type='text' name='username'/><br><br>");
		out.print("비밀번호 : <input type='text' name='userpwd'/><br><br>");
		
		out.print("<input type='hidden' name='action' value='login'>");
		out.print("<input type='submit' value='login'>");
		out.print("</form></div>");
	}
%>
</body>
</html>