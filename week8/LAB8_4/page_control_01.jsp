<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB8_4</title>
</head>
<body>
<form method=post action=page_control_02.jsp>
아이디: <input type=text name=id> 비밀번호: <input type=text name=pwd>
<input type=submit value="forward 전송">
</form>
<form method=post action=page_control_03.jsp>
아이디: <input type=text name=pw> 비밀번호: <input type=text name=pwd>
<input type=submit value="sendRedirect 전송">
</form>
</body>
</html>