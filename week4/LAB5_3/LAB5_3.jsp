<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LAB5_3</title>
	<style>
		table {
			width: 500px; 
			border: 1px solid;
		}
		
		td, th {
			border: 1px solid black;
		}
	</style>
</head>
<body>
	<table>
	<%
		String[] week = {"월", "화", "수", "목", "금", "토", "일"};
		out.println("<tr>");
		for (int i = 0; i < week.length; i++) {
			if (i == 0)
				out.println("<th style='color:red;'>" + week[i] + "</th>");
			else if (i == 3)
				out.println("<th style='color:green;'>" + week[i] + "</th>");
			else if (i == 6)
				out.println("<th style='color:blue;'>" + week[i] + "</th>");
			else
				out.println("<th>" + week[i] + "</th>");
		}
		out.println("</tr>");
		
		for (int i = 0; i < 4; i++) {
			out.println("<tr>");
			for (int j = 0; j < 7; j++)
				out.println("<td>" + "&nbsp" + "</td>");
			out.println("</tr>");
		}
	%>
	</table>
	
</body>
</html>