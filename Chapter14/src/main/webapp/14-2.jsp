<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>14-2</title>
</head>
<body>
<c:if test="true">
	무조건 실행 됩니다.
</c:if>

<c:if test="${param.name =='Jimmy'}">
	파라미터 name의 값이 ${param.name } 입니다. <br/>
</c:if>

<c:if test="${param.age > 20}">
	파라미터 age의 값이 20이상 입니다. <br/>
</c:if>
</body>	
</html>