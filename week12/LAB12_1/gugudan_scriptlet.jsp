<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB12_1:스크립틀릿</title>
<style>
	form, table {
		margin: auto;
	}
	table, tr, td {
		border: 1px solid black;
	}
	
	tr {
		padding: 10px;
	}
	
	h2 {
		text-align: center;	
	}
	
	table {
		width: 400px;
		height: 400px;
	}
</style>
</head>
<body>
<h2>구구단 출력</h2><hr>
<form name="gugudan">
	<table>
		<tr>
			<% for (int i = 2; i <= 9; i++) {
				if (i == 6)
					out.print("</tr><tr>");
				out.print("<td>");
				for (int j = 1; j<= 9; j++) {
					out.println(i + " * " + j + " = " + i * j + "   <br>");
				}
				out.print("</td>");
			}
			%>
		</tr>
		
	</table>
</form>
</body>
</html>