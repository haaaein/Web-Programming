<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	int t = Integer.parseInt(request.getParameter("minute")) * 60;
	session.setMaxInactiveInterval(t);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 02</title>
</head>
<body>
	<%=request.getParameter("username") %> 님 환영합니다.	
	<br><br>
	세션 ID : <%= session.getId() %> <BR>
	
	세션 지속시간 : <%= session.getMaxInactiveInterval() %> 초<BR>
	
	<%
	Integer count = (Integer)application.getAttribute("count");
	int cnt = 0;
	if (count == null)
		cnt = count.intValue();
	else
		cnt = count.intValue() + 1;
	application.setAttribute("count",cnt);
	%>
	<br><br>
	오늘의 접속자수 : <%= cnt %>
</body>
</html>