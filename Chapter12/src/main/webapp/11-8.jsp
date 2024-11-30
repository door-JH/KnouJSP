<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.member.db.*" %>
<%@ %>
<html>
<head>
<title>11-8</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	new MemberDAO().deleteOne(Integer.parseInt(request.getParameter("id")));
	
%>
<h3><a href = "11-5.jsp">초기화면</a></h3>
</body>
</html>