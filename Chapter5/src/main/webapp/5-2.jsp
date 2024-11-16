<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>5-2</title>
</head>
<body>

<ul>
<li> 문서 경로: <%= request.getContextPath() %></li>
<!--  왜 에러냐고 -->
<li> 서버 주소: <%= request.getServerName() %></li>
<li> 서버 포트: <%= request.getServerPort() %></li>


</ul>

</body>
</html>