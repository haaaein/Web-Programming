<%@ tag language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ attribute name="brd" %>
<%@ attribute name="color" %>
<jsp:useBean id="login" class="labhw12.LoginBean" scope="session" />
	<h1><jsp:doBody /></h1>
	<table border="${brd}" style="background-color: ${color };">
		<tr>
			<td width = "100px">이름:</td>
			<td width = "200px">${login.id }</td>
		</tr>
		<tr>
			<td width = "100px">패스워드</td>
			<td width = "200px">${login.pw }</td>
		</tr>
		<tr>
			<td width = "100px">이메일:</td>
			<td width = "200px">${login.email }</td>
		</tr>
		<tr>
			<td width = "100px">성별:</td>
			<td width = "200px">${login.gender }</td>
		</tr>	
		<tr>
			<td width = "100px">생일:</td>
			<td width = "200px">${login.birth }</td>
		</tr>
		
		<%
			int gen = login.getGender();
			String sGen;
			if (gen == 0)
				sGen = "남성";
			else
				sGen = "여성";
			
			out.println("<tr><td colspan=\"2\">" + login.getId() + "씨는 "+sGen + "이고, ");
			if (login.isGrownUp())
				out.println("성인입니다");
			else
				out.println("성인이 아닙니다.");
		%>	
				
	</table>
