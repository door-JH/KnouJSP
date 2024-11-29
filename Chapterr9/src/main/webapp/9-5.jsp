<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	HttpSession httpSession = request.getSession();
%>
<html>
<head>
<title>9-5</title>
</head>
<body>
세션 아이디1 : <%= session.getId() %> <br/>
세션 아아디2 : <%= httpSession.getId() %>
</body>
</html>