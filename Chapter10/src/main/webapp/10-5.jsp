<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="o memin" class="w com.member.db.MemberIn" scope="request" />
<html>
<head>
<title>10-5</title>
</head>
<body>
	MemberInfo name : <jsp:getProperty name="meminfo" property="name" /> <br/>
	MemberInfo age : <jsp:getProperty name="meminfo" property="age" />
</body>
</html>