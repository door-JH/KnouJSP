<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>9-2</title>
</head>
<body>
<h3>세션 아이디: <%= session.getId() %></h3>
<%
	session.setAttribute("name", "doorJH");
	session.setAttribute("address", "Goyang-Si");
%>
세션 속성이 설정되었습니다. <br/>
<a href ="9-3.jsp">여기</a>를 클릭하면 설정된 속성을 확인할 수 있습니다.
</body>
</html>