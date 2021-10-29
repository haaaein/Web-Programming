<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ page import = "java.util.*"%>
<meta charset="UTF-8">
<title>LAB8_3</title>
</head>
<body>
<%!
	ArrayList<String> getParameterNames(HttpServletRequest request) {
		Enumeration<String> names = request.getParameterNames();
		ArrayList<String> paramNames = new ArrayList<String>();
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			paramNames.add(name);
		}
		return paramNames;
	}

	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telArea = {"010", "080", "070", "02"};
	String[] gNames = {"남", "여"};
	
	boolean isMultipleChoice(String paramName) {
		for (String m : mChoices) {
			if (m.equals(paramName))
				return true;
		}
		return false;
	}
%>
<%
	ArrayList<String> names = getParameterNames(request);
	for (String name : names) {
		if (isMultipleChoice(name)) {
			String values[] = request.getParameterValues(name);
			out.println(name + ": ");
			for (String v : values)
				out.println(v + "/ ");
		}
			
		else
			out.println(name + ": " + request.getParameter(name) + "<br>");
	}
	
	out.println("<hr>");
	
	out.println("<h2>Processing Parameters</h2>");
	for (String name : names) {
		if (isMultipleChoice(name)) {
			String values[] = request.getParameterValues(name);
			out.println(name + ": ");
			for (String v : values)
				out.println(hobbyNames[Integer.parseInt(v)] + "/ ");
		}
		else if (name.equals("gender"))
			out.println(name + ": " + gNames[Integer.parseInt(request.getParameter(name))] + "<br>");
		else if (name.equals("phone1"))
			out.println(name + ": " + telArea[Integer.parseInt(request.getParameter(name))] + "<br>");
		else {
			out.println(name + ": " + request.getParameter(name) + "<br>");
		}
	}
%>
</body>
</html>