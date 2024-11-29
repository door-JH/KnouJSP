<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<jsp:useBean id="meminfo" class="com.member.MemberInfo" scope="page" />
<jsp:setProperty name="meminfo" property="age" value="10" />
<jsp:setProperty name="meminfo" property="name" value="doorJH" />

<html>
<head>
<title>10-4</title>
</head>
<body>
<jsp:forward page="10-5.jsp"/>
</body>
</html>