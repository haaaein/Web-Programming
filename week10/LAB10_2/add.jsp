<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<style>
	div {
			text-align:center;
	}
</style>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String addrbook = name + ", " + tel;
	
	@SuppressWarnings("unchecked")
	ArrayList<String> value = (ArrayList<String>)application.getAttribute("value");
	
	if(value == null) {
		value = new ArrayList<String>();
		// application 에 ArrayList 저장
		application.setAttribute("value", value);
	}
	
	value.add(addrbook);
%>
</body>
	<div>
	<h2>주소록</h2><hr>
<%
	int i = 1;
	for (Object v : value) {
		out.print(i + ". " + v + "<br>");
	}
%>
	</div>
</html>