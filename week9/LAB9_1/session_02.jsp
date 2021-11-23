<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<HTML>
<HEAD><TITLE>Session Object 02</TITLE></HEAD>
<BODY>

# <%= request.getParameter("username") %> 님 환영 합니다.<BR>
1. 세션 ID : <%= session.getId() %> <BR>
2. 세션 지속시간(default) : <%= session.getMaxInactiveInterval() %> 초<BR>

<a href=session_03.jsp>session_03.jsp로 가기</a>
</BODY>
</HTML>