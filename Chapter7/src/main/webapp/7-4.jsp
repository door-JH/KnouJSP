<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>

<title>7-4</title>
</head>
<body>
<h3> ---------- 7-4.jsp ---------- </h3>
<jsp:include page = "7-5.jsp" flush = "false">
	<jsp:param name = "name" value = "doorjh"/>
	<jsp:param name = "phone" value ="112" />
</jsp:include>
<h3> ---------- 7-4.jsp ---------- </h3>
<jsp:foward page ="7-2.jsp"/>
</body>
</html>