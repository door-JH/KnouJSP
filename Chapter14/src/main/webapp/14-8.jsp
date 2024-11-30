<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>14-9</title>
</head>
<body>
<c:catch var="ex">
<%
 int a =0, b = 2;
 b = b /a;
%>
</c:catch>
 <c:if test="${ex != null}">
	다음과같은예외가발생하였습니다<br>
 	${ex}
 </c:if>
 </body>
</html>