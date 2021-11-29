<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %> 
    <%
    String name = request.getParameter("id");
    ArrayList list = (ArrayList)session.getAttribute("id"); 
    if (list == null) {
    	list = new ArrayList();
    }
    list.add(name);
    %>
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