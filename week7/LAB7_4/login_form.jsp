<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB7_4</title>
</head>
<body>
	<form action="login.jsp">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pw" placeholder="비밀번호"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="다시 입력">
	</form>
	
	<%
	String message = request.getParameter("msg");
	out.println(message);
	%>
	
</body>
</html>