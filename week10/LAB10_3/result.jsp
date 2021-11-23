<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		application.setAttribute("timetable", list);	

	}
	
	application.log(list + "추가됨");
	if (list != null) {
		for (String li : list)
			out.println(li + "<br>");
	}
%>
</body>
</html>