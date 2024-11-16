<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page buffer="16kb" autoFlush="true" %>
<html>
<head>
<title>6-5</title>
</head>
<body>
<ul>
	<li>버퍼 크기: <%= out.getBufferSize() %></li>
	<li>남은 버퍼 크기: <%= out.getRemaining() %></li>
	<li>autoFlush 속성: <%= out.isAutoFlush() %></li>
</ul>
</body>
</html>