<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="labhw11.*"%>
<!DOCTYPE html>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<jsp:useBean id="addr" class="labhw11.AddrBean"/>
	<jsp:setProperty name="addr" property="*"/>
	<jsp:useBean id="am" class="labhw11.AddrManager" scope="application"/>
	<%
		am.add(addr);
	%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addr_add.jsp</title>
	<style>
		div {text-align: center;}

	</style>
</head>
<body>
	<div>
	<h2>등록내용</h2>
	이름 : <jsp:getProperty property="username" name="addr"/><P>
	전화번호 : <jsp:getProperty property="tel" name="addr"/></P>
	이메일 : <jsp:getProperty property="email" name="addr"/> <P>
	성별 : <jsp:getProperty property="sex" name="addr"/><P>
	그룹 : <jsp:getProperty property="group" name="addr"/><p>
	
	<HR>
	<a href="addr_list.jsp">전체 목록 보기</a>
	<a href="addr_list_group.jsp">그룹별 목록 보기</a>
	
</div>
</body>
</html>










