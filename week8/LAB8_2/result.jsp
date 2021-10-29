<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<!-- 
LAB8_2_1 : POST 방식으로 전달
주소창에 어떤 내용이 표시되는가?
- http://localhost:8080/LABHW8/LAB8_2/result.jsp 이 표시된다. 처음에 접속한 페이지 주소가 표시된다.
아이디에 한글 입력
- 한글이 깨져보여서 <% request.setCharacterEncoding("UTF-8"); %> 코드를 추가하여 해결했다.
패스워드에 한글 입력
- 한글을 입력해도 패스워드로 영어가 전달된다.

LAB8_2_2 : GET 방식으로 전달
주소창에 어떤 내용이 표시되는가? POST 방식과 가장 큰 차이점은 무엇인가?
- 주소창에 파라미터로 넘겨지는 값들이 보여진다. 
post 방식은 주소가 처음 페이지에서 변경되지 않았는데, get 방식은 주소가 새로운 페이지로 바뀐다.
아이디에 한글 입력
- 한글이 깨져보여서 <% request.setCharacterEncoding("UTF-8"); %> 코드를 추가하여 해결했다.
패스워드에 한글 입력
- 영어가 전달된다.

LAB8_2_3 : FORM 태그에서 method 속성을 지정하지 않고 전달
- get 방식이 default로 사용된다. 주소창에서 확인할 수 있다.
-->
<html>
<head>
<meta charset="UTF-8">
<title>result.jsp</title>
</head>
<body>
<h2>전달된 파라미터 이름들</h2>

<%
	Enumeration<String> names = request.getParameterNames();
	while(names.hasMoreElements()) {
		String name = names.nextElement();
		out.println(name + "<br>");
	}
	out.println("<hr>");
	
	out.println("타입::" + request.getParameter("type") + "<br>");
	out.println("아이디::" + request.getParameter("strID") + "<br>");
	out.println("비밀번호::" + request.getParameter("strPwd") + "<br>");
%>
</body>
</html>