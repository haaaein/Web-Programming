<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
</head>
<body>

<%
	String task1 = request.getParameter("TASK1");
	String task2 = request.getParameter("TASK2");
	String task3 = request.getParameter("TASK3");
	
	if (task1 == null)
		task1 = "일정 없음";
	else if (task2 == null)
		task2 = "일정 없음";
	else if (task3 == null)
		task3 = "일정 없음";
	
	out.println("오늘의 일정<hr>");
	out.println("<ul>");
	out.println("<li>" + task1);
	out.println("<li>" + task2);
	out.println("<li>" + task3);
	out.println("</ul>");
%>
</body>
</html>