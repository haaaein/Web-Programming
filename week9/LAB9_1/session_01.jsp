<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object 01</title>
</head>
<body>
<form name=form1 action=session_02.jsp method=post>
	아이디 : <input type=text name=username><br><br>
	비밀번호 : <input type=text name=userpwd><br><br>
	<input type=submit value=로그인>
	<input type=reset value=취소>
</form>
</body>
</html>