<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>

<title>8-5</title>
</head>
<body>
<%
	Cookie[] cks = request.getCookies();
	for(Cookie c : cks){
		if(c.getName().equals("name")){
			c.setMaxAge(0);
			response.addCookie(c);
		}
	}
%>
<a href = "8-2.jsp"> 쿠키 확인하기</a>
</body>
</html>