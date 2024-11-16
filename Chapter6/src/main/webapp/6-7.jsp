<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.File, java.util.Date"  %>
<html>
<head>
<title>6-7</title>
</head>
<body>
<%
	application.setAttribute("temp_file", new java.io.File("Users/doorjh/eclipse-workspace"));
	session.setAttribute("ID", "doorjh");
	request.setAttribute("request_date", new java.util.Date());
	
	File temp = (File)application.getAttribute("temp_file");
	String id = (String)session.getAttribute("ID");
	Date date = (Date)request.getAttribute("request_date");
	
	request.setAttribute("total", 265);
	
	int totalValue = (Integer) request.getAttribute("total");
%>
</body>
</html>