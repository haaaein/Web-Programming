<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting.jsp</title>
	
</head>
<body>
	<h4>greeting.jsp 에서 출력한 메시지 입니다.</h4>
	<div>
		<% 
			out.println(request.getParameter("name") + "님 환영합니다.<br>");
			out.println("오늘은 " + request.getParameter("date") + "입니다.<br>");
		%>
	</div>
	
</body>
</html>