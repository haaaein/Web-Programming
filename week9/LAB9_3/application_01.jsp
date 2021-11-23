<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 01</title>
</head>
<body>
<form action=application_02.jsp method=post>
	<table>
	<tr> 
		<td>아이디: </td>
		<td><input type=text name=username></td>
	</tr>
	<tr>
		<td>원하는 세션 지속시간(분):</td>
		<td><input type=text name=minute></td>
	</tr>
	<tr>
		<td><input type=submit value=로그인>
		<% application.setAttribute("count",1) ; %>
		<input type=reset value=취소></td>
	</tr>
	</table>
</form>
</body>
</html>