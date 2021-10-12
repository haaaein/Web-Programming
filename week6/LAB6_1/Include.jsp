<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include</title>
<style>
	div {
		text-align: center;
	}
	table {
		margin: auto;
	}
	table, td, th {
		border: 1px solid black;
		border: hidden;
	}
	td.t1 {
		font-size: 10px;
		padding-left: 20px;
		padding-right: 20px;
	}
	td.t2 {
		width:30px;
	}
	
	table.cal, td.cal, th.cal, tr.cal {
		width: 200px;
		border: 1px solid black;
		border-collapse: collapse;
	}
	ul, ol {
		paddiing-left: 25px;
	}
	li {
		text-align: left;
	}
	
</style>
</head>
<body>
<div>
	<h2> include 지시어 연습</h2>
	<hr>
	<table>
		<tr>
			<td class="t1"><%@ include file="calendar.jsp"%></td>
			<td class="t2">&nbsp;</td>
			<td class="t1"><%@ include file="news.jsp" %></td>
		</tr>
	</table>
	
</div>
</body>
</html>