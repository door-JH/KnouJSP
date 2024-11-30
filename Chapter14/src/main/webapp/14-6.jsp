<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<body>
<!-- <c:import url="https://www.naver.com"></c:import> -->

<c:url value="https://www.google.com/search" var="google" >
 <c:param name="q" value="거북선"/>
 </c:url>
 <c:redirect url="${google}">
 </c:redirect>

</body>
</html>