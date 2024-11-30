<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.*" %>
<html>
<head>
<title>14-5</title>
</head>
<body>
<%
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("name", "Jimmy");
	map.put("today", new Date());
	map.put("phone", "010-1111-2222");
%>

<c:set var ="map" value ="<%= map %>" />
<c:forEach var ="m" items = "${map}">
	${m.key} = ${m.value} <br/>
</c:forEach>

</body>
</html>