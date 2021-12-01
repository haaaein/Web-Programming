<%@ tag language="java" pageEncoding="UTF-8"%>
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