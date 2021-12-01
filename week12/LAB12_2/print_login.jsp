<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB12_2:커스텀태그</title>
</head>
<body>
<ddwutag:greeting color="green"></ddwutag:greeting>
<ddwutag:greeting color="blue"></ddwutag:greeting>

</body>
</html>