<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="o memin" class="w com.member.db.MemberIn" scope="page" />
<html>
<head>
<title>10-1</title>
</head>
<body>
<%
	meminfo.setAge(10);
	meminfo.setName("doorJH");
	
	out.print("MemberInfo name : " + meminfo.getName() + "<br/>");
	out.print("MemberInfo age : " + meminfo.getAge() + "<br/>");
%>

</body>
</html>