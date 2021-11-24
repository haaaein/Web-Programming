<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<%@ page import="labhw11.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="schedule" class="labhw11.LectureBean" scope="page"/>
<jsp:setProperty name="schedule" property="*"/>
<jsp:useBean id="sch" class="labhw11.LectureManager" scope="application"/>
	<%
		sch.add(schedule);
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
<div>
	<form name="schedule" method="POST" action="LAB11_4.jsp">
	과목 타입: <select name="type">
<%
	String[] typeNames = schedule.getTypeNames();
	for (int i = 0; i < typeNames.length; i++) {
		out.println("<option value=" + i + ">" + typeNames[i] + "</option>");
	}
%>
	</select>
	과목명 : <select name="title">
<%
	String[] titleNames = schedule.getTitleNames();
	for (int i = 0; i < titleNames.length; i++) {
		out.println("<option  value=" + i + ">" + titleNames[i] + "</option>");
	}
%>
	</select>
	요일 : <select name="day">
<%
	String[] dayNames = schedule.getDayNames();
	for (int i = 0; i < dayNames.length; i++) {
		out.println("<option value=" + i + ">" + dayNames[i] + "</option>");
	}
%>
	</select>
	시간 : <select name="time">
<%
	for (int i = 0; i < 7; i++) {
		out.println("<option value=" + (i + 1) + ">" + (i + 1) + "</option>");
	}

%>
	</select>
	연강 : <select name="consecutive">
<% 
	for (int i = 0; i < 4; i++)
		out.println("<option value=" + (i + 1) + ">" + (i + 1) + "</option>");
%>
	</select>
	<input type="submit" value="등록"/>
	</form>
	<hr>
</div>
<%
	@SuppressWarnings("unchecked")
	ArrayList<LectureBean> list = (ArrayList<LectureBean>)session.getAttribute("schedule");
	
	if (list == null) {
		list = new ArrayList<LectureBean>();
	}
	
	if (schedule.getType() != -1 && schedule.getTitle() != -1) {
		list.add(schedule);
		session.setAttribute("schedule", list);	
	}

	application.log(list + "추가됨");
	if (list != null) {
		for (LectureBean li : list)
			out.println(li.toString() + "<br>");
	}
	
%>
</body>
</html>