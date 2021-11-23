<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="labhw11.*"%>
<!DOCTYPE html>
<jsp:useBean id="calc" class="labhw11.CalcBean" scope="page"/>
<jsp:setProperty name="calc" property="*"/>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
   <style>
        th {
            background-color: cornflowerblue;
            height: 50;
        }

        input.imageAlign {
            vertical-align: middle;
            width: 300px;
            height: 300px;
        }
        td {
            align-self: center;
            align-items: center;
            align-content: center;
            text-align: center;
        }
    </style>
</head>
<body>
	<form name="calc" action="calc_result.jsp">
   	<table align="center" width="700" height="400">
        <tr>
            <th colspan="2" height="50">CalCuLaTor</th>
        </tr>
        <tr>
            <td rowspan="5"><input type="image" src="images/calc.png" class="imageAlign"></td>
            <td><input style="text-align:center;" type=text name=op1 width=200 size=10 
            value=<%= calc.getOp1() %> readonly></td>
        </tr>
        <tr>
            <td><%= calc.getOperator() %></td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type=text name=op2 width=200 size=10 
			value=<%= calc.getOp2() %> readonly></td>
		</tr>
		<tr>
			<td>=</td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type=text name=result size=10 
			value=<%= calc.calc() %> readonly></td>
		</tr>
        <tr>
            <th colspan="2" height="50"></th>
        </tr>
    </table>
    </form>
</body>
</html>