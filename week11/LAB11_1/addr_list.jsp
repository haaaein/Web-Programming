<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="labhw11.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<!-- 자바빈즈 선언 -->
	<jsp:useBean id="addr" class="labhw11.AddrBean"/>
	<jsp:setProperty name="addr" property="*"/>
	<jsp:useBean id="am" class="labhw11.AddrManager" scope="application"/>
	<%
		am.add(addr);
	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록 목록</title>
<style>
	div {
		text-align:center;
	}
	table { 
		width: 500px;
		margin: 0px auto;
	}
	table, td {
		border: 1px solid;
		border-collapse: collapse;
	}
</style>
</head>
<body>
<div>
	<h2>주소록(전체보기)</h2>
	<hr>
	<a href="addr_form.jsp">주소추가</a><br>
	<table>
	<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>
	<%
		for(AddrBean ab : am.getAddrList()) {
			if (ab.getUsername() != null) {
	%>
		<tr>
		<td><%=ab.getUsername() %></td>
		<td><%=ab.getTel() %></td>
		<td><%=ab.getEmail() %></td>
		<td><%=ab.getSex() %></td>
		<td><%=ab.getGroup() %></td></tr>
	<%	
			}
		}
	%>
	</table>
</div>
</body>
</html>


