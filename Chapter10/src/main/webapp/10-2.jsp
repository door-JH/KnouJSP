<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%--
<jsp:useBean id="meminfo" class="com.member.MemberInfo" scope="page" />
 --%>
<jsp:useBean id="meminfo" class="com.member.MemberInfo" scope="request" />
<html>
<head>
<title>10-2</title>
</head>
<body>
<%
	meminfo.setAge(11);
	meminfo.setName("MunJiHyeon");
%>
<jsp:forward page="10-3.jsp" />
</body>
</html>