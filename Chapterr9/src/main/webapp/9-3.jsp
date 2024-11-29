<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>9-3</title>
</head>
<body>
<h3>세션 아이디: <%= session.getId() %></h3>
name : <%= session.getAttribute("name") %> <br/>
address : <%= session.getAttribute("address") %> <br/>
</body>
</html>