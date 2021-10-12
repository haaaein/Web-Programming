<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB6_3</title>
<%@ page import = "java.util.Calendar"%>
</head>
<body>
	<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH) + 1;
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	String[] week = {"일", "월", "화", "수", "목", "금", "토" };
	
	out.println("오늘은 " + year + "년 " + month + "월 "
			+ date + "일 " + week[day - 1] + "요일입니다.<br><br>");
	
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	out.println("이번달은 " + start +"일부터 시작하여 " + end + "일에 끝납니다.<br><br>");
	
	cal.set(2020, cal.JANUARY, 23);
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH) + 1;
	date = cal.get(Calendar.DATE);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	out.println("코로나 시작은 " + year + "년 " + month + "월 " + date + "일은 " + week[startDay - 1] + "요일입니다.");
	
	 %>
</body>
</html>