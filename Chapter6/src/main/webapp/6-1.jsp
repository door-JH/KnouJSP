<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
<title>6-1</title>
</head>
<body>
<%
	Enumeration<String> e = application.getInitParameterNames();
	while(e.hasMoreElements()){
		String n = e.nextElement();
		out.print(n + " = " + application.getInitParameter(n) + "<br/>");
	}
%>
</body>
</html>