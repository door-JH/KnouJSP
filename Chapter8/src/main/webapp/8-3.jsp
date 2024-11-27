<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<head>

<title>8-3</title>
</head>
<body>
<%
	Cookie ck = new Cookie("name", "doorJH");
	response.addCookie(ck);
%>

<h3>현재 쿠키(<%= ck.getName()%> : <%= ck.getValue() %>) </h3>
<a href = "8-4.jsp"> 쿠키 변경하기 </a>
</body>
</html>