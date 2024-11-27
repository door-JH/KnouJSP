<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>8-1</title>
</head>
<body>

<%
	Cookie cookie = new Cookie("name", "doorJH");
	response.addCookie(cookie);
%>
<a href="8-2.jsp"> 쿠키 확인하기</a>
</body>
</html>