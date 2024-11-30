<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.member.db.*" %>
<html>
<head>
<title>11-7</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	MemberDTO mb = new MemberDTO();
	
	mb.setId(Integer.parseInt(request.getParameter("id")));
	mb.setPass(request.getParameter("pass"));
	mb.setName(request.getParameter("name"));
	mb.setPhone(request.getParameter("phone"));
	mb.setAddress(request.getParameter("address"));
	
	new MemberDAO().updateOne(mb);
	
	
%>
<h3><a href = "11-5.jsp">초기화면</a></h3>
</body>
</html>