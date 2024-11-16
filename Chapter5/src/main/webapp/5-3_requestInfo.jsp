<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import ="java.util.Enumeration" %>
<html>
<head>
<title>5-3_requestInfo</title>
</head>
<body>
<ui>
<%
	Enumeration e = request.getHeaderNames();
	while(e.hasMoreElements()){
		String name = (String)e.nextElement();
		String value = request.getHeader(name);
		out.print("<li>" + name + " : " + value + "<br/>");
	}
%>
</ui>
</body>
</html>