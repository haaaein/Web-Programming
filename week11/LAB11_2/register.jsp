<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="labhw11.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<!-- 자바빈즈 선언 -->
	<jsp:useBean id="login" class="labhw11.LoginBean" scope="page"/>
	<jsp:setProperty name="login" property="*"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LAB11_2</title>
<style>
	div {
		text-align:center;
	}
	table { 
		width: 500px;
		margin: 0px auto;
	}
	table, td {
		border: 1px solid;
		border-collapse: collapse;
	}
</style>
</head>
<body>
<div>
	<h2>등록내용</h2>
	이 름 : <%=login.getId()  %><p>
	패스워드 : <%=login.getPw() %><p>
	이 메 일 : <%=login.getEmail() %><p>
	성 별 : <%=login.getGender() %><p>
	생 일 : <%=login.getBirth() %><p>
	<hr>
	<% out.print(login.getId() + "씨는 ");
		if (login.getGender() == 1)
			out.print("여성");
		else
			out.print("남성");
		out.print("이고, ");
		if (login.isGrownUp())
			out.print("성인입니다.");
		else
			out.println("성인이 아닙니다.");
	%>
</div>
</body>
</html>


