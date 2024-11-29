<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>

<head>
<title>9-1</title>
</head>
<body>

<%
	Date c_time = new Date(), m_time = new Date();
	SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	c_time.setTime(session.getCreationTime());
	m_time.setTime(session.getLastAccessedTime());
%>

세션 아이디 : <%= session.getId() %> <br/>
세션 생성 시각 : <%= fm.format(c_time) %> <br/>
세션 최종 접근 시각 : <%= fm.format(m_time) %> <br/>
</body>

</html>