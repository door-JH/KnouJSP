<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>13-3</title>
</head>
<body>
<%
	Cookie c1 = new Cookie("name", "doorJH");
	Cookie c2 = new Cookie("phone", "1234");
	
	response.addCookie(c1);
	response.addCookie(c2);
%>
<a href="13-4.jsp"> 쿠키 확인하기</a>
</body>
</html>