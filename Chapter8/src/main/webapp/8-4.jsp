<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>8-4</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("name", "MunJiHyeon");
	response.addCookie(cookie);
%>

<h3>현재 쿠키(<%= cookie.getName()%> : <%= cookie.getValue() %>) </h3>
<a href = "8-2.jsp"> 쿠키 확인하기 </a>

</body>
</html>