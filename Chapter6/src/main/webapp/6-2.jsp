<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>6-2</title>
</head>
<body>

웹 컨테이너 정보: <%= application.getServerInfo() %> <br/>
서블릿 규약 정보: <%= application.getMajorVersion() %> /
			<%= application.getMinorVersion() %>
</body>
</html>