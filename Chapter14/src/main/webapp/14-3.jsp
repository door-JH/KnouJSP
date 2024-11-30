<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>14-3</title>
</head>
<body>
 <c:choose>
 	<c:when test="${param.name =='Jimmy'}">
		당신의이름은Jimmy입니다.<br>
 	</c:when>
 
 	<c:when test="${param.age ==25}">
		당신의나이는25세입니다.<br>
 	</c:when>
 
 	<c:otherwise>
		당신은누구입니까?
 	</c:otherwise>
 </c:choose>
</body>
</html>