<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>11-1</title>
</head>
<body>
<%	
	Class.forName("org.mariadb.jdbc.Driver");

	//String url, user, pw;	
	
	Connection con = null;
	
	try{
		con = DriverManager.getConnection(url,user,pw);
		out.println("DB연결 성공");
	} catch (Exception e){
		out.println(e);
		e.printStackTrace();
	} finally {
		if(con != null) con.close();
	}
%>
</body>
</html>