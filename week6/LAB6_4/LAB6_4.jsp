<%-- 20181806 컴퓨터학과 여해인 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB6_4</title>
<%@ page import = "java.util.Calendar"%>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
	int year = 2021;
	int month = 10;
	
	cal.set(year, month - 1, 1);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	out.println("<h2>" + year + "년 " + month + "월</h2><hr>");
	int startDay = cal.get(Calendar.DAY_OF_WEEK); 
	int day = 1;
	
	int count = 0;
	while (day <= end) {
		for (int j = 0; j < startDay; j++) {
			out.println("&nbsp");
			count++;
		}
		for (day = 1; day <= end; day++) {
			out.println(day);
			count++;
			if (count % 7 == 1)
				out.println("<br>");
		}
	}
	
%>
</body>
</html>