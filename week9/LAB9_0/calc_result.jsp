<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int result = 0;
	//웹페이지 요청이 post인 경우에만 수행, 즉 form을 통해 전달된 것만 수행
	//초기 로딩시 오류방지
	if (request.getMethod().equals("POST")) {
		String op = request.getParameter("operator");
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		if (op.equals("+"))
			result = num1 + num2;
		else if (op.equals("-"))
			result = num1 - num2;
		else if (op.equals("*"))
			result = num1 * num2;
		else if (op.equals("/"))
			result = num1 / num2;
	}
%>
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
	<form name="form1" action="calc_result.jsp">
   	<table align="center" width="700" height="400">
        <tr>
            <th colspan="2" height="50">CalCuLaTor</th>
        </tr>
        <tr>
            <td rowspan="5"><input type="image" src="images/calc.png" class="imageAlign"></td>
            <td><input style="text-align:center;" type=text name=num1 width=200 size=10 
            value=<%=request.getParameter("num1")%> readonly></td>
        </tr>
        <tr>
            <td><%=request.getParameter("operator") %></td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type=text name=num2 width=200 size=10 
			value=<%=request.getParameter("num2")%> readonly></td>
		</tr>
		<tr>
			<td>=</td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type=text name=result size=10 
			value=<%= result %> readonly></td>
		</tr>
        <tr>
            <th colspan="2" height="50"></th>
        </tr>
    </table>
    </form>
</body>
</html>