<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
</head>
<style>
        table.main {
            border: none;
            margin: auto;
            width: 700px;
            height: 500px;
            background-color: #fce2ae;
        }
       	th {
       		background-color: #f7c592;
       		width: 500px;
       		height: 30px;
       	}
       	td {
       		text-align: center;
       		width: 500px;
       	}
</style>
</head>
<body>
    <table align="center">
        	<img src="images/eclass_top.png" width="100%" height="300px">
    </table>
    <table align="center" class="main">
    	<tr>
    		<th>오류가 발생하였습니다.</th>
    	</tr>
        <tr>
            <td>
                <img src="images/pngwing.com.png" width="300px" height="300px" >
            </td>
        </tr>
        <tr>
        	<td> 오류 발생 시간 : <%= new java.util.Date() %> </td>
        </tr>
        <tr>
        	<td> 최대한 빨리 조치하겠습니다.</td>
        </tr>
    </table>
</body>
</html>