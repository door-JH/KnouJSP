<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>8-11</title>
</head>
<body>
<%
	Cookie[] cks = request.getCookies();
	for(Cookie c : cks){
		if(c.getName().equals("ID")){
			c.setMaxAge(0);
			
			response.addCookie(c);
		}
	}
%>
<h3><a href ="8-10.jsp"> 로그인 확인</a></h3>
</body>
</html>