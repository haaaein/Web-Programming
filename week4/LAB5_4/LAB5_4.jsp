<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB5_4</title>
</head>
<body>
	<%
		for (int i = 1; i <= 6 ; i++) {
			out.println("<h" + i + ">" + "Python" + "</h" + i + ">" + "<br>");
		}
	%>
</body>
</html>