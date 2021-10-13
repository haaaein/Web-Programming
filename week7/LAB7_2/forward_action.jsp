<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward action</title>
	<style>
		h2, h4, div {
			text-align: center;
		}
	</style>
</head>
<body>
	<h2>include 액션 연습</h2>
	<hr>
	<jsp:forward page="greeting.jsp">
		<jsp:param name="name" value="DWU"/>
		<jsp:param name="date" value="20221/10/12"/>
	</jsp:forward>
	<h4>다시 include_action.jsp에서 출력입니다.</h4>
</body>
</html>