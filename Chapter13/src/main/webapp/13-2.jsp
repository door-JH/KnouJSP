<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>13-2</title>
</head>
<body>
<% request.setAttribute("name", "jimmy"); %>
요청 URI: ${pageContext.request.requestURI } <br/>
request의 name 속성의 값: ${requestScope.name } <br/>
code 속성 값: ${param.code}
</body>
</html>