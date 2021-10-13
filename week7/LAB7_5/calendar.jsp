<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<%@ page import = "java.util.Calendar"%>
<style>
	table {
	border: 1px solid black;
	align: center;
	width: 500px;
	height: 300px;
	}
	
	th, tr, td {
	border: 1px solid black;
	text-align: center;
	}

	caption {
	text-align: right;
	text-weight: bold;
	}
</style>
</head>
<body>

<table align="center" >
<%

	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);
	int day = today.get(Calendar.DAY_OF_MONTH);
	out.println("<caption><h3>" + year + "-" + (month + 1) + "-" + day + "</h3></caption>");
		
	Calendar cal = Calendar.getInstance();
	
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK); 
	int cnt = 0;
	String[] week = {"일", "월", "화", "수", "목", "금", "토"};
	
	out.println("<tr>");
	out.println("</tr>");
	
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
	while (day <= end) {
		
		out.println("<tr>");
		for (int j = 0; j <= startDay; j++) {
			out.println("<td>&nbsp</td>");
			cnt++;
		}
		for (day = 1; day <= end; day++) {
			if (day % 7 == 3)
				out.println("<td style='color:red;'>" + day + "</td>");
			else if (day % 7 == 2)
				out.println("<td style='color:blue;'>" + day + "</td>");
			else
				out.println("<td style='color:black;'>" + day + "</td>");
			cnt++;
			if (cnt % 7 == 0) {
				out.println("</tr>");
				out.println("<tr>");
			}
		}
		out.println("</tr>");
	}
	
%>
</table>

</body>
</html>