<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB12_2:커스텀태그</title>
</head>
<body>
<form action="print_login.jsp" name="login">
	 아이디 : <input type="text" name="id"><br><br>
	 비밀번호 : <input type="password" name="pw"><br><br>
	 <input type="submit" value="로그인"> <input type="reset" value="취소">
</form>
</body>
</html>