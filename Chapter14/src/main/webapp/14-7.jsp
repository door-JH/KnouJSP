<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>14-7</title>
</head>
<body>
<%
 String contents = "<h1>안녕하세요<br>태그라이브러리의사용법입니다</h1>";
%>
 <c:out value="<%=contents %>" escapeXml="true"/><br>
 <c:out value="<%=contents %>" escapeXml="false"/>
</body>
</html>