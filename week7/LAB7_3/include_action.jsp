<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action</title>
<style>
	table {
		margin:auto;
		text-align: center;
		vertical-align: top;
	}
</style>
</head>
<body>
<table>
	<tr>
		<th ><h2>Include Action Practice</h2></th>
	</tr>
	<tr>
		<td>
			<jsp:include page="calendar.jsp">
				<jsp:param name="YEAR" value="2020"/>
				<jsp:param name="MONTH" value="2"/>
			</jsp:include>
		</td>
		<td>
			<jsp:include page="news.jsp">
				
				<jsp:param name="TASK2" value="take a class"/>
				<jsp:param name="TASK3" value="Homework" />
			</jsp:include>
		</td>
	</tr>
</table>
	
</body>
</html>