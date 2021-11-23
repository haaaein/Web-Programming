<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	<form name=calc action="calc_result.jsp" method=post>
   	<table align="center" width="700" height="400">
        <tr>
            <th colspan="2" height="50">CalCuLaTor</th>
        </tr>
        <tr>
            <td rowspan="5"><input type="image" src="images/calc.png" class="imageAlign"></td>
            <td><input style="text-align:center;" type=text name=op1 width=200 size=10 value=0></td>
        </tr>
        <tr>
            <td>
            <select name=operator>
				<option value="+" selected>+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
			</td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type=text name=op2 width=200 size=10 value=0></td>
		</tr>
		<tr>
			<td><input type=submit value="="></td>
		</tr>
		<tr>
			<td><input type=text name=result size=10 disabled></td>
		</tr>
        <tr>
            <th colspan="2" height="50"></th>
        </tr>
    </table>
    </form>
</body>
</html>