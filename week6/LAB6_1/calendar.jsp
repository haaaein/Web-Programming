<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	
</style>
<body>
	<table class='cal'>
	<%
		String[] week = {"월", "화", "수", "목", "금", "토", "일"};
		out.println("<tr class='cal'>");
		for (int i = 0; i < week.length; i++) {
			if (i == 0)
				out.println("<th class='cal' style='color:red;'>" + week[i] + "</th>");
			else if (i == 3)
				out.println("<th class='cal' style='color:green;'>" + week[i] + "</th>");
			else if (i == 6)
				out.println("<th class='cal' style='color:blue;'>" + week[i] + "</th>");
			else
				out.println("<th class='cal'>" + week[i] + "</th>");
		}
		out.println("</tr>");
		
		for (int i = 0; i < 4; i++) {
			out.println("<tr class='cal'>");
			for (int j = 0; j < 7; j++)
				out.println("<td class='cal'>" + "&nbsp" + "</td>");
			out.println("</tr>");
		}
	%>
	</table>
</body>
