<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>라라랜드</title>
	<style>
		div {
			text-align:center;
		}
		table {
			margin-left: auto;
			margin-right: auto;
		}
	</style>
</head>
<body>
<div>
	<h2>LALALAND</h2>
	<table>
	<tr>
		<td><jsp:include page="viewer.jsp"></jsp:include></td>
		<td>&nbsp;</td>
		<td><jsp:include page="login.jsp"></jsp:include></td>
	</tr>
	</table>
</div>
</body>
</html>