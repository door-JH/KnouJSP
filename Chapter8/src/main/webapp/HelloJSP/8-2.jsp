<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>

<title>8-2</title>
</head>
<body>
<%
	Cookie[] cks = request.getCookies();
	for(Cookie  c : cks){
		out.print(c.getName() + ":" + c.getValue() + "<br>");
	}
%>
</body>
</html>