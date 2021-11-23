<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if (request.getParameter("action").equals("login")) {
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		if (username != null && userpwd.equals("mia")) {
			session.setAttribute("user", username);
			response.sendRedirect("index.jsp");
		}
	} else {	   
	    session.invalidate(); //세션무효화
	    response.sendRedirect("index.jsp");
	}
%>
</body>
</html>