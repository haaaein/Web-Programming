<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 작성</title>
<style>
</style>
</head>
<body>
<%
	String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	String[] titleNames = {"웹프로그래밍", "운영체제", "객체지향프로그래밍", "데이터베이스개론", 
			"자료구조", "네트워크", "창의와감성", "사회봉사"};
	String[] days = {"월", "화", "수", "목", "금"};
%>
<div>
	<form name="form1" method="POST" action="LAB10_3.jsp">
	과목 타입: <select name="lectureType">
<%
	for (int i = 0; i < typeNames.length; i++)
		out.println("<option value" + i + ">" + typeNames[i] + "</option>");
%>
	</select>
	과목명 : <select name="lectureTitle">
<%
	for (int i = 0; i < titleNames.length; i++)
		out.println("<option value" + i + ">" + titleNames[i] + "</option>");
%>
	</select>
	요일 : <select name="day">
<%
	for (int i = 0; i < days.length; i++)
		out.println("<option value" + i + ">" + days[i] + "</option>");
%>
	</select>
	시간 : <select name="time">
<%
	for (int i = 0; i < 7; i++)
		out.println("<option value" + (i + 1) + ">" + (i + 1) + "</option>");

%>
	</select>
	연강 : <select name="consecutive">
<% 
	for (int i = 0; i < 4; i++)
		out.println("<option value" + (i + 1) + ">" + (i + 1) + "</option>");
%>
	</select>
	<input type="submit" value="등록"/>
	</form>
	<hr>
</div>
<%
	String lectureType = request.getParameter("lectureType");
	String lectureTitle = request.getParameter("lectureTitle");
	String day = request.getParameter("day");
	String time = request.getParameter("time");
	String consecutive = request.getParameter("consecutive");

	@SuppressWarnings("unchecked")
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("timetable");
	
	if (list == null)
		list = new ArrayList<String>();
	
	String str;
	if (lectureType != null && lectureTitle != null && day != null && time != null && consecutive != null) {
		str = lectureType + "/" + lectureTitle + "/" + day + "/" + time + "/" + consecutive;
		list.add(str);	
		session.setAttribute("timetable", list);	

	}
	
	application.log(list + "추가됨");
	if (list != null) {
		for (String li : list)
			out.println(li + "<br>");
	}
%>
</body>
</html>